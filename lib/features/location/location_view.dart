import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:google_api_headers/google_api_headers.dart';
import 'package:zaradia/common_component/custom_button.dart';
import 'package:zaradia/constant.dart';
import 'package:zaradia/core/router/router.dart';
import 'package:zaradia/layout/layout_view.dart';

import '../../common_component/custom_app_bar.dart';

class LocationView extends StatefulWidget {
  const LocationView({Key? key}) : super(key: key);

  @override
  State<LocationView> createState() => _LocationViewState();
}

const kGoogleApiKey = 'AIzaSyCfXnfJAD4JnbM5JjF8zRD4HxW_0cc1MLU';
final homeScaffoldKey = GlobalKey<ScaffoldState>();

class _LocationViewState extends State<LocationView> {

  static const CameraPosition initialCameraPosition = CameraPosition(target: LatLng(37.42796, -122.08574), zoom: 14.0);

  Set<Marker> markersList = {};

  late GoogleMapController googleMapController;

  final Mode _mode = Mode.overlay;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        key: homeScaffoldKey,
        body: Container(
          color: defaultColor,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).viewPadding.top,
              ),
              const CustomAppBar(
                text: "تحديد المكان",
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.only(
                        topStart: Radius.circular(20.0),
                        topEnd:  Radius.circular(20.0),
                      ),
                  ),
                  child: Stack(
                    children: [
                      GoogleMap(
                        initialCameraPosition: initialCameraPosition,
                        markers: markersList,
                        mapType: MapType.normal,
                        onMapCreated: (GoogleMapController controller) {
                          googleMapController = controller;
                        },
                      ),
                      Align(
                        alignment: AlignmentDirectional.topCenter,
                        child: InkWell(
                          onTap: _handlePressButton,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              padding: EdgeInsets.all(10.0,),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4.0),
                                border: Border.all(
                                  color: defaultColor,
                                  width: 1.0,
                                )
                              ),
                              child: Row(
                                children: [
                                Icon(Icons.search,color: Colors.grey,),
                                SizedBox(width: 10.0,),
                                Text('ابحث عن الموقع ....',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15.0,
                                ),)
                              ],),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: CustomButton(
                            bgColor: defaultColor,
                            onPress: (){
                              MagicRouter.navigateTo(LayoutView());
                            },
                            text: 'متابعه',
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _handlePressButton() async {
    Prediction? p = await PlacesAutocomplete.show(
        context: context,
        apiKey: kGoogleApiKey,
        onError: onError,
        mode: _mode,
        language: 'en',  // language: 'ar',
        strictbounds: false,
        types: [""],
        decoration: InputDecoration(
            hintText: 'Search',
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(color: Colors.white))),
        components: [Component(Component.country,"pk"),Component(Component.country,"usa")]);
    //components: [Component(Component.country,"eg"),Component(Component.country,"ksa")];


    displayPrediction(p!,homeScaffoldKey.currentState);
  }

  void onError(PlacesAutocompleteResponse response){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(response.errorMessage!),backgroundColor: Colors.red,));
  }

  Future<void> displayPrediction(Prediction p, ScaffoldState? currentState) async {

    GoogleMapsPlaces places = GoogleMapsPlaces(
        apiKey: kGoogleApiKey,
        apiHeaders: await const GoogleApiHeaders().getHeaders()
    );

    PlacesDetailsResponse detail = await places.getDetailsByPlaceId(p.placeId!);

    final lat = detail.result.geometry!.location.lat;
    final lng = detail.result.geometry!.location.lng;

    markersList.clear();
    markersList.add(Marker(markerId: const MarkerId("0"),position: LatLng(lat, lng),infoWindow: InfoWindow(title: detail.result.name)));

    setState(() {});

    googleMapController.animateCamera(CameraUpdate.newLatLngZoom(LatLng(lat, lng), 14.0));

  }
}