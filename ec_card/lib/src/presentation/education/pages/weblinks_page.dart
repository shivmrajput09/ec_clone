import 'package:ec_card_app/src/application/education/education_cubit.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:ec_card_app/src/presentation/core/widgets/custom_search_bar.dart';
import 'package:ec_card_app/src/presentation/core/widgets/locale_refetch.dart';
import 'package:ec_card_app/src/presentation/education/widgets/weblink_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// The Weblinks tab: pages and videos an organisation has shared as links.
///
/// Unlike Videos and Documents, the search is run by the gateway, which
/// matches the link as well as the title — so the cubit holds the typing back
/// rather than filtering a list already on the device.
class WeblinksPage extends StatelessWidget {
  WeblinksPage({Key? key}) : super(key: const Key("weblinks-page"));

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<EducationCubit>()..getWeblinkList(),
        child: LocaleRefetch(
          onLocaleChanged: (context) =>
              context.read<EducationCubit>().getWeblinkList(),
          child: BlocBuilder<EducationCubit, EducationState>(
            builder: (context, state) {
              return Column(
                children: [
                  SearchBarWidget(
                    query: state.weblinkQuery,
                    controller: searchController,
                    onChanged: (val) =>
                        context.read<EducationCubit>().searchWeblink(val),
                    onClearPressed: () {
                      searchController.text = '';
                      FocusScope.of(context).unfocus();
                      context.read<EducationCubit>().searchWeblink('');
                    },
                  ),
                  Expanded(
                    child: _Body(
                      state: state,
                      emptyMessage: state.hasWeblinkListFailed
                          ? l10n.something_went_wrong
                          : l10n.no_weblinks,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({required this.state, required this.emptyMessage});

  final EducationState state;
  final String emptyMessage;

  @override
  Widget build(BuildContext context) {
    if (state.isWeblinkListLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.weblinkList.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(emptyMessage, textAlign: TextAlign.center),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 20),
      itemCount: state.weblinkList.length,
      itemBuilder: (context, index) =>
          WeblinkCard(weblink: state.weblinkList[index]),
    );
  }
}
