import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:ec_card_app/src/presentation/venue/map_controller_handle.dart';
import 'dart:async';

import 'package:ec_card_app/src/data/venue/model/entity/venue_entity.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_launcher/map_launcher.dart' as map_launcher;

import 'venue_note_localizer.dart';

class VenueCard extends StatelessWidget {
  const VenueCard({
    Key? key,
    required this.venue,
    this.completer,
    this.panelController,
  }) : super(key: key);

  final VenueEntity venue;
  final MapControllerHandle? completer;
  final PanelController? panelController;

  @override
  Widget build(BuildContext context) {
    final localizedNotes = localizedVenueNotes(context, venue.notes);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      child: InkWell(
        onTap: () async {
          final CameraPosition camPosition = CameraPosition(
            target: venue.latLng!,
            zoom: 16,
          );
          // cameraPosition = CameraPosition(target: latLng, zoom: 17.0);
          // if (mapController != null) {
          //   mapController?.animateCamera(
          //       CameraUpdate.newCameraPosition(cameraPosition!));
          // }
          // Collapse the list first so the point being focused is not left
          // hidden behind the panel.
          if (panelController?.isAttached == true) {
            panelController?.close();
          }
          final c = await completer?.controller;
          c?.animateCamera(CameraUpdate.newCameraPosition(camPosition));
        },
        child: Card(
          elevation: 15,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      venue.storeName!,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Text(
                      "${venue.distance}m",
                      style: TextStyle(
                        color: primaryCyanText,
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),

                //address
                Padding(
                    padding: EdgeInsets.only(
                      top: 6.h,
                    ),
                    child: RichText(
                        text: TextSpan(
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey[600]),
                      children: [
                        TextSpan(
                          text: AppLocalizations.of(context)!.addressLabel,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: Colors.black),
                        ),
                        TextSpan(
                          text: venue.storeDisplayAddress!,
                        )
                      ],
                    ))),

                //Notes
                RichText(
                    text: TextSpan(
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 13,
                      color: Colors.grey[600]),
                  children: [
                    TextSpan(
                      text: AppLocalizations.of(context)!.notesLabel,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Colors.black),
                    ),
                    TextSpan(
                      text: localizedNotes,
                    ),
                  ],
                )),

                SizedBox(
                  width: double.infinity,
                  child: InkWell(
                      onTap: () async {
                        // await map_launcher.MapLauncher.showMarker(
                        //     mapType: map_launcher.MapType.google,
                        //     coords: map_launcher.Coords(venue.latLng!.latitude,
                        //         venue.latLng!.longitude),
                        //     title: venue.storeName!);

                        await map_launcher.MapLauncher.showDirections(
                          mapType: map_launcher.MapType.google,
                          destination: map_launcher.Coords(
                              venue.latLng!.latitude, venue.latLng!.longitude),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.directions,
                            // Every card carries this link, so on its own it
                            // says nothing about which venue it leads to.
                            semanticsLabel:
                                '${AppLocalizations.of(context)!.directions}, ${venue.storeName ?? ''}',
                            style: TextStyle(color: primaryColorLight),
                          ),
                          Icon(
                            Icons.directions_rounded,
                            color: primaryColorLight,
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
