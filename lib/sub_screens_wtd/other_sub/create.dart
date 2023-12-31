import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workouttraker/function/db_functions/db_functions.dart';
import 'package:intl/intl.dart';
import 'package:workouttraker/model/task_model/workoutmodel1.dart';
import 'package:workouttraker/main_wgts/bottom_main.dart';
class Textng extends StatefulWidget {
  const Textng({super.key});

  @override
  State<Textng> createState() => _TextngState();
}

class _TextngState extends State<Textng> {
   final _formKey = GlobalKey<FormState>();
   final _typenameController=TextEditingController();

  final _weightController=TextEditingController();

  final _repsController=TextEditingController();

  final _setsController=TextEditingController();

  TextEditingController _dateController=TextEditingController();
  
   final TextEditingController _dropdownController = TextEditingController();
  String _selectedValue = 'Day';

  @override
  void initState() {
    super.initState();
    _dropdownController.text = _selectedValue;
  }
  Future<void> _selectDate() async {
  DateTime? picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2100),
  );
  if (picked != null) {
    setState(() {
      _dateController.text = DateFormat('yyyy-MM-dd').format(picked);
    });
  }
}
String? _validateTextField(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
  }
  Future<void> onAddtaskButtonPressed() async {
  if (_formKey.currentState!.validate()) {
    // Validation successful, proceed to add task
    final _typename = _typenameController.text.trim();
    final _weight = _weightController.text.trim();
    final _sets = _setsController.text.trim();
    final _reps = _repsController.text.trim();
    final _date = DateTime.parse(_dateController.text.trim());
    final _duration = _dropdownController.text.trim();

    final _task = Workoutmodel(
      typename: _typename,
      weight: _weight,
      reps: _reps,
      sets: _sets,
      date: _date,
      duration: _duration,
    );

    addTask(_task);

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ScreeenHome()));
  }
}
// Future<void> onAddtaskButtonPressed()async{
//   final _typename = _typenameController.text.trim();
//   final _weight=_weightController.text.trim();
//   final _sets=_setsController.text.trim();
//   final _reps= _repsController.text.trim();
//   final _date = DateTime.parse(_dateController.text.trim()); 
//    final _duration=_dropdownController.text.trim();
  
//   if(_typename.isEmpty|| _weight.isEmpty){
// return;
//   }
//   final _task =Workoutmodel(typename: _typename, weight: _weight, reps: _reps, sets: _sets,date: _date,
//   duration:_duration,
//   // isChecked: false,
//   // personname: '',
//   // personheight: '',
//   // personweight: '',
//   // personage: '', 
//   );
//   print('$_typename $_weight');
//   print('$_date$_duration' );
//    addTask(_task);
  
