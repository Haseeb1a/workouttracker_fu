// -------------------------------------------------------------------------------------------


// import 'package:flutter/material.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';

// import 'package:workouttraker/function/db_functions/db_functions.dart';
// import 'package:workouttraker/model/task_model/workoutmodel1.dart';
// import 'package:intl/intl.dart';
// import 'package:workouttraker/sub_screens_wtd/other_sub/edit.dart';
// import 'package:workouttraker/utility/utilitycolor.dart';
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';



// class Task extends StatefulWidget {
//   const Task({super.key});

//   @override
//   State<Task> createState() => _TaskState();
// }

// class _TaskState extends State<Task> {



  
//   // double screenWidth = MediaQuery.of(context).size.width;
//   //   double screenHeight = MediaQuery.of(context).size.height;
//   bool isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     workoutListNotifier.notifyListeners();

//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: AppBar(

//         backgroundColor:const  Color.fromARGB(225, 27, 57, 61),


//         title: Container(
//           width: double.infinity,
//           color: Color.fromARGB(225, 27, 57, 61),
//           height: 60,

//           padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
//           child: TextField(
//             autofocus: false,
//             style: const TextStyle(fontSize: 20.0, color: Color(0xFFbdc6cf)),


//             decoration: InputDecoration(
//               prefixIcon:
//                   IconButton(onPressed: () {}, icon: Icon(Icons.search)),
//               filled: true,

//               fillColor: const Color.fromARGB(255, 249, 249, 249),

//               hintText: 'Search...',
//               contentPadding:
//                   const EdgeInsets.only(left: 14.0, bottom: .0, top: 10),
//               focusedBorder: OutlineInputBorder(

//                 borderSide:const  BorderSide(color: Colors.white),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               enabledBorder: UnderlineInputBorder(
//                 borderSide: const BorderSide(color: Color.fromARGB(255, 20, 19, 19)),


//                 borderRadius: BorderRadius.circular(10),
//               ),
//             ),
//           ),
//         ),
//       ),
//       body: Card(
//         // padding: const EdgeInsets.all(5),
//         child: ValueListenableBuilder(
//           valueListenable: workoutListNotifier,
//           builder: (BuildContext ctx, List<Workoutmodel> workoutlist,
//               Widget? child) {
//                 if (workoutlist.isEmpty) {
//               // If the list is empty, display an image
//               return Center(
//                 child:Lottie.asset('assets/images/data.json'),
//               );
//             } else {
//             return ListView.separated(
//                 itemBuilder: (ctx, index) {

//                   final data = workoutlist[index];
                
//                   // final diff = data.date.difference(DateTime.now()).inDays;

//                   return Slidable(
//                     endActionPane:
//                         ActionPane(motion: DrawerMotion(), children: [
//                       SlidableAction(
//                         onPressed: (context) {
//                           // if(data.id!=null){

//                           deleteTask(index);
//                           // }else{
//                           //   print('Task id is null');
//                           // }
//                         },
//                         icon: Icons.delete_forever_rounded,
//                         backgroundColor: Color.fromARGB(225, 27, 57, 61),
//                         foregroundColor: Colors.red,
//                       ),
//                       SlidableAction(

//                         onPressed: (context) {
//                           Navigator.push(context, MaterialPageRoute(builder:(context) => UpdateScreen(typename: data.typename, weight:data.weight, sets: data.reps, reps: data.reps, 
//                           isChecked: false,
//                           date: data.date!, duration: data.duration,
//                            index: index,
//                           ),));
//                         },

//                         icon: Icons.edit,
//                         backgroundColor: Color.fromARGB(225, 27, 57, 61),
//                         foregroundColor: Color.fromARGB(255, 255, 255, 255),
//                       ),
//                     ]),
//                     child: SizedBox(
//                       height: 220,
//                       width: double.infinity,
//                       child: Card(
//                         elevation: 20,
//                         child: Container(
//                            height: 200,
//                           width: 450,
//                           padding: EdgeInsets.only(right: 20),

//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                             //  color: data.isChecked ? Colors.green :Color.fromARGB(255, 207, 198, 198),
                            
//                               color: getBackgroundColor(data.isChecked, data.duration, data.date),
//                           //  color: getContainerColor(data.isChecked, data.duration, diff),
//                               border: Border.all(
//                                   color: Color.fromARGB(255, 207, 198, 198))),

