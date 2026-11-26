import 'package:ec_card_app/src/presentation/venue/map_controller_handle.dart';
import 'dart:async';

import 'package:ec_card_app/src/application/venue/venue_cubit.dart';
import 'package:ec_card_app/src/presentation/venue/widgets/venue_card.dart';
import 'package:flutter/material.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchPageWidget extends StatelessWidget {
  SearchPageWidget({
    Key? key,
    this.completer,
  }) : super(key: key);

  // final _controller = TextEditingController();

  MapControllerHandle? completer;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VenueCubit, VenueState>(
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 14.h, left: 16.h, right: 16.h),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r)),
                elevation: 2,
                child: TextField(
                  // controller: _controller,
                  key: const Key("search-venue-textfeld"),
                  onChanged: (val) {
                    if (val.isEmpty) {
                      context.read<VenueCubit>().clearSearch();
                    } else {
                      if (val.length > 2) {
                        // _controller.text = val;
                        context.read<VenueCubit>().searchVenue(val);
                      }
                    }
                  },
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)!.search,
                    hintStyle: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 16, color: Colors.grey),
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 18,
                      color: Colors.grey,
                    ),
                    suffixIcon: Visibility(
                      visible: state.query.isNotEmpty,
                      // visible: true,
                      child: IconButton(
                        icon: const Icon(Icons.clear,
                            size: 20, color: Colors.grey),
                        onPressed: () {
                          // _controller.clear();
                          FocusScope.of(context).unfocus();
                          context.read<VenueCubit>().searchVenue('');
                          context.read<VenueCubit>().clearSearch();
                        },
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(2.sp),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.r),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: state.isVenueSearchLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      // shrinkWrap: true,
                      // physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.filteredVenuesList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              bottom:
                                  index == state.filteredVenuesList.length - 1
                                      ? 20
                                      : 0),
                          child: VenueCard(
                            venue: state.filteredVenuesList[index],
                            completer: completer,
                          ),
                        );
                      }),
            ),
          ],
        );
      },
    );
  }
}
