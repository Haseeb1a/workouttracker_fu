// -------------------------------------------------------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:workouttraker/function/db_functions/db_functions.dart';
import 'package:workouttraker/model/task_model/workoutmodel1.dart';
import 'package:workouttraker/sub_screens_wtd/other_sub/create.dart';

class Abs extends StatelessWidget {
  const Abs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  String dropdownValue = 'Dog';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(225, 27, 57, 61),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            // --------------------------------------------------------1
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ModelsPage(
                      mymodel: Mymodel(
                          'assets/images/lncline .jpg',
                          'Rectus Abdominis',
                          '''Step 1: Lie back in the decline bench Position hands overhead.kness are bent.
      Step 2: Raise your upper body upward while keeping your lower back on the bench .Hold for one second .Return to starting position .
                        '''),
                    ),
                  ),
                );
              },
              child: Container(
                  padding: EdgeInsets.only(left: 15, top: 5, bottom: 5),
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 0, 0, 0),
                    border:
                        Border.all(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/131-1319291_six-pack-abs-gym-muscles-clipart-sticker-cartoon.png'),
                          radius: 31,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Incline Bench Sit-Up',
                          style: GoogleFonts.alegreyaSc(
                              fontSize: 27, color: Colors.white),
                        ),
                      ])),
            ),
            SizedBox(
              height: 5,
            ),
            // Divider(),
            // -------------------------------------2
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ModelsPage(
                      mymodel: Mymodel(
                          'assets/images/crunches.jpg',
                          'Rectus Abdominis',
                          '''Step 1: While lying on your back Straigten your legs,raise your heels an inch off the floor,and place your hands by your sides.
       Step 2:Keeping your arms parallel to the floor lift your torso and legs so they form a e.As yourself ,bend your knees and pull them up torward your chest .                     
                        
                        '''),
                    ),
                  ),
                );
              },
              child: Container(
                  padding: EdgeInsets.only(left: 15, top: 5, bottom: 5),
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 0, 0, 0),
                    border:
                        Border.all(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/131-1319291_six-pack-abs-gym-muscles-clipart-sticker-cartoon.png'),
                          radius: 31,
                        ),
                        // children:[  CircleAvatar( backgroundImage: AssetImage('assets/images/131-1319291_six-pack-abs-gym-muscles-clipart-sticker-cartoon.png') ,radius:33,),

                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Crunches',
                          style: GoogleFonts.alegreyaSc(
                            fontSize: 27,
                            color: Colors.white,
                          ),
                        ),
                      ])),
            ),
            SizedBox(
              height: 5,
            ),
            // -------------------------------------------------3
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ModelsPage(
                      mymodel: Mymodel(
                          'assets/images/twisting 1.jpg',
                          'Rectus Abdominis',
                          '''Step 1: Lie on a banch with legs extended straight.and hold on to the top of the bench.
      Step 2:Raise your legs straight up,slighty lifting your lower back off the bench.
      Step 3:Hold for a fee seconds,then lower your legs back down to the start postion. Keep your legs straight throughout the motion
                        '''),
                    ),
                  ),
                );
              },
              child: Container(
                  padding: EdgeInsets.only(left: 15, top: 5, bottom: 5),
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 0, 0, 0),
                    border:
                        Border.all(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/131-1319291_six-pack-abs-gym-muscles-clipart-sticker-cartoon.png'),
                          radius: 31,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Twistiing Hip-Raise',
                          style: GoogleFonts.alegreyaSc(
                            fontSize: 27,
                            color: Colors.white,
                          ),
                        ),
                      ])),
            ),
            SizedBox(
              height: 5,
            ),
            // -------------------------------------------------4
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ModelsPage(
                      mymodel: Mymodel(
                          'assets/images/twisiting2.jpg',
                          'Rectus Abdominis',
                          '''Step 1: Lie on your back with your hands underneth you tailbone and have yours legs straight upward,as illustrated
      Step 2: Pull your navel inward and flex your glutes as you lift your hips just a few inches the floor.then lower your hips '''),
                    ),
                  ),
                );
              },
              child: Container(
                  padding: EdgeInsets.only(left: 15, top: 5, bottom: 5),
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 0, 0, 0),
                    border:
                        Border.all(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/131-1319291_six-pack-abs-gym-muscles-clipart-sticker-cartoon.png'),
                          radius: 31,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'wistiing Hip-Raise 2',
                          style: GoogleFonts.alegreyaSc(
                              fontSize: 27, color: Colors.white),
                        ),
                      ])),
            ),
          ],
        ),
      ),
    );
  }
}

class ModelsPage extends StatelessWidget {
  final Mymodel mymodel;

  ModelsPage({required this.mymodel});

  @override
  Widget build(BuildContext context) {
    return Models(
      mymodel: mymodel,
    );
  }
}

class Models extends StatefulWidget {
  final Mymodel mymodel;

  Models({required this.mymodel});

  @override
  State<Models> createState() => _ModelsState();
}

class _ModelsState extends State<Models> {
//   final _typenameController = TextEditingController();

//   final _weightController = TextEditingController();

//   final _repsController = TextEditingController();

//   final _setsController = TextEditingController();

//   TextEditingController _dateController = TextEditingController();

//   final TextEditingController _dropdownController = TextEditingController();
//   String _selectedValue = 'Day';

//   @override
//   void initState() {
//     super.initState();
//     _dropdownController.text = _selectedValue;
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(225, 27, 57, 61),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: SizedBox(
                  width: 300, // Adjust the width as needed
                  height: 150, // Adjust the height as needed
                  child: Image.asset(
                    widget.mymodel.images,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Muscle: ${widget.mymodel.Text}',
                  style: GoogleFonts.alegreyaSc(
                      fontSize: 30, fontStyle: FontStyle.italic),
                  // style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  ' ${widget.mymodel.Text1}',
                  style: GoogleFonts.acme(
                      fontSize: 20, fontStyle: FontStyle.italic),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Textng(),
                        ));
                  },
                  child: Icon(Icons.add),
                  backgroundColor: Colors.black,
                ),
                SizedBox(
                  width: 15,
                ),
              ]),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
  // Future<void> onAddtaskButtonPressed() async {
  //   final _typename = _typenameController.text.trim();
  //   final _weight = _weightController.text.trim();
  //   final _sets = _setsController.text.trim();
  //   final _reps = _repsController.text.trim();
  //   final _date = DateTime.parse(_dateController.text.trim());
  //   final _duration = _dropdownController.text.trim();

  //   if (_typename.isEmpty || _weight.isEmpty) {
  //     return;
  //   }
  //   final _task = Workoutmodel(
  //     typename: _typename, weight: _weight, reps: _reps, sets: _sets,
  //     date: _date,
  //     duration: _duration,
   
  //   );
  //   print('$_typename $_weight');
  //   addTask(_task);
  // }

  // Future<void> _selectDate() async {
  //   DateTime? picked = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(2000),
  //     lastDate: DateTime(2100),
  //   );
  //   if (picked != null) {
  //     setState(() {
  //       _dateController.text = DateFormat('yyyy-MM-dd').format(picked);
  //     });
  //   }
  // }
}
class Mymodel {
  final String images;
  final String Text;
  final String Text1;

  Mymodel(this.images, this.Text, this.Text1);
}
// ---------------------------------------------------------------
