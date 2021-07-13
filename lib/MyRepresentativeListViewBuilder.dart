import 'package:flutter/material.dart';

class MyRepresentativeListViewBuilder extends StatefulWidget {
  @override
  MyRepresentativeListView createState() {
    return new MyRepresentativeListView();
  }
}
class MyRepresentativeListView extends State<MyRepresentativeListViewBuilder> {
  List<String> titles = ["Radhakrishnan P.", "Sasikala R"];
  final subtitles = [
    "Party:Bhartiya Janta Party",
    "Party:Bhartiya Janta Party"

  ];
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card(

              child: ListTile(

                onTap: () {
                  setState(() {
                    titles.add('Radhakrishnan P.');
                    // subtitles.add('Party:Bhartiya Janta Party');
                    // subtitles.add('State:Tamilnadu');
                    // subtitles.add('Constituency:Kanniyakumari');
                    //icons.add(Icons.zoom_out_sharp);
                  });
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text(titles[index] + ' pressed!'),
                  ));
                },
                title: Text(titles[index]),
                // subtitle: Text(subtitles[index]),
                leading: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: 64,
                    minHeight: 64,
                    maxWidth: 64,
                    maxHeight: 64,
                  ),
                  child: Image.asset('images/candidate.jpg', fit: BoxFit.cover),
                ),
                //  trailing: Icon(icons[index]),
                subtitle: Column(
                  children: <Widget>[
                    Container( child: Text(
                      'Party:Bhartiya Janta Party',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),),
                    Container( child: Text(
                      'State:Tamilnadu',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),),
                    Container( child: Text(
                      'Constituency:Kanniyakumari',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),),


                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(child: RaisedButton(onPressed: () {},
                          child: Text("Profile"),
                          color:Color.fromARGB(255, 20, 134, 147),
                          textColor: Colors.white,)
                        ),
                        Expanded(child: RaisedButton(onPressed: () {},child: Text("View Affidavit"),color:Color.fromARGB(255, 20, 134, 147),textColor: Colors.white,)),
                      ],


                    ),



                  ],
                ),
              )


          );
        });
  }
}