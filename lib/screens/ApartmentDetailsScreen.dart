import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ApartmentDetailsScreen extends StatelessWidget {
  final String apartmentType;

  const ApartmentDetailsScreen({required this.apartmentType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apartment Details - $apartmentType'),
      ),
      body: Column(
        children: [
          // Your carousel slider
          CarouselSlider(
            options: CarouselOptions(
              height: 280.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
            items: [
              // Add your carousel items here (e.g., images or details)
              buildImageContainer(
                "https://cdn.pixabay.com/photo/2017/01/08/13/58/cube-1963036__340.jpg",
                context,
              ),
              buildImageContainer(
                "https://cdn.pixabay.com/photo/2017/01/08/13/58/cube-1963036__340.jpg",
                context,
              ),
            ],
          ),
          // Add more details or widgets related to the apartment type
          // For example, you can add text descriptions or additional information here
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Description or additional details about $apartmentType',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImageContainer(String imageUrl, BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Open full-screen image when pressed
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FullScreenImage(imageUrl: imageUrl),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class FullScreenImage extends StatelessWidget {
  final String imageUrl;

  const FullScreenImage({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
          ),
        )
      ]),
      body: Center(
        child: GestureDetector(
          onTap: () {
            // Close full-screen image when pressed
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
