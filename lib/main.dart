import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: toggel(),
    ); 
  }
}

class toggel extends StatefulWidget {
  toggel({Key? key}) : super(key: key);

  @override
  State<toggel> createState() => _toggelState();
}

class _toggelState extends State<toggel> {
   Color color = Colors.red;
   Color txtcolor = Colors.white;
   
   TextEditingController nameController = TextEditingController(text: "no data");
    TextEditingController passController = TextEditingController(text: "no data");


  getEmail(){
    return "email@gmail.com";
  }
  @override
  void initState() {
    nameController.text = getEmail();
     passController.text = "*****";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
  
   return Scaffold(
     resizeToAvoidBottomInset : false,
      backgroundColor: color,
     body:
      SafeArea(
       child: Container(
         padding: EdgeInsets.symmetric(horizontal: 20),
         child: Column(
          
         children: [
             
              SizedBox(height: 60),
              

             Text("Life Drop",
             style: TextStyle(fontSize: 50, color: txtcolor,)),

             SizedBox(height: 20),

             Text("your blood can save lives",
             style: TextStyle( color: txtcolor,)),

             SizedBox(height: 160),
             

            
             Row(
               children: [
                 Text("Email",
                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: txtcolor,)),
               ],
             ),

             TextField(
                controller: nameController,
              ),

            SizedBox(height: 20),

             Row(
               children: [
                 Text("Password",
                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: txtcolor,)),
               ],
             ),

             TextField(
                controller:  passController,
              ),

              SizedBox(height: 40),
              ElevatedButton(
                 child: Text("LOGIN"),
                 onPressed: () {
                  print(nameController.text);
                  print( passController.text);
                  setState(() {
                    
                  });
                     
                 },
                 ),
             ],
           ),
       ),
        
       ),
     );
    
  }
}