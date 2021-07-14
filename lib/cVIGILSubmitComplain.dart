

import 'dart:io';

/*
import 'package:flutter/material.dart';
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
  late File _image;
 // late Position _currentPosition ="" as Position;
  String lat="",long="";

  @override
  void initState() {
    super.initState();

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

  _imgFromCamera() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50
    );

    setState(() {
      _image = image;

      log('img_data: $_image');
      // List<int> imageBytes = widget._image.readAsBytesSync();
      // //print(imageBytes);
      // String base64Image = base64Encode(imageBytes);
    });
  }

  _imgFromGallery() async {
    File image = await  ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50
    );

    setState(() {
      _image = image;
    });

  }

  showAlertDialog(BuildContext context) {

    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Pick from gallery"),
      onPressed:  () {
        _imgFromGallery();

      },
    );
    Widget continueButton = TextButton(
      child: Text("Capture Image"),
      onPressed:  () {

        _imgFromCamera();

      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Image"),
      content: Text("Choose Image From Gallery Or Capture"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  _getCurrentLocation() {
    Geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best, forceAndroidLocationManager: true)
        .then((Position position) {
      setState(() {
        lat = position.latitude.toString();
        long = position.longitude.toString();
      });
    }).catchError((e) {
      print(e);
    });
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
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,

                    contentPadding: EdgeInsets.all(12),
                    border: OutlineInputBorder(

                      borderSide:
                      BorderSide(color: Colors.blueGrey, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(2.5)),
                    ),

                    hintText: 'Type of incidence',
                    isDense: true,                      // Added this
                    //contentPadding: EdgeInsets.all(2),
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

                  style: TextStyle(fontSize: 15.0,color: Colors.teal ),),),
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
                      isDense: true,                      // Added this
                      contentPadding: EdgeInsets.all(12),
                      hintText: "Latitude:$lat,Longitude:$long",
                    ),
                  ),
                  onTap: () {
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
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Expanded(child: Center(
              //
              //         child:(_image!=null)?Image.file(_image):
              //
              //           Image.asset("images/capture_img.png")
              //     )
              //     ),
              //     VerticalDivider(width: 1.0),
              //     Expanded(child: Center(child: Image.asset("images/capture_img.png"))),
              //
              //   ],
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Center(child: GestureDetector(
                      onTap: () {
                        showAlertDialog(context);
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
                            onPressed: () {

                            },)
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
}*/
