import 'package:ec_card_app/src/application/register/register_cubit.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';

class GenderChipWidget extends StatelessWidget {
  const GenderChipWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.gender,
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 16,
                    color: primaryBackgroundColor,
                  ),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 20,
              runSpacing: 10,
              children: [
                //MALE CHIP
                ChoiceChip(
                  selected: state.gender == "male" ? true : false,
                  backgroundColor: Colors.grey[200],
                  onSelected: (selected) {
                    context.read<RegisterCubit>().onGenderChanged('male');
                  },
                  // elevation: 2,
                  shadowColor: Colors.grey,
                  selectedColor: primaryCyan,
                  label: Text(
                    AppLocalizations.of(context)!.male,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: state.gender == "male"
                            ? Colors.white
                            : Colors.grey[600]),
                  ),
                  labelPadding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 4.h),
                  side: BorderSide(
                    color: state.gender == "male" ? primaryCyan : Colors.grey,
                    width: 1,
                  ),
                ),

                //FEMALE CHIP
                ChoiceChip(
                  selected: state.gender == 'female' ? true : false,
                  backgroundColor: Colors.grey[200],
                  onSelected: (selected) {
                    context.read<RegisterCubit>().onGenderChanged('female');
                  },
                  // elevation: 2,
                  shadowColor: Colors.grey,
                  selectedColor: primaryCyan,
                  label: Text(
                    AppLocalizations.of(context)!.female,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: state.gender == 'female'
                            ? Colors.white
                            : Colors.grey[600]),
                  ),
                  labelPadding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 4.h),
                  side: BorderSide(
                    color: state.gender == 'female' ? primaryCyan : Colors.grey,
                    width: 1,
                  ),
                ),

                //OTHER CHIP
                ChoiceChip(
                  selected: state.gender == 'others' ? true : false,
                  backgroundColor: Colors.grey[200],
                  onSelected: (selected) {
                    context.read<RegisterCubit>().onGenderChanged('others');
                  },
                  // elevation: 2,
                  shadowColor: Colors.grey,
                  selectedColor: primaryCyan,
                  label: Text(
                    AppLocalizations.of(context)!.other,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: state.gender == 'others'
                            ? Colors.white
                            : Colors.grey[600]),
                  ),
                  labelPadding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 4.h),
                  side: BorderSide(
                    color: state.gender == 'others' ? primaryCyan : Colors.grey,
                    width: 1,
                  ),
                ),

                //DO NOT DISCLOSE CHIP
                ChoiceChip(
                  selected: state.gender == 'not_disclosed' ? true : false,
                  backgroundColor: Colors.grey[200],
                  onSelected: (selected) {
                    context
                        .read<RegisterCubit>()
                        .onGenderChanged('not_disclosed');
                  },
                  // elevation: 2,
                  shadowColor: Colors.grey,
                  selectedColor: primaryCyan,
                  label: Text(
                    AppLocalizations.of(context)!.do_not_disclose,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: state.gender == 'not_disclosed'
                            ? Colors.white
                            : Colors.grey[600]),
                  ),
                  labelPadding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 4.h),
                  side: BorderSide(
                    color: state.gender == 'not_disclosed'
                        ? primaryCyan
                        : Colors.grey,
                    width: 1,
                  ),
                ),
              ],
            ),
            Visibility(
              visible: state.showGenderError,
              child: Padding(
                padding: EdgeInsetsDirectional.only(start: 20.w, top: 20.h),
                child: Text(
                  AppLocalizations.of(context)!.field_is_mandatory,
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.red, fontSize: 12),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
