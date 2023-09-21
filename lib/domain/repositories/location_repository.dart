import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../data/datasources/location_datasource.dart';

@singleton
class LocationRepository {
  LocationRepository(this._dataSource);

  final LocationDataSource _dataSource;

  final BehaviorSubject<String> _addressSubject = BehaviorSubject<String>();

  void _setAddress(String address) {
    _addressSubject.add(address);
  }

  Stream<String> get addressStream => _addressSubject.stream;

  Future<void> getCurrentLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.deniedForever) {
      Geolocator.openAppSettings();
    } else {
      final position = await _getLocation();
      ('Position: $position');
      final address = await _getAddressFromCoordinates(position);
      _setAddress(address);
    }
  }

  Future<Position> _getLocation() async {
    return _dataSource.getCurrentLocation();
  }

  Future<String> _getAddressFromCoordinates(Position position) async {
    try {
      final List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );
      final Placemark placemark = placemarks[0];
      final address = "${placemark.locality}";
      ('Address: $address');
      return address;
    } catch (e) {
      throw Exception(e);
    }
  }
}