//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.only(left: 35, top: 20),
//                                 child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Text(
//                                       data.typename,
//                                       style: TextStyle(
//                                           fontSize: screenWidth * 0.06),
//                                     ),
//   //                                   Checkbox(
//   //                                       value: data.isChecked,
//   // onChanged: (bool? newvalue) {
//   //   setState(() {
//   //     data.isChecked = newvalue!;
//   //   });
//   // },
//                                         // )
//  Checkbox(
//   value: data.isChecked,
//   onChanged: (bool? newValue) {
//     setState(() {
//       data.isChecked = newValue ?? true; // Ensure null safety
//     });
    
//     // Update the checkbox state in Hive
//     updateTask(index, data);
//   },
// )
//                                   ],
//                                 ),
//                               ),

//                              const  SizedBox(


//                                 height: 20,
//                               ),
//                               Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceEvenly,
//                                 children: [

//                                   const Padding(

//                                     padding: EdgeInsets.only(left: 0, top: 10),
//                                   ),
//                                   Container(
//                                       width: screenHeight * 0.1,
//                                       height: 40,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(10),
//                                         color:
//                                             Color.fromARGB(255, 255, 255, 255),
//                                         border: Border.all(
//                                             color: Color.fromARGB(
//                                                 255, 255, 255, 255)),
//                                       ),
//                                       child: Center(
//                                         child: Text(
//                                           '${data.weight} KG ',
//                                           style: TextStyle(fontSize: 19),
//                                         ),
//                                       )),
//                                   // SizedBox(
//                                   //   width: 17,
//                                   // ),
//                                   Container(
//                                       width: screenHeight * 0.14,
//                                       height: 40,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(10),
//                                         color:
//                                             Color.fromARGB(255, 255, 255, 255),
//                                         border: Border.all(

//                                             color: const Color.fromARGB(


//                                                 255, 255, 255, 255)),
//                                       ),
//                                       child: Center(
//                                         child: Text(
//                                           "${data.reps} REPS",
//                                           style: TextStyle(fontSize: 19),
//                                         ),
//                                       )),
//                                   // SizedBox(
//                                   //   width: 17,
//                                   // ),
//                                   Container(
//                                       width: screenHeight * 0.13,
//                                       height: 40,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(10),
//                                         color:
//                                             Color.fromARGB(255, 255, 255, 255),
//                                         border: Border.all(

//                                             color: const Color.fromARGB(


//                                                 255, 255, 255, 255)),
//                                       ),
//                                       child: Center(
//                                         child: Text(
//                                           " ${data.sets} SETS",
//                                           style: TextStyle(fontSize: 19),
//                                         ),
//                                       )),
//                                 ],
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.only(left: 35, top: 35),
//                                 child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Text(
//                                       // print($)
//                                       DateFormat('yyyy-MM-dd')
//                                           .format(data.date ),

//                                       style: TextStyle(fontSize: 20),
//                                     ),
//                                     Text(data.duration ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           // color: Colors.green,
                         
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//                 separatorBuilder: (cxt, index) {

//                   return const Divider(

