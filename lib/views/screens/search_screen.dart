import 'package:flutter/material.dart';
import 'package:weather/controllers/weather_controller.dart';
import 'package:weather/views/screens/home_screen.dart';
<<<<<<< HEAD
import 'package:shared_preferences/shared_preferences.dart';
=======
>>>>>>> 1434b16df9ff7067d8946a164ed713c244a374eb

// ignore: must_be_immutable
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
<<<<<<< HEAD
 

=======
>>>>>>> 1434b16df9ff7067d8946a164ed713c244a374eb
  WeatherController weatherController = WeatherController();
  TextEditingController searchController = TextEditingController();
  String? searchError;
  bool searchCheck = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0xFF1D2547),
                    Color(0xFF1D2547),
                    Color.fromARGB(255, 103, 63, 184),
                    Color.fromARGB(255, 178, 123, 189),
                  ])),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      controller: searchController,
<<<<<<< HEAD
                      style: TextStyle(color: Colors.white),
=======
                      style: const TextStyle(color: Colors.white),
>>>>>>> 1434b16df9ff7067d8946a164ed713c244a374eb
                      decoration: InputDecoration(
                        label: const Text(
                          "Shaxar nomini kiriting",
                          style: TextStyle(color: Colors.white),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)),
                        suffixIcon: searchCheck
                            ? IconButton(
                                onPressed: () async {
                                  setState(() {
                                    searchCheck = false;
                                  });
                                  final box = await weatherController
                                      .getInformation(searchController.text);
                                  if (box is String) {
                                    searchError = box;
                                    setState(() {
                                      searchCheck = true;
                                    });
                                  } else {
                                    searchCheck = true;
<<<<<<< HEAD
                                
=======
>>>>>>> 1434b16df9ff7067d8946a164ed713c244a374eb
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => HomeScreen(
                                              latLung: searchController.text),
                                        ));
                                  }
                                },
                                icon: const Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ))
                            : SizedBox(
<<<<<<< HEAD
                                width: 10,
                                child: Image.asset("assets/search.gif"),
                              ),
=======
                              width: 10,
                              child: Image.asset("assets/load.gif"),
                            ),
>>>>>>> 1434b16df9ff7067d8946a164ed713c244a374eb
                        errorText: searchError,
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }
}
