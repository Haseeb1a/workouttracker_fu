// import 'package:flutter/material.dart';
// import 'package:workouttraker/main_wgts/bottom_main.dart';
// import 'package:workouttraker/model/person_model/persondata.dart';
// import '../../function/db_functions/db_functions.dart';
// import 'package:workouttraker/model/task_model/workoutmodel1.dart';

// class LoginScreen extends StatelessWidget {
//   final _nameController = TextEditingController();
//   final _personheightController = TextEditingController();
//   final _personweightController = TextEditingController();
//   final _personageController = TextEditingController();
//   final _personImageConroller=TextEditingController();

//   Future<void> onAddtaskButtonPresseds() async {
//     final _personname = _nameController.text.trim();
//     final _personheight = _personheightController.text.trim();
//     final _personweight = _personweightController.text.trim();
//     final _personage = _personageController.text.trim();
//     final _image=_personImageConroller.text.trim();

//     if (_personname.isEmpty || _personage.isEmpty || _personheight.isEmpty || _personweight.isEmpty) {
//       return;
//     }
//   // final _currentDate = DateTime.now();
//     final _task = persondata(personname:_personname , personage:_personage  , personweight:  _personweight, personheight: _personheight, personImage: _image,
//     //  personname: _personname, personheight: _personheight, personweight: _personweight, personage: _personage
//      );
//       // personname: _personname,
//       // personheight: _personheight,
//       // personweight: _personweight,
//       // personage: _personage,
    
//     addTask(_task);
//   }

//   @override
//   Widget build(BuildContext context) {
//     // double screenWidth = MediaQuery.of(context).size.width;
//     // double screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       backgroundColor:const  Color.fromARGB(225, 27, 57, 61),
//       body: Center(
//         child: Container(
//           alignment: Alignment.center,
//           width: double.infinity,
//           child: Column(
//             children: [
          
//               Padding(
//                 padding: EdgeInsets.all(16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     SizedBox(height: 8),
//                     TextField(
//                       controller: _nameController,
//                       decoration: InputDecoration(
//                         hintText: 'Name',
//                         filled: true,
//                         fillColor: const Color.fromARGB(255, 255, 255, 255),
//                         border: OutlineInputBorder(
//                           borderSide: BorderSide.none,
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     SizedBox(height: 8),
//                     TextField(
//                       controller: _personheightController,
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
//                     const SizedBox(height: 20),
//                     const SizedBox(height: 8),
//                     TextField(
//                       controller: _personweightController,
//                       decoration: InputDecoration(
//                         hintText: 'Weight',
//                         filled: true,
//                         fillColor: const Color.fromARGB(255, 255, 255, 255),
//                         border: OutlineInputBorder(
//                           borderSide: BorderSide.none,
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     const SizedBox(height: 8),
//                     TextField(
//                       controller: _personageController,
//                       decoration: InputDecoration(
//                         hintText: 'Age',
//                         filled: true,
//                         fillColor: const Color.fromARGB(255, 255, 255, 255),
//                         border: OutlineInputBorder(
//                           borderSide: BorderSide.none,
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     SizedBox(
//                       width: 250,
//                       height: 40,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           onAddtaskButtonPresseds();
//                           Navigator.pushReplacement(
//                             context,
//                             MaterialPageRoute(builder: (context) => const ScreeenHome()),
//                           );
//                         },
//                         child: Text('submit'),
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.black,
//                           shape: StadiumBorder(),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// ---------------------------------------------------------------------------
import 'package:flutter/material.dart';
import 'package:workouttraker/function/db_functions/db_person.dart';
import 'package:workouttraker/main_wgts/bottom_main.dart';
import 'package:workouttraker/model/person_model/persondata.dart';
import '../../function/db_functions/db_functions.dart';

import 'package:flutter/material.dart';
import 'package:workouttraker/main_wgts/bottom_main.dart';
import 'package:workouttraker/model/person_model/persondata.dart';
import '../../function/db_functions/db_person.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  
   final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _personheightController = TextEditingController();
  final _personweightController = TextEditingController();
  final _personageController = TextEditingController();
  final _personImageController = TextEditingController();
  
  String? _validateTextField(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  Future<void> onAddtaskButtonPressed(BuildContext context) async {
    final _personname = _nameController.text.trim();
    final _personheight = _personheightController.text.trim();
    final _personweight = _personweightController.text.trim();
    final _personage = _personageController.text.trim();
    final _image = _personImageController.text.trim();

    if (_personname.isEmpty ||
        _personage.isEmpty ||
        _personheight.isEmpty ||
        _personweight.isEmpty) {
      return;
    }

    final _task = persondata(
      personname: _personname,
      personage: _personage,
      personweight: _personweight,
      personheight: _personheight,
      personImage: _image,
    );

    addperson(_task); // Assuming addperson is an asynchronous function
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const ScreeenHome()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color.fromARGB(225, 27, 57, 61),
      body: SafeArea(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            child: Form(
              key: _formKey, 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(height: 8),
                        TextFormField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            hintText: 'Name',
                            filled: true,
                            fillColor: const Color.fromARGB(255, 255, 255, 255),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                              
                            ),
                            
                          ),
                            validator: _validateTextField,
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                           maxLength: 3,
                                      // maxLengthEnforcement: true,
                                      inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                          controller: _personheightController,
                          decoration: InputDecoration(
                             counterText: '',
                            hintText: 'Height',
                            filled: true,
                            fillColor: const Color.fromARGB(255, 255, 255, 255),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                           validator: _validateTextField,
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                             maxLength: 3,
                                      // maxLengthEnforcement: true,
                                      inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                          controller: _personweightController,
                          decoration: InputDecoration(
                             counterText: '',
                            hintText: 'Weight',
                            filled: true,
                            fillColor: const Color.fromARGB(255, 255, 255, 255),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                           validator: _validateTextField,
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                             maxLength: 3,
                                      // maxLengthEnforcement: true,
                                      inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                          controller: _personageController,
                          decoration: InputDecoration(
                             counterText: '',
                            hintText: 'Age',
                            filled: true,
                            fillColor: const Color.fromARGB(255, 255, 255, 255),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            
                          ),
                         validator: _validateTextField,  
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          width: 250,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {
                               if (_formKey.currentState!.validate()) {
                                // Form is valid, proceed with logic
                                onAddtaskButtonPressed(context);
                              }
                            },
                            child: Text('Submit'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: StadiumBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// -----------------------------------------------------------------------------------------ep

