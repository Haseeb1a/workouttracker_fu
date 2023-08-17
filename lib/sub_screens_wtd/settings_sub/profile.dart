import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workouttraker/function/db_functions/db_functions.dart';
import 'package:workouttraker/function/db_functions/db_person.dart';
import 'package:workouttraker/model/person_model/persondata.dart';
import 'package:workouttraker/model/task_model/workoutmodel1.dart';
import 'package:image_picker/image_picker.dart';
import 'package:workouttraker/sub_screens_wtd/other_sub/profileedit.dart';
// import 'package:workouttraker/dbfunction/model/workoutmodel.dart';
// import 'package:workouttraker/dbfunction/model/workoutmodel1.dart';

// class Profile extends StatelessWidget {
//   const Profile({Key? key});

//   @override
//   Widget build(BuildContext context) {
//       double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     // Your existing build method implementation

//     // Replace the hardcoded data with the ValueListenableBuilder to read data from Hive
//     return ValueListenableBuilder<List<persondata>>(
//       valueListenable:persondataListNotifier  ,
//       builder: (context, persondatalist, _) {
//         final data = persondatalist[index];
//         // Assuming you only have one item in the list for simplicity
//         // final workoutModel = workoutList.isNotEmpty ? workoutList.first : null;

//         return Scaffold(
//           backgroundColor: Color.fromARGB(255, 0, 0, 0),
//           appBar: AppBar(
//             backgroundColor: Color.fromARGB(225, 27, 57, 61),
//             title: Center(
//               child: Text('profile'),
//             ),
//           ),
//           body: Center(
//             child: Card(
//               color: Color.fromARGB(225, 27, 57, 61),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Stack(
//                     children: [
//                       Container(
//                         width: screenHeight * 0.2,
//                         height: screenHeight * 0.9,
//                         alignment: Alignment.center,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(30.0),
//                           child: Image.asset('assets/images/full body.png'),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     width: screenWidth * 0.02,
//                   ),
//                   SizedBox(
//                     width: screenWidth * 0.47,
//                     height: screenHeight * 0.52,
//                     child: Card(
//                       elevation: 10,
//                       color: Color.fromARGB(255, 103, 109, 75),
//                       child: Center(
//                         // child: workoutModel != null
//                             // ? 
//                            child: Text(
//                                 '''
// Name:adil
// age: 22
// weight: 55
// height: 158
//                                 ''',
//                                 //  Name: ${workoutModel.personname}
//                                 // age: ${workoutModel.personage}
//                                 // weight: ${workoutModel.personweight}
//                                 // height: ${workoutModel.personheight}
//                                 style: GoogleFonts.alegreyaSc(
//                                   fontSize: 27,
//                                   color: Colors.white,
//                                 ),
//                                 textAlign: TextAlign.center,
//                               ),
//                             // : CircularProgressIndicator(), // Show loading indicator if data is not available yet
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
// --------------------------------------------------------------------
// class Profile extends StatefulWidget {
//   const Profile({Key? key});

//   @override
//   State<Profile> createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
//   File? _selectedImage; // Variable to store the selected image

//   // Function to open the image picker
//   Future<void> _pickImage() async {
//     final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);

//     if (pickedImage != null) {
//       setState(() {
//         _selectedImage = File(pickedImage.path);
//       });
//     }
//   }

  
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;

//     return ValueListenableBuilder<List<persondata>>(
//       valueListenable: persondataListNotifier,
//       builder: (context, persondatalist, _) {
//         if (persondatalist.isEmpty) {
//           return CircularProgressIndicator(); // Show loading indicator if data is not available yet
//         }

//         final data = persondatalist[0]; // Assuming you want to display the first item

