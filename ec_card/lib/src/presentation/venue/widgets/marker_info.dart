import 'package:ec_card_app/src/data/venue/model/entity/venue_entity.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:map_launcher/map_launcher.dart';

import 'venue_note_localizer.dart';

class MarkerInfoWindow extends StatelessWidget {
  const MarkerInfoWindow({
    Key? key,
    required this.venue,
  }) : super(key: key);

  final VenueEntity venue;

  @override
  Widget build(BuildContext context) {
    final localizedNotes = localizedVenueNotes(context, venue.notes);

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: Colors.grey[400]!,
          width: 0.5,
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 6, bottom: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Store name and disctance
            Row(
              // mainAxisSize: Main,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    venue.storeName!,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                Text(
                  "${venue.distance}m",
                  style: TextStyle(
                    color: primaryCyanText,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),

            //address
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey[600],
                    ),
                    children: [
                      TextSpan(
                        text: AppLocalizations.of(context)!.addressLabel,
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: venue.storeDisplayAddress ?? "",
                      ),
                    ],
                  ),
                )),

            RichText(
                text: TextSpan(
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey[600]),
              children: [
                TextSpan(
                  text: AppLocalizations.of(context)!.notesLabel,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      color: Colors.black),
                ),
                TextSpan(text: localizedNotes),
              ],
            )),

            InkWell(
                onTap: () async {
                  // await MapLauncher.showMarker(
                  //     mapType: MapType.google,
                  //     coords: Coords(
                  //         venue.latLng!.latitude, venue.latLng!.longitude),
                  //     title: venue.storeName!);
                  await MapLauncher.showDirections(
                    mapType: MapType.google,
                    destination:
                        Coords(venue.latLng!.latitude, venue.latLng!.longitude),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.directions,
                      style: TextStyle(color: primaryColorLight, fontSize: 11),
                    ),
                    Icon(
                      Icons.directions_rounded,
                      color: primaryColorLight,
                      size: 20,
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
