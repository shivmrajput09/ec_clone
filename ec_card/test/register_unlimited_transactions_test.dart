import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/application/register/register_cubit.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:ec_card_app/src/domain/register/register_repo.dart';
import 'package:flutter_test/flutter_test.dart';

/// Answers the DOB check the way production does for a user who needs an
/// access code, and records what registration was asked to send.
class _FakeRegisterRepo implements RegisterRepository {
  _FakeRegisterRepo({this.showUnlimitedOption = true});

  final bool showUnlimitedOption;
  int? sentTransactions;
  int registerCalls = 0;

  @override
  Future<Either<AppErrors, String>> verifyDOB(String dob, String postalCode) async =>
      right(jsonEncode({
        'warning': {'show': false},
        'accessCodeRequired': true,
        'showUnlimitedOption': showUnlimitedOption,
        'message': '',
      }));

  @override
  Future<Either<AppErrors, String>> selfRegister({
    required String phoneNumber,
    required String postCode,
    required String dob,
    required String gender,
    String? accessCode,
    required int transactions,
  }) async {
    registerCalls++;
    sentTransactions = transactions;
    return right('registered');
  }

  @override
  Future<Either<AppErrors, String>> sendOTPforRegister(String phoneNumber) =>
      throw UnimplementedError();

  @override
  Future<Either<AppErrors, String>> verifyRegistration(
          String phoneNumber, String otp) =>
      throw UnimplementedError();
}

Future<RegisterCubit> _filledForm(_FakeRegisterRepo repo) async {
  final cubit = RegisterCubit(repo);
  cubit.onDobChanged('2010-01-01');
  cubit.postCodeChanged('M11AA');
  await Future<void>.delayed(Duration.zero); // let the DOB check land
  cubit.onGenderChanged('male');
  cubit.accessCodeChanged('ABC123');
  return cubit;
}

Future<void> _save(RegisterCubit cubit) async {
  cubit.saveDetailsButtonClicked('07700900000');
  await Future<void>.delayed(Duration.zero);
}

void main() {
  test('the access-code path is the one that shows the transactions field',
      () async {
    final cubit = await _filledForm(_FakeRegisterRepo());
    expect(cubit.state.showAccessCodeField, isTrue);
    expect(cubit.state.showUnlimitedOption, isTrue);
  });

  test('unlimited ticked with the count left empty registers as -1', () async {
    final repo = _FakeRegisterRepo();
    final cubit = await _filledForm(repo);

    cubit.onMaxTransactionsUpdated(true);
    await _save(cubit);

    expect(repo.registerCalls, 1);
    expect(repo.sentTransactions, -1);
    expect(cubit.state.showTransactionsError, isFalse);
  });

  test('unlimited ticked after typing a count still sends -1', () async {
    final repo = _FakeRegisterRepo();
    final cubit = await _filledForm(repo);

    cubit.onTransactionsChanged('5');
    cubit.onMaxTransactionsUpdated(true);
    await _save(cubit);

    expect(repo.sentTransactions, -1);
  });

  test('a typed count is sent as that count', () async {
    final repo = _FakeRegisterRepo();
    final cubit = await _filledForm(repo);

    cubit.onTransactionsChanged('3');
    await _save(cubit);

    expect(repo.sentTransactions, 3);
  });

  test('no count and no unlimited is refused, and the error is raised',
      () async {
    final repo = _FakeRegisterRepo();
    final cubit = await _filledForm(repo);

    await _save(cubit);

    expect(repo.registerCalls, 0);
    expect(cubit.state.showTransactionsError, isTrue);
    expect(cubit.state.isLoading, isFalse);
  });

  test('ticking unlimited clears a raised transactions error', () async {
    final cubit = await _filledForm(_FakeRegisterRepo());
    await _save(cubit);
    expect(cubit.state.showTransactionsError, isTrue);

    cubit.onMaxTransactionsUpdated(true);
    expect(cubit.state.showTransactionsError, isFalse);
  });

  test('an unparseable count is refused rather than crashing', () async {
    final repo = _FakeRegisterRepo();
    final cubit = await _filledForm(repo);

    cubit.onTransactionsChanged('4.');
    await _save(cubit);

    expect(repo.registerCalls, 0);
    expect(cubit.state.showTransactionsError, isTrue);
    expect(cubit.state.isLoading, isFalse);
  });

  test('a stale tick is ignored when unlimited is not offered', () async {
    final repo = _FakeRegisterRepo(showUnlimitedOption: false);
    final cubit = await _filledForm(repo);

    cubit.onMaxTransactionsUpdated(true);
    cubit.onTransactionsChanged('2');
    await _save(cubit);

    expect(repo.sentTransactions, 2);
  });
}
