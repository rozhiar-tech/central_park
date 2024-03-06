import 'package:central_park/screens/ApartmentDetailsScreen.dart';
import 'package:flutter/material.dart';

class ButtonGridScreen extends StatelessWidget {
  final List<String> apartmentTypes = [
    'Type 1',
    'Type 2',
    'Type 3',
    'Type 4',
    'Type 5',
    'Type 6',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Types of Apartments'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: apartmentTypes.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ApartmentDetailsScreen(
                      apartmentType: apartmentTypes[index]),
                ),
              );
            },
            child: Card(
              child: Center(
                child: Text(apartmentTypes[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
