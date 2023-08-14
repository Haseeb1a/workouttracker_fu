// import 'package:flutter/material.dart';

// class Profileedit extends StatelessWidget {
//   const Profileedit({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     return Stack(
//       children: [
//         Container(
//           width: double.infinity,
//           height: double.infinity,
//           color: Colors.blue,
//           child: Text('jklj'),
//           // First Container
//         ),
//         Container(
//           color: Colors.green,
//           child: Text('jvhjh'),
//           width: double.infinity,
//           height: 100, // Second Container
//         ),
//         Positioned(
//           top: 50, // Adjust the top position as needed
//           // Adjust the left position as needed
//           child: Container(
//             alignment: Alignment.center,
//             margin: EdgeInsets.only(top: 0), // Adjust the margin as needed
//             child: ClipOval(
//               child: Image.asset(
//                 'assets/images/twisiting2.jpg',
//                 width: 200,
//                 height: 200,
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class Profileedit extends StatelessWidget {
//   const Profileedit({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//         double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     return Stack(
//       children: [
//         Container(
//           width: double.infinity,
//           height: double.infinity,
//           color: Color.fromARGB(255, 0, 0, 0),
//           child: Column(children: [
//             TextField(
//                        maxLength: 3,
//                                   // maxLengthEnforcement: true,
//                                   inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
//                       // controller: _personheightController,
//                       decoration: InputDecoration(
//                         hintText: 'Height',
//                         filled: true,
//                         fillColor: const Color.fromARGB(255, 255, 255, 255),
//                         border: OutlineInputBorder(
//                           borderSide: BorderSide.none,
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                       ),
//                     ),
//                     TextField(
//                        maxLength: 3,
//                                   // maxLengthEnforcement: true,
//                                   inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
//                       // controller: _personheightController,
//                       decoration: InputDecoration(
//                         hintText: 'Height',
//                         filled: true,
//                         fillColor: const Color.fromARGB(255, 255, 255, 255),
//                         border: OutlineInputBorder(
//                           borderSide: BorderSide.none,
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                       ),
//                     ),
//           ],)
//           // First Container
//         ),
//         Container(
//           color: Color.fromARGB(225, 27, 57, 61),
//           child: Text('jvhjh'),
//           width: double.infinity,
//           height: 150, // Second Container
//         ),
//         Positioned(
//           top: 50, // Adjust the top position as needed
//           left: screenWidth / 2 - 100, // Center the image horizontally
//           child: Container(
//             alignment: Alignment.center,
//             margin: EdgeInsets.only(top: 0), // Adjust the margin as needed
//             child: ClipOval(
//               child: Image.asset(
//                 'assets/images/caroseld.jpg',
//                 width: 200,
//                 height: 200,
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workouttraker/function/db_functions/db_person.dart';
import 'package:workouttraker/model/person_model/persondata.dart';

class Profileedit extends StatefulWidget {
  final String personname;
  final String personage;
  final String personweight;
  final String personheight;
  // final String personImage;
  final int index;
  const Profileedit({
    Key? key,
    required this.personname,
    required this.personage,
    required this.personheight,
    required this.index,
    required this.personweight,
    // required this.personImage,
    
  }): super(key: key);

  @override
  State<Profileedit> createState() => _ProfileeditState();
}

class _ProfileeditState extends State<Profileedit> {
  final _personnamecontroller = TextEditingController();
  final _wpersonageController = TextEditingController();
  final _personweightController = TextEditingController();
  final _personheightController = TextEditingController();
  final _imageController = TextEditingController();
   @override
  void initState() {
    super.initState();
    _personnamecontroller.text = widget.personname;
    _wpersonageController.text = widget.personage;
    _personweightController.text = widget.personweight;
    _personheightController.text = widget.personheight;
    // _dateController.text = DateFormat('yyyy-MM-dd').format(widget.date);
    // _dropdownController.text = widget.duration;
    // _isChecked = widget.isChecked;
  }
  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(225, 27, 57, 61) ,
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: double.infinity,
            color: Color.fromARGB(255, 0, 0, 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Spacer to push content below the status bar
                  SizedBox(height: MediaQuery.of(context).padding.top),
                  // TextField #1
                  Padding(
                   padding: const EdgeInsets.fromLTRB(8.0, 250.0, 8.0, 0.0),
                    child: TextField(
                      controller:_personnamecontroller ,
                      // maxLength: 3,
                      // inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                      decoration: InputDecoration(
                        hintText: 'Name',
                        filled: true,
                        fillColor: const Color.fromARGB(255, 255, 255, 255),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // TextField #2
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                     // Adjust margin values as needed
                    child: TextField(
                      controller:_wpersonageController ,
                      maxLength: 3,
                      inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                      decoration: InputDecoration(
                        hintText: 'age',
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                     // Adjust margin values as needed
                    child: TextField(
                      controller: _personheightController,
                      maxLength: 3,
                      inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                      decoration: InputDecoration(
                        hintText: 'weight',
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                     // Adjust margin values as needed
                    child: TextField(controller:_personweightController ,
                      maxLength: 3,
                      inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                      decoration: InputDecoration(
                        hintText: 'Height ',
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                   ElevatedButton(
            onPressed: () {
              persondata studentmodel = persondata(
                id: widget.index,
                personname: _personnamecontroller.text,
                personage: _wpersonageController.text,
                personweight: _personweightController.text,
                personheight: _personheightController.text,
                personImage: _personnamecontroller.text,
                );
                     updateperson(widget.index, studentmodel);
              Navigator.pop(context);
                // personImage: DateTime.parse(_dateController.text),
                // duration: _dropdownController.text,
              // Button's onPressed action
            },
            child: Text('UPDATE'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(225, 27, 57, 61), // Set the button's color here
              // You can also customize other button properties here
              // such as text color, padding, etc.
            ),
          ),
        
                ],
              ),
            ),
          ),
          Container(
          
              color: Color.fromARGB(225, 27, 57, 61),
            
            
            // child: Text('jvhjh'),
            width: double.infinity,
            height: 150,
            
          ),
          Positioned(
            
            top: 50,
            left: screenWidth / 2 - 100,
            child: Container(
                decoration: BoxDecoration(
              border: Border.all(width: 5,color: Color.fromARGB(255, 255, 255, 255)),
                borderRadius: BorderRadius.circular(100), ),
              
              
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 0),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/caroseld.jpg',
                  width: 180,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
