import 'medicine_input_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: TopContainer(),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MedicineInputPage()),
                  );
                },
                child: Icon(Icons.add),
                backgroundColor: Colors.blue[400],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TopContainer extends StatelessWidget {
  const TopContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 10.0, left: 10.0),
            child: Text(
              'أدوية اليوم',
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            width: 390.0,
            height: 180.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            width: 390.0,
            height: 180.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
        ],
      ),
    );
  }
}
