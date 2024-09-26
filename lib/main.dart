import 'package:flutter/material.dart';
import 'Page2.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: home(),
));

class home extends StatelessWidget {
  const home({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.jpeg"),
          fit: BoxFit.cover,
        ),
      ),

      child: Stack(
        alignment: Alignment.center ,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.shortestSide,
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),
              color: Color.fromARGB(223, 230, 179, 197),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    CircleAvatar(
                      radius: 100.0,
                      backgroundImage: 
                      AssetImage('assets/images/poto-aku.jpg'),
                    ),
                    Text("Wanda Halimatu",
                    textAlign:TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                    
                    ),
                    Text("Vocational high schol student at SMK Wikrama Bogor",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Color.fromARGB(248, 182, 94, 64))
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page2()),
                      );
                    },child: Text('see more'),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ),
   );
  }
}