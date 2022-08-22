import 'dart:typed_data';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:custom_marker/marker_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../method/get_current_location.dart';
import '../../presentation/resources/assets_manger.dart';

part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(LocationInitial());
  Position? position;
  List<Position>? positionAddRecipient = [];
  Set<Marker> locationMarkersAddRecipient = Set.of([]);
  List<Address>? codedAddress;
  List<Address>? codedAddressAddRecipient;
  List<List<Address>>? codedAddressAddRecipientList = [];
  Set<Marker> customMarkers = <Marker>{};

  Future<Position?> getGeoLocation() async {
    position = await GetCurrentLocation.getGeoLocationPosition();
    codedAddress = await Geocoder.local.findAddressesFromCoordinates(
        Coordinates(position!.latitude, position!.longitude));
    // positionAddRecipient!.add(position!);
    //positionAddRecipient![0] = await GetCurrentLocation.getGeoLocationPosition();
    //codedAddressAddRecipient = await Geocoder.local.findAddressesFromCoordinates(Coordinates(positionAddRecipient![0].latitude, positionAddRecipient![0].longitude));
    return position;
  }

  addMarker(BuildContext context) async {
    customMarkers.add(
      Marker(
        markerId: MarkerId(position!.toString()),
        icon: await MarkerIcon.svgAsset(
            assetName: AppIcons.appMarkerIcon, size: 35, context: context),
        position: LatLng(position!.latitude, position!.longitude),
      ),
    );
  }

  changeMarkerPosition(LatLng latLng, BuildContext context) async {
    customMarkers = <Marker>{};
    codedAddress = await Geocoder.local.findAddressesFromCoordinates(
        Coordinates(latLng.latitude, latLng.longitude));
    customMarkers.add(
      Marker(
        markerId: MarkerId(latLng.toString()),
        position: latLng,
        draggable: true,
        icon: await MarkerIcon.svgAsset(
            assetName: AppIcons.appMarkerIcon, size: 35, context: context),
        onDragEnd: (draggedPosition) {},
      ),
    );
  }

  setMarkerAddRecipient({LatLng? latLng}) async {
    Uint8List destinationImageData =
        await convertAssetToUnit8List(AppImages.userMarker, width: 120);
    // positionAddRecipient.add(latLng!)
    locationMarkersAddRecipient = Set.of([]);
    if (latLng != null) {
      codedAddressAddRecipient = [];
      codedAddressAddRecipient = await Geocoder.local
          .findAddressesFromCoordinates(
              Coordinates(latLng.latitude, latLng.longitude));
      String address = codedAddressAddRecipient!.first.addressLine!;
      codedAddressAddRecipientList!.add(codedAddressAddRecipient!);
      // for(int i = 0; i < codedAddressAddRecipientList!.length; i++){
      //   codedAddressAddRecipientList!.add(address);
      //   print("codedAddressAddRecipientList!.first[i].addressLine");
      //   print(codedAddressAddRecipientList);
      // }
      locationMarkersAddRecipient.add(Marker(
        markerId: const MarkerId('marker'),
        position: latLng,
        icon: BitmapDescriptor.fromBytes(destinationImageData),
      ));
    } else {
      locationMarkersAddRecipient.add(Marker(
        markerId: MarkerId(position!.toString()),
        position: LatLng(position!.latitude, position!.longitude),
        icon: BitmapDescriptor.fromBytes(destinationImageData),
      ));
    }

    // setState(() {});
  }

  Future<Uint8List> convertAssetToUnit8List(String imagePath,
      {int width = 50}) async {
    ByteData data = await rootBundle.load(imagePath);
    Codec codec = await instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }
}
