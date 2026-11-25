// lib/src/data/venue/model/venue.dart

class Venue {
  final String id;
  final String name;
  final String address;
  final double latitude;
  final double longitude;
  final String phone;
  final String openingHours;
  final bool isPharmacy;

  const Venue({
    required this.id,
    required this.name,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.phone,
    required this.openingHours,
    this.isPharmacy = true,
  });
}