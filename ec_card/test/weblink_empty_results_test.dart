import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ec_card_app/src/application/education/education_cubit.dart';
import 'package:ec_card_app/src/data/core/model/response_data.dart';
import 'package:ec_card_app/src/data/education/model/weblink_item/weblink_item.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:ec_card_app/src/domain/education/education_repo.dart';
import 'package:flutter_test/flutter_test.dart';

const _found = [
  WeblinkItem(educationId: '1', weblinkTitle: 'Safety Guidelines'),
];

/// Answers the first call with results and every later one the way the
/// gateway answers a search that matched nothing.
class _EmptyOnSearchRepository implements EducationRepository {
  bool _answered = false;

  @override
  Future<Either<AppErrors, List<WeblinkItem>>> getEducationWeblinks(
      {String query = ''}) async {
    if (_answered) return right(const []);
    _answered = true;
    return right(_found);
  }

  @override
  dynamic noSuchMethod(Invocation invocation) =>
      throw UnimplementedError('not used by these tests');
}

class _FailingRepository implements EducationRepository {
  bool _answered = false;

  @override
  Future<Either<AppErrors, List<WeblinkItem>>> getEducationWeblinks(
      {String query = ''}) async {
    if (_answered) return left(const AppErrors.defaultError(error: 'nope'));
    _answered = true;
    return right(_found);
  }

  @override
  dynamic noSuchMethod(Invocation invocation) =>
      throw UnimplementedError('not used by these tests');
}

void main() {
  test('an empty answer replaces what was on screen', () async {
    final cubit = EducationCubit(_EmptyOnSearchRepository());

    cubit.getWeblinkList();
    await Future<void>.delayed(Duration.zero);
    expect(cubit.state.weblinkList, hasLength(1));

    cubit.getWeblinkList(query: 'zzzqqq');
    await Future<void>.delayed(Duration.zero);

    expect(cubit.state.weblinkList, isEmpty);
    expect(cubit.state.hasWeblinkListFailed, isFalse);
  });

  test('a failed search clears the previous results too', () async {
    final cubit = EducationCubit(_FailingRepository());

    cubit.getWeblinkList();
    await Future<void>.delayed(Duration.zero);
    expect(cubit.state.weblinkList, hasLength(1));

    cubit.getWeblinkList(query: 'zzzqqq');
    await Future<void>.delayed(Duration.zero);

    expect(cubit.state.weblinkList, isEmpty);
    expect(cubit.state.hasWeblinkListFailed, isTrue);
  });

  test('the gateway\'s "nothing matched" refusal reads as no results', () {
    // What staging returns for a search that matches nothing: a 400 whose
    // body says 204 and carries an empty list under another name.
    final refusal = DioException(
      requestOptions: RequestOptions(path: '/education/weblink/view'),
      response: Response(
        requestOptions: RequestOptions(path: '/education/weblink/view'),
        statusCode: 400,
        data: const {
          'status': 204,
          'data': {
            'educationList': [],
            'message': 'No educational material matching your search found',
          },
          'message': 'No educational material matching your search found',
        },
      ),
    );

    expect(rejectionData(refusal)?.status, 204);
  });
}