//                     thickness: 1,
//                   );
//                 },
//                 itemCount: workoutlist.length);
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
// -------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:workouttraker/function/db_functions/db_functions.dart';
import 'package:workouttraker/model/task_model/workoutmodel1.dart';
import 'package:intl/intl.dart';
import 'package:workouttraker/sub_screens_wtd/other_sub/edit.dart';
import 'package:workouttraker/utility/utilitycolor.dart';
import 'package:lottie/lottie.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  TextEditingController _searchController = TextEditingController();
  List<Workoutmodel> filteredTasks = [];
  bool isSearching = false;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

 void _onSearchChanged() {
  setState(() {
    if (_searchController.text.isEmpty) {
      isSearching = false;
      filteredTasks = [];
    } else {
      isSearching = true;
      filteredTasks = workoutListNotifier.value.where((task) =>
          task.typename.toLowerCase().contains(_searchController.text.toLowerCase())).toList();
    }
  });
}

  @override
  Widget build(BuildContext context) {
    workoutListNotifier.notifyListeners();

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(225, 27, 57, 61),
        title: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: Icon(Icons.search),
              filled: true,
              fillColor: const Color.fromARGB(255, 249, 249, 249),
              contentPadding: const EdgeInsets.only(left: 14.0, bottom: 8, top: 8),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Color.fromARGB(255, 20, 19, 19)),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _searchController.clear();
            },
            icon: Icon(Icons.clear),
          ),
        ],
      ),
      body: Card(
        child: Column(
          children: [
            Expanded(
              child: ValueListenableBuilder(
                valueListenable: workoutListNotifier,
                builder: (BuildContext ctx, List<Workoutmodel> workoutlist, Widget? child) {
                  List<Workoutmodel> tasksToDisplay = isSearching ? filteredTasks : workoutlist;

                  if (tasksToDisplay.isEmpty) {
                    return Center(
                      child: Lottie.asset('assets/images/data.json'),
                    );
                  } else {
                    return ListView.separated(
                      itemBuilder: (ctx, index) {
                        final data = tasksToDisplay[index];
                        return Slidable(
                    endActionPane:
                        ActionPane(motion: DrawerMotion(), children: [
                      SlidableAction(
                        onPressed: (context) {
                          // if(data.id!=null){

                          deleteTask(index);
                          // }else{
                          //   print('Task id is null');
                          // }
                        },
                        icon: Icons.delete_forever_rounded,
                        backgroundColor: Color.fromARGB(225, 27, 57, 61),
                        foregroundColor: Colors.red,
                      ),
                      SlidableAction(

                        onPressed: (context) {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => UpdateScreen(typename: data.typename, weight:data.weight, sets: data.reps, reps: data.reps, 
                          isChecked: false,
                          date: data.date!, duration: data.duration,
                           index: index,
                          ),));
                        },

                        icon: Icons.edit,
                        backgroundColor: Color.fromARGB(225, 27, 57, 61),
                        foregroundColor: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ]),
                    child: SizedBox(
                      height: 220,
                      width: double.infinity,
                      child: Card(
                        elevation: 20,
                        child: Container(
                           height: 200,
                          width: 450,
                          padding: EdgeInsets.only(right: 20),

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            //  color: data.isChecked ? Colors.green :Color.fromARGB(255, 207, 198, 198),
                            
                              color: getBackgroundColor(data.isChecked, data.duration, data.date),
                          //  color: getContainerColor(data.isChecked, data.duration, diff),
                              border: Border.all(
                                  color: Color.fromARGB(255, 207, 198, 198))),

                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 35, top: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      data.typename,
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.06),
                                    ),
  //                                   Checkbox(
  //                                       value: data.isChecked,
  // onChanged: (bool? newvalue) {
  //   setState(() {
  //     data.isChecked = newvalue!;
  //   });
  // },
                                        // )
 Checkbox(
  value: data.isChecked,
  onChanged: (bool? newValue) {
    setState(() {
      data.isChecked = newValue ?? true; // Ensure null safety
    });
    
    // Update the checkbox state in Hive
    updateTask(index, data);
  },
)
                                  ],
                                ),
                              ),

                             const  SizedBox(


                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [

                                  const Padding(

                                    padding: EdgeInsets.only(left: 0, top: 10),
                                  ),
                                  Container(
                                      width: screenHeight * 0.1,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        border: Border.all(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                      child: Center(
                                        child: Text(
                                          '${data.weight} KG ',
                                          style: TextStyle(fontSize: 19),
                                        ),
                                      )),
                                  // SizedBox(
                                  //   width: 17,
                                  // ),
                                  Container(
                                      width: screenHeight * 0.14,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        border: Border.all(

                                            color: const Color.fromARGB(


                                                255, 255, 255, 255)),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "${data.reps} REPS",
                                          style: TextStyle(fontSize: 19),
                                        ),
                                      )),
                                  // SizedBox(
                                  //   width: 17,
                                  // ),
                                  Container(
                                      width: screenHeight * 0.13,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        border: Border.all(

                                            color: const Color.fromARGB(


                                                255, 255, 255, 255)),
                                      ),
                                      child: Center(
                                        child: Text(
                                          " ${data.sets} SETS",
                                          style: TextStyle(fontSize: 19),
                                        ),
                                      )),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 35, top: 35),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      // print($)
                                      DateFormat('yyyy-MM-dd')
                                          .format(data.date ),

                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Text(data.duration ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // color: Colors.green,
                         
                        ),
                      ),
                    ),
                  );
                      },
                      separatorBuilder: (cxt, index) {
                        return const Divider(
                          thickness: 1,
                        );
                      },
                      itemCount: tasksToDisplay.length,
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ... (existing code remains the same)
