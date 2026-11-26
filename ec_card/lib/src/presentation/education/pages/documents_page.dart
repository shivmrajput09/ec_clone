import 'package:ec_card_app/src/application/education/education_cubit.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:ec_card_app/src/presentation/core/widgets/custom_search_bar.dart';
import 'package:ec_card_app/src/presentation/core/widgets/locale_refetch.dart';
import 'package:ec_card_app/src/presentation/education/widgets/document_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DocumentsPage extends StatelessWidget {
  DocumentsPage({Key? key}) : super(key: const Key("document-page"));

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<EducationCubit>()..getDocumentList(),
        child: LocaleRefetch(
          onLocaleChanged: (context) =>
              context.read<EducationCubit>().getDocumentList(),
          child: BlocBuilder<EducationCubit, EducationState>(
            builder: (context, state) {
              return Column(
                children: [
                  SearchBarWidget(
                    query: state.query,
                    controller: searchController,
                    onChanged: (val) {
                      if (val.isEmpty) {
                        context.read<EducationCubit>().clearSearch();
                      } else {
                        if (val.length > 2) {
                          context.read<EducationCubit>().searchDocument(val);
                        }
                      }
                    },
                    onClearPressed: () {
                      searchController.text = '';
                      FocusScope.of(context).unfocus();
                      context.read<EducationCubit>().searchDocument('');
                    },
                  ),
                  Expanded(
                    child: state.isDocumentListLoading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : ListView.builder(
                            itemCount: state.query.isEmpty
                                ? state.documentsList.length
                                : state.filteredDocumentList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    bottom: index ==
                                                state.documentsList.length -
                                                    1 ||
                                            index ==
                                                state.filteredDocumentList
                                                        .length -
                                                    1
                                        ? 20
                                        : 0),
                                child: DocumentCardWidget(
                                  doc: state.query.isEmpty
                                      ? state.documentsList[index]
                                      : state.filteredDocumentList[index],
                                ),
                              );
                            }),
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
