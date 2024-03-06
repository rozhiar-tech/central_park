import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _progressValue = 0.0;

  void startProgress() {
    const durationInSeconds = 5; // Set the duration of the progress in seconds
    const steps = 100; // Number of steps

    setState(() {
      _progressValue = 0.0; // Reset progress
    });

    for (int i = 1; i <= steps; i++) {
      Future.delayed(Duration(seconds: (durationInSeconds * i) ~/ steps), () {
        setState(() {
          _progressValue = i / steps; // Update progress
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80, // Set the height of the AppBar

        // Customizing the content of the AppBar
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/user.png"),
              radius: 30, // Set the radius of the CircleAvatar
            ),
            SizedBox(
                width: 10), // Add some space between the avatar and the text

            // Column to hold the text and icons
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello User',
                  style: TextStyle(
                    color: Color(0xff4C7EC3),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                    height: 5), // Add some space between the text and icons
              ],
            ),
            Spacer(),
            Row(
              children: [
                Icon(
                  Icons.message,
                  color: Color(0xff4C7EC3),
                ),
                SizedBox(width: 10), // Add some space between icons
                Icon(
                  Icons.notifications,
                  color: Color(0xff4C7EC3),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xffD4D4D4).withOpacity(0.3),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(12),
                      height: 130,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                      ),
                      // ignore: prefer_const_constructors
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Total Work Hours per week",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Color(0xff4C7EC3),
                                  size: 28,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "90 H",
                                    style: TextStyle(
                                      color: Color(0xff4C7EC3),
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(12),
                      height: 130,
                      width: 200,
                      decoration: BoxDecoration(
                        color: const Color(0xff4C7EC3),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Upcoming Buildings",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.house,
                                  color: Colors.white,
                                  size: 28,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "7",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(12),
                      height: 130,
                      width: 200,
                      decoration: BoxDecoration(
                        color: const Color(0xff4C7EC3),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Completed Buildings",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.house,
                                  color: Colors.white,
                                  size: 28,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "5",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
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
                    "https://firebasestorage.googleapis.com/v0/b/schoolmanagment-f3304.appspot.com/o/building-7214070_1280.jpg?alt=media&token=a45f88e0-bbd6-41e5-95df-77c27f114add",
                    context,
                  ),
                  buildImageContainer(
                    "https://firebasestorage.googleapis.com/v0/b/schoolmanagment-f3304.appspot.com/o/istockphoto-1328633577-1024x1024.jpg?alt=media&token=42497798-5531-4bc0-a049-b63f084e5529",
                    context,
                  ),
                  buildImageContainer(
                    "https://firebasestorage.googleapis.com/v0/b/schoolmanagment-f3304.appspot.com/o/istockphoto-511061090-1024x1024.jpg?alt=media&token=16b471dd-1057-4880-895b-39f02f169364",
                    context,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Offers",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(12),
                      height: 300,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            const BoxShadow(
                              color: Colors.white,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "10/04/2024",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.timer,
                                        size: 16,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "12d",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.blue.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: const Text(
                                    "open",
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "For Limited Time you can get an apartment for only 25K down oayment",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: const BorderSide(
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  child: const SizedBox(
                                    width: 70,
                                    height: 50,
                                    child: Center(
                                      child: Text(
                                        "Detail",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: const BorderSide(
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  child: const SizedBox(
                                    width: 70,
                                    height: 50,
                                    child: Center(
                                      child: Text(
                                        "Accept",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(12),
                      height: 300,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            const BoxShadow(
                              color: Colors.white,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "10/04/2024",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.timer,
                                        size: 16,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "12d",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.blue.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: const Text(
                                    "open",
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "For Limited Time you can get an apartment for only 25K down oayment",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: const BorderSide(
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  child: const SizedBox(
                                    width: 70,
                                    height: 50,
                                    child: Center(
                                      child: Text(
                                        "Detail",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: const BorderSide(
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  child: const SizedBox(
                                    width: 70,
                                    height: 50,
                                    child: Center(
                                      child: Text(
                                        "Accept",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "In Proggress Tasks",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(12),
                      height: 300,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            const BoxShadow(
                              color: Colors.white,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "10/04/2024",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.timer,
                                        size: 16,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "12d",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.blue.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: const Text(
                                    "open",
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                LinearProgressIndicator(
                                  backgroundColor: Colors
                                      .grey[300], // Set the background color
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(Colors
                                          .blue), // Set the progress color
                                  value:
                                      _progressValue, // Set the current progress value
                                ),
                                const SizedBox(
                                    height:
                                        10), // Add some spacing between the progress bar and the text
                                Text(
                                  "Completing: ${(_progressValue * 100).toStringAsFixed(0)}%",
                                  style: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(
                                    height:
                                        20), // Add additional spacing if needed
                                ElevatedButton(
                                  onPressed: () {
                                    startProgress(); // Trigger the progress
                                  },
                                  child: const Text("Start Progress"),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: const BorderSide(
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  child: const SizedBox(
                                    width: 70,
                                    height: 50,
                                    child: Center(
                                      child: Text(
                                        "Detail",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: const BorderSide(
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  child: const SizedBox(
                                    width: 70,
                                    height: 50,
                                    child: Center(
                                      child: Text(
                                        "Accept",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(12),
                      height: 300,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            const BoxShadow(
                              color: Colors.white,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "10/04/2024",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.timer,
                                        size: 16,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "12d",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.blue.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: const Text(
                                    "open",
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                LinearProgressIndicator(
                                  backgroundColor: Colors
                                      .grey[300], // Set the background color
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(Colors
                                          .blue), // Set the progress color
                                  value:
                                      _progressValue, // Set the current progress value
                                ),
                                const SizedBox(
                                    height:
                                        10), // Add some spacing between the progress bar and the text
                                Text(
                                  "Completing: ${(_progressValue * 100).toStringAsFixed(0)}%",
                                  style: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(
                                    height:
                                        20), // Add additional spacing if needed
                                ElevatedButton(
                                  onPressed: () {
                                    startProgress(); // Trigger the progress
                                  },
                                  child: const Text("Start Progress"),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: const BorderSide(
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  child: const SizedBox(
                                    width: 70,
                                    height: 50,
                                    child: Center(
                                      child: Text(
                                        "Detail",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: const BorderSide(
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  child: const SizedBox(
                                    width: 70,
                                    height: 50,
                                    child: Center(
                                      child: Text(
                                        "Accept",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
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
    );
  }
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
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