//         return Scaffold(
//           backgroundColor: Color.fromARGB(255, 0, 0, 0),
//           appBar: AppBar(
//             backgroundColor: Color.fromARGB(225, 27, 57, 61),
//             title: Center(
//               child: Text('Profile'),
//             ),
//             actions: [IconButton(onPressed:(){
//               Navigator.push(context, MaterialPageRoute(builder:(context) => Profileedit(personname: data.personname, personage: data.personage, personheight: data.personheight, index:0 , personweight: data.personweight,
//               //  personImage:data.personImage
//                 )
//               // Updateper(typename: data.personname, weight:data.personage, height: data.personheight, image: data.personImage, 
//               //             // isChecked: false,
//               //             // date: data.date!, duration: data.duration,
//               //             //  index: index,
//               //             ),
//                           ));
//             }, icon: Icon(Icons.edit),color:Colors.white ,iconSize: 25,)],
//           ),
//           body: Center(
//             child: Card(
//               color: Color.fromARGB(225, 27, 57, 61),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Stack(
//                     children: [
//                       Container(
//                         width: screenHeight * 0.2,
//                         height: screenHeight * 0.9,
//                         alignment: Alignment.center,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(30.0),
//                           child: Image.asset('assets/images/full body.png'),
//                           // child: ,
                          
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     width: screenWidth * 0.02,
//                   ),
//                   SizedBox(
//                     width: screenWidth * 0.47,
//                     height: screenHeight * 0.52,
//                     child: Card(
//                       // elevation: 10,
//                       color:  Color.fromARGB(255, 255, 251, 183),
//                       child: Column(
//                         children: [
//                            GestureDetector(
//                 onTap: _pickImage, // Open the image picker on tap
//                 child: Container(
//                   width: 105,
//                   height: 105,
//                   decoration: BoxDecoration(
//                     border: Border.all(width: 7,
//                     color: 
//                     Color.fromARGB(255, 5, 35, 29)
//                     //  Color.fromARGB(255, 255, 252, 202)
//                     ),
//                     shape: BoxShape.circle,
//                     color: Colors.grey[300],
//                   ),
//                   child: _selectedImage != null
//                       ? ClipOval(
//                           child: Image.file(
//                             _selectedImage!,
//                             fit: BoxFit.cover,
//                           ),
//                         )
//                       : Icon(
//                           Icons.add_a_photo,
//                           size: 40,
//                           color: Colors.grey[600],
//                         ),
//                 ),
//               ),
//                           Card(
                            
//                             color: Color.fromARGB(255, 255, 252, 202),
//                             child: Center(
//                               child: Text(
//                                 '''
// Name: ${data.personname}
// Age: ${data.personage}
// Weight: ${data.personweight}
// Height: ${data.personheight}
// height:${data.personImage}
//                                 ''',
//                                 style: GoogleFonts.alegreyaSc(
//                                   fontSize: 27,
//                                   color: Colors.black,
//                                 ),
//                                 textAlign: TextAlign.center,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
//--------------------------------------------------------3
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:workouttraker/function/db_functions/db_person.dart';
import 'package:workouttraker/model/person_model/persondata.dart';
import 'package:workouttraker/sub_screens_wtd/other_sub/profileedit.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? _selectedImage; // Variable to store the selected image

  late persondata data; // Declare data variable here

  @override
  void initState() {
    super.initState();
    data = persondataListNotifier.value.first; // Initialize data with the first item
  }

  // Function to open the image picker
  Future<void> _pickImage() async {
    final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      final imageBytes = await pickedImage.readAsBytes();

      setState(() {
        _selectedImage = File(pickedImage.path);
      });

      final updatedData = persondata(
        personname: data.personname,
        personage: data.personage,
        personweight: data.personweight,
        personheight: data.personheight,
        id: data.id,
        personImage: base64Encode(imageBytes), // Store the image as a base64-encoded string
      );

      updateperson(0, updatedData); // Assuming you're updating the first item
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return ValueListenableBuilder<List<persondata>>(
      valueListenable: persondataListNotifier,
      builder: (context, persondatalist, _) {
        if (persondatalist.isEmpty) {
          return CircularProgressIndicator(); // Show loading indicator if data is not available yet
        }

        return Scaffold(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(225, 27, 57, 61),
            title: Center(
              child: Text('Profile'),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profileedit(
                        personname: data.personname,
                        personage: data.personage,
                        personheight: data.personheight,
                        index: 0,
                        personweight: data.personweight,
                      ),
                    ),
                  );
                },
                icon: Icon(Icons.edit),
                color: Colors.white,
                iconSize: 25,
              ),
            ],
          ),
          body: Center(
            child: Card(
              color: Color.fromARGB(225, 27, 57, 61),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: screenHeight * 0.2,
                        height: screenHeight * 0.9,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: _selectedImage != null
                              ? Image.file(
                                  _selectedImage!,
                                  fit: BoxFit.cover,
                                )
                              : Image.asset('assets/images/full body.png'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  SizedBox(
                    width: screenWidth * 0.47,
                    height: screenHeight * 0.52,
                    child: Card(
                      color: Color.fromARGB(255, 255, 251, 183),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: _pickImage, // Open the image picker on tap
                            child: Container(
                              width: 105,
                              height: 105,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 7,
                                  color: Color.fromARGB(255, 5, 35, 29),
                                ),
                                shape: BoxShape.circle,
                                color: Colors.grey[300],
                              ),
                              child: _selectedImage != null
                                  ? ClipOval(
                                      child: Image.file(
                                        _selectedImage!,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : Icon(
                                      Icons.add_a_photo,
                                      size: 40,
                                      color: Colors.grey[600],
                                    ),
                            ),
                          ),
                          Card(
                            color: Color.fromARGB(255, 255, 252, 202),
                            child: Center(
                              child: Text(
                                '''
Name: ${data.personname}
Age: ${data.personage}
Weight: ${data.personweight}
Height: ${data.personheight}
Image: ${data.personImage ?? 'No Image'} 
                                ''',
                                style: GoogleFonts.alegreyaSc(
                                  fontSize: 27,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}





