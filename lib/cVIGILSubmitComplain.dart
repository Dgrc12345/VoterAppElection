

import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Api/ApiServiceUrl.dart';
import 'package:flutter_app/Model/DefaultResponse.dart';
import 'package:flutter_app/Model/IncidentType.dart';
import 'package:flutter_app/Model/StoreComplain.dart';
import 'package:geocoding/geocoding.dart';

import 'package:image_picker/image_picker.dart';
import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:developer';



class cVIGILSubmitComplain extends StatefulWidget {



  @override
  _State createState() => _State();
}

class _State extends State<cVIGILSubmitComplain> {
  TextEditingController candidateNameController= TextEditingController();
  String dropdownValue = 'One';
  List<IncidentType> spinnerItems = <IncidentType>[];

  String lat="",long="",img64="";
  late File imageFile ;
  bool imgTaken=false;
  bool isLoading=false;
  String _currentAddress="";
  late Future<IncidentType> incidentTypes;
  String incidentName="",incident_id="";


  @override
  void initState()
  {
    super.initState();
    loadIncident_Type();

  }

  void loadIncident_Type() {


    setState(() => {
      spinnerItems=Api.fetchIncidentTypes as List<IncidentType>
    });


  }

  Future getCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission != PermissionStatus.granted) {
      LocationPermission permission = await Geolocator.requestPermission();
      if (permission != PermissionStatus.granted)
        _getCurrentLocation();
      return;
    }
    _getCurrentLocation();
  }

  showLoadingIndicator(BuildContext context){
    AlertDialog alert=AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          Container(margin: EdgeInsets.only(left: 5),child:Text("Capturing current location" )),
        ],),
    );
    showDialog(barrierDismissible: false,
      context:context,
      builder:(BuildContext context){
        return alert;
      },
    );
  }

  //********************** IMAGE PICKER
  Future imageSelector(BuildContext context, String pickerType) async {
    switch (pickerType) {
      case "gallery":

      /// GALLERY IMAGE PICKER
        imageFile = await ImagePicker.pickImage(
            source: ImageSource.gallery, imageQuality: 90);
        imgTaken=true;
        final bytes = File(imageFile.path).readAsBytesSync();

        img64 = base64Encode(bytes);
        break;

      case "camera": // CAMERA CAPTURE CODE
        imageFile = await ImagePicker.pickImage(
            source: ImageSource.camera, imageQuality: 90);
        imgTaken=true;
        final bytes = File(imageFile.path).readAsBytesSync();

        img64 = base64Encode(bytes);
        break;
    }

    if (imageFile != null) {
      print("You selected  image : " + imageFile.path);
      setState(() {
        debugPrint("SELECTED IMAGE PICK   $imageFile");
      });
    } else {
      print("You have not taken image");
    }
  }

  // Image picker
  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    title: new Text('Gallery'),
                    onTap: () => {
                      imageSelector(context, "gallery"),
                      Navigator.pop(context),
                    }),
                new ListTile(
                  title: new Text('Camera'),
                  onTap: () => {
                    imageSelector(context, "camera"),
                    Navigator.pop(context)
                  },
                ),
              ],
            ),
          );
        });
  }


  _getCurrentLocation() {
    Geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best, forceAndroidLocationManager: true)
        .then((Position position) {
      setState(() {
        lat = position.latitude.toString();
        long = position.longitude.toString();
        // setState(() {
        //   debugPrint("Latitude   $lat");
        //   debugPrint("Longitude   $long");
        //   Navigator.pop(context);
        // });
        // log('lat: $lat');
        // log('long: $long');
        // _getAddressFromLatLng();
      });
    }).catchError((e) {
      print(e);
    });
  }


  _getAddressFromLatLng() async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
          double.parse(lat),
          double.parse(long)
      );

      Placemark place = placemarks[0];

      setState(()
      {
        _currentAddress = "${place.locality}, ${place.postalCode}, ${place.country}";
        log('location: $_currentAddress');

      });
      // Navigator.of(context).pop();
    } catch (e) {
      print(e);
    }
  }

  Future<String> _getId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) { // import 'dart:io'
      var iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.identifierForVendor; // unique ID on iOS
    } else {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      return androidDeviceInfo.androidId; // unique ID on Android
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(title: Text("Submit Complain"),),

      body: SingleChildScrollView(
        child: Padding(

          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 6.0,bottom: 4.0),

                child: Text('Candidate Name',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(

                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,

                    contentPadding: EdgeInsets.all(12),
                    border: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.blueGrey, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(2.5)),
                    ),

                    hintText: 'Candidate Name',
                    isDense: true,                      // Added this
                    //contentPadding: EdgeInsets.all(2),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.0,bottom: 4.0),

                child: Text('Type of incidence',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  height: 40,


                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,

                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(1),

                  ),
                  child: DropdownButtonHideUnderline(

                    child: DropdownButton(
                      value: incident_id,
                      hint: Text("Select"),
                      items: spinnerItems.map((item){
                        return DropdownMenuItem(
                          child: Text(item.incidenceTypeEn),
                          value: item.incidenceTypeId.toString(),);
                      }).toList(),
                      onChanged: (newVal){
                        setState(() {
                          incidentName = newVal.toString();
                          incident_id = newVal.toString();
                        });
                      },
                    ),

                  ),

                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 6.0,bottom: 4.0),

                child: Text('Description',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,
                    border: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.blueGrey, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(2.5)),
                    ),
                    isDense: true,                      // Added this
                    contentPadding: EdgeInsets.all(12),
                    hintText: 'Description',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.0,bottom: 4.0),


                child: Text('Location',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal ),),

              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: GestureDetector(
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,
                      border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.blueGrey, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(2.5)),
                      ),
                      isDense: true,
                      enabled: false,// Added this
                      contentPadding: EdgeInsets.all(12),
                      hintText: (lat=="" && long=="")?"Locate me":"Lat:$lat And Long$long",
                      prefixIcon: Icon(Icons.location_on),
                    ),
                  ),
                  onTap: () {
                    // showLoadingIndicator(context);
                    getCurrentLocation();
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Center(child: Text("Photo"))),
                  VerticalDivider(width: 1.0),
                  Expanded(child: Center(child: Text("Video"))),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Center(

                      child:(imgTaken)?Image.file(imageFile):


                      Image.asset("images/capture_img.png")

                  )
                  ),
                  VerticalDivider(width: 1.0),
                  Expanded(child: Center(child: Image.asset("images/capture_img.png"))),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Center(child: GestureDetector(
                      onTap: () {
                        //  showAlertDialog(context);
                        _settingModalBottomSheet(context);
                      },
                      child: Text("Upload",style: TextStyle(fontSize: 15.0,color: Colors.teal,fontWeight: FontWeight.w200,)
                      )))),
                  VerticalDivider(width: 1.0),
                  Expanded(child: Center(child: Text("Upload",style: TextStyle(fontSize: 15.0,color: Colors.teal,fontWeight: FontWeight.w200)))),

                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.0,bottom: 4.0),

                child: Text('Captcha ',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),

              Container(
                margin: EdgeInsets.all(8),
                child: FlatButton(
                  child: Text('TtY6709', style: TextStyle(fontSize: 15.0),),
                  color:Color.fromARGB(75, 20, 134, 147),
                  textColor: Colors.black,
                  height: 60.0,
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.0,bottom: 4.0),

                child: Text('Enter Captcha ',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(8),

                child: TextField(

                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,

                    contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                    border: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.blueGrey, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(2.5)),
                    ),

                    hintText: 'Please Enter Captcha',
                    isDense: true,                      // Added this
                    //contentPadding: EdgeInsets.all(2),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:15.0,left: 15.0,right: 15.0),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[

                      SizedBox(

                          width:150,
                          height:50,
                          child: RaisedButton(

                            textColor: Colors.teal,

                            color: Colors.yellow,
                            padding: EdgeInsets.all(12),

                            child:Text("SUBMIT",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13.0,decorationStyle:TextDecorationStyle.solid),),
                            onPressed: ()
                            async{

                              String deviceId = await _getId();
                              //   StoreComplain data=new StoreComplain(deviceId, lat, long, complaintOffenceType, complaintOffenceText, complaintText, complaintLandmark, complaintStateName, complaintStateCode, complaintDistrictName, complaintDistrictCode, gpsLocation, fcmId, isDemo)

                              //  DefaultResponse user=await Api.InsertComplain(data);

                            },
                          )
                      ),


                    ]


                ),
              ),

            ],),),
      ),);



  }
  @override
  void dispose() {
    print("Disposing second route");
    super.dispose();
  }


}