// }
  

  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
           appBar: AppBar(backgroundColor: Color.fromARGB(225, 27, 57, 61),
           title: Text('addTask'),),
          body: AlertDialog(
            
             backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                            // title: Text('ADD TASK'),
                            content:
                             Container( 
                              height: double.infinity,
                               child: Form(
                                key: _formKey,
                                 child: Column(
                                  children: [
                                   TextFormField(
                                    controller: _typenameController,
                                    keyboardType: TextInputType.name,
                                     decoration: InputDecoration(
                                      
                                      
                                      hintText: 'TYPE NAME',
                                             filled: true,
                                             fillColor: const Color.fromARGB(255, 255, 255, 255),
                                             border: OutlineInputBorder(
                                               
                                               borderSide: BorderSide.none,
                                               borderRadius: BorderRadius.circular(15)
                                             ),
                                           ),
                                            validator: _validateTextField,
                                   ),
                                   SizedBox(
                                    height: 16,
                                   ),
                                   TextFormField(
                                    controller: _weightController,
                                    maxLength: 3,
                                    // maxLengthEnforcement: true,
                                    inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                                     keyboardType: TextInputType.number,
                                     decoration: InputDecoration(
                                      counterText: '',
                                      hintText: 'KG',
                                             filled: true,
                                             fillColor: const Color.fromARGB(255, 255, 255, 255),
                                             border: OutlineInputBorder(
                                               
                                               borderSide: BorderSide.none,
                                               borderRadius: BorderRadius.circular(15)
                                             ),
                                           ),
                                   ),
                                   SizedBox(
                                    height: 16,
                                   ),
                                   TextFormField(
                                    controller: _repsController,
                                    maxLength: 3,
                                    inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                                    keyboardType: TextInputType.number,
                                     decoration: InputDecoration(
                                      counterText: '',
                                      hintText: 'SETS',
                                             filled: true,
                                             fillColor: const Color.fromARGB(255, 255, 255, 255),
                                             border: OutlineInputBorder(
                                               
                                               borderSide: BorderSide.none,
                                               borderRadius: BorderRadius.circular(15)
                                             ),
                                           ),
                                            validator: _validateTextField,
                                   ),
                                   SizedBox(
                                    height: 16,
                                   ),
                                   TextFormField(
                                    controller: _setsController,
                                    maxLength: 3,
                                    inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                                     keyboardType: TextInputType.number,
                                     decoration: InputDecoration(
                                      counterText: '',
                                      hintText: 'REPS',
                                             filled: true,
                                             fillColor: const Color.fromARGB(255, 255, 255, 255),
                                             border: OutlineInputBorder(
                                               
                                               borderSide: BorderSide.none,
                                               borderRadius: BorderRadius.circular(15)
                                             ),
                                             
                                           ),
                                            validator: _validateTextField,
                                   ),
                                    SizedBox(
                                    height: 16,
                                   ),
                                    TextFormField(
                                    controller: _dateController,
                                     keyboardType: TextInputType.number,
                                     decoration: InputDecoration(
                                      labelText: 'Date',
                                             filled: true,
                                             prefixIcon: Icon(Icons.calendar_today),
                                             fillColor: const Color.fromARGB(255, 255, 255, 255),
                                             
                                             border: OutlineInputBorder(
                                               
                                               borderSide: BorderSide.none,
                                               borderRadius: BorderRadius.circular(15)
                                             ),
                                           ),
                                           readOnly: true,
                                           onTap: (){
                                            _selectDate();
                                           },
                                            validator: _validateTextField,
                                   ),
                                   SizedBox(
                                    height: 16,
                                   ),
                                   Container(
                                    height: 40,
                                    width: 300,
                                    // color: Colors.white,
                                    decoration: BoxDecoration(
                                      
                                                             
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                    
                                            DropdownButton<String>(
                                         alignment: Alignment.bottomCenter,
                                         padding: EdgeInsetsDirectional.all(3),
                                         borderRadius: BorderRadius.circular(15),
                                         value: _dropdownController.text, // Set the current selected value from the controller.
                                         items: <String>['Day', 'Week', 'Month']
                                           .map<DropdownMenuItem<String>>((String value) {
                                             return DropdownMenuItem<String>(
                                               value: value,
                                               child: Text(
                                                 value,
                                                 style: TextStyle(fontSize: 15),
                                               ),
                                             );
                                           }).toList(),
                                         onChanged: (String? newValue) {
                                         setState(() {
                                           _selectedValue = newValue!; // Update the state variable with the selected value.
                                           _dropdownController.text = _selectedValue; // Update the controller's text.
                                         });
                                         },
                                           ),
                                                             
                                      ],
                                    ),
                                   )
                                  ],
                                                 ),
                               ),
                             ),
                              
                            actions: [
                              MaterialButton(onPressed: (
                                
                              ){
                                onAddtaskButtonPressed();
                                
                              //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ScreeenHome(),));
                              },
                              color: Colors.white,
                              child: Text('ADD'),
                              )
                            ],
          ),
        );
      
    
  }
}
// /------------------------------------------------------------------------
