import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MedicineInputPage extends StatefulWidget {
  @override
  _MedicineInputPageState createState() => _MedicineInputPageState();
}

class _MedicineInputPageState extends State<MedicineInputPage> {
  TextEditingController medicineNameController = TextEditingController();
  TextEditingController dosageController = TextEditingController();
  DateTime selectedTime = DateTime.now();

  void onLogo1Pressed() {
    // Add your functionality here for when Logo 1 is pressed
  }

  void onLogo2Pressed() {
    // Add your functionality here for when Logo 2 is pressed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'أكتب أسم الدواء لكي اذكرك',
          style: TextStyle(color: Colors.blue[400], fontSize: 22),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Container(
                      width: 100,
                      height: 100,
                      child: SvgPicture.asset('assets/images/camera-01.svg'),
                    ),
                    onPressed: onLogo1Pressed,
                  ),
                  IconButton(
                    icon: Container(
                      width: 100,
                      height: 100,
                      child: SvgPicture.asset('assets/images/upload-01.svg'),
                    ),
                    onPressed: onLogo2Pressed,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'أسم الدواء',
                  style: TextStyle(color: Colors.blue[400], fontSize: 20),
                ),
              ),
              TextField(
                controller: medicineNameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'ادخل كمية الجرعة (mg)',
                  style: TextStyle(color: Colors.blue[400], fontSize: 20),
                ),
              ),
              TextField(
                controller: dosageController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'أختر الوقت',
                  style: TextStyle(color: Colors.blue[400], fontSize: 20),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: TimePickerSpinner(
                  time: selectedTime,
                  is24HourMode: false,
                  normalTextStyle:
                  TextStyle(fontSize: 24, color: Colors.blue[400]),
                  highlightedTextStyle:
                  TextStyle(fontSize: 24, color: Colors.blue[900]),
                  spacing: 20,
                  itemHeight: 50,
                  isForce2Digits: true,
                  onTimeChange: (time) {
                    setState(() {
                      selectedTime = time;
                    });
                  },
                ),
              ),
              SizedBox(height: 40.0, width: 20.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Save medicine details or perform desired action
                    // You can access the entered values using the controllers
                  },
                  child: Text(
                    'أحفظ',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MedicineInputPage(),
  ));
}
