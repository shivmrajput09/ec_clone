import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:ec_card_app/src/presentation/venue/map_controller_handle.dart';
import 'dart:async';

import 'package:ec_card_app/src/application/venue/venue_cubit.dart';
import 'package:ec_card_app/src/presentation/venue/widgets/venue_card.dart';
import 'package:flutter/material.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class VendingMachinePageWidget extends StatelessWidget {
  VendingMachinePageWidget({
    Key? key,
    this.completer,
    this.panelController,
  }) : super(key: key);

  MapControllerHandle? completer;
  final PanelController? panelController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VenueCubit, VenueState>(
      builder: (context, state) {
        return state.isIVTSLoading
            ? const SizedBox(
                height: 100,
                width: double.infinity,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : state.ivtsList.isEmpty
                ? Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          AppLocalizations.of(context)!.noKiosksAvailable,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        )),
                  )
                : ListView.builder(
                    itemCount: state.ivtsList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            bottom:
                                index == state.ivtsList.length - 1 ? 20 : 0),
                        child: VenueCard(
                          venue: state.ivtsList[index],
                          completer: completer,
                          panelController: panelController,
                        ),
                      );
                    },
                  );
      },
    );
  }
}
