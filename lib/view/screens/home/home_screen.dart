import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newapp/utils/images.dart';
import 'package:newapp/view/base/input_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  List<MyModel> featuresList = [
    MyModel(image: Images.feature1, title: 'Material Marketpalce'),
    MyModel(image: Images.feature2, title: 'Construction Line Marketplace'),
    MyModel(image: Images.feature3, title: 'ERP'),
    MyModel(image: Images.feature4, title: 'CRM'),
    MyModel(image: Images.feature5, title: 'HRMS'),
    MyModel(image: Images.feature6, title: 'Project Management'),
    MyModel(image: Images.feature7, title: 'Portfolio Management'),
    MyModel(image: Images.feature8, title: 'OVP'),
  ];
  List<MyModel> teamsList = [
    MyModel(image: Images.team1, title: 'Mohan Sau'),
    MyModel(image: Images.team2, title: 'Mohan Sau'),
    MyModel(image: Images.team3, title: 'Mohan Sau'),
    MyModel(image: Images.team1, title: 'Mohan Sau'),
    MyModel(image: Images.team2, title: 'Mohan Sau'),
    MyModel(image: Images.team3, title: 'Mohan Sau'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      Images.profile,
                      height: 55,
                      width: 55,
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome Vaishnavi!",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Color(0xff1B2F62),
                                size: 18,
                              ),
                              Text(
                                " Sadashiv Peth, Pune",
                                style: TextStyle(
                                  color: Color(0xff1B2F62),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.grey[300]!, blurRadius: 3)
                          ],
                          borderRadius: BorderRadius.circular(8)),
                      child: const Icon(
                        Icons.notifications_none,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                InputField2(
                    controller: searchController,
                    subTitle: "Search",
                    radius: 30,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Image.asset(
                        Images.filter,
                        height: 20,
                        width: 20,
                      ),
                    ))
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                const Text(
                  "Features",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: GridView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: featuresList.length,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              childAspectRatio: 0.6,
                              mainAxisSpacing: 8),
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 70,
                                      width: 70,
                                      padding: const EdgeInsets.all(16),
                                      decoration: const BoxDecoration(
                                          color: Color(0xffFFED29),
                                          shape: BoxShape.circle),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                  ],
                                ),
                                Positioned(
                                  right: 0,
                                  left: 0,
                                  bottom: -0,
                                  child: Image.asset(featuresList[index].image,
                                      height: 90),
                                ),
                              ],
                            ),
                            Text(
                              featuresList[index].title ?? "",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        );
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Team",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: teamsList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 16),
                          child: Column(
                            children: [
                              Image.asset(
                                teamsList[index].image,
                                height: 90,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                teamsList[index].title,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Products",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                GridView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: 2,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.7,
                            mainAxisSpacing: 12,
                            crossAxisSpacing: 12),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      Images.product,
                                      height: 130,
                                      width: 130,
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    )
                                  ],
                                ),
                                Positioned(
                                  right: 0,
                                  top: 6,
                                  child: Image.asset(Images.arrow, height: 40),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              "Manufacturing Sand",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              "Interests Shown: 23",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Statistics",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Interests",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Text(
                            "2024-25",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: data.entries.map((entry) {
                          return Container(
                            margin: const EdgeInsets.only(right: 9.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // Circles
                                ...entry.value.map((isOrange) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 3.0),
                                      child: Container(
                                        width: 10,
                                        height: 18,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          color: isOrange
                                              ? Colors.orange
                                              : Colors.grey[300],
                                        ),
                                      ),
                                    )),
                                const SizedBox(height: 8),
                                // Month label
                                Text(
                                  entry.key,
                                  style: const TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              width: Get.width,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xff1B2F62),
              ),
              child: const Center(
                  child: Text(
                "PROCEED",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ))),
        ],
      ),
    );
  }

  final Map<String, List<bool>> data = {
    "Apr": [true, true, true, true, true],
    "May": [false, true, true, true, true],
    "Jun": [false, false, false, true, true],
    "Jul": [true, true, true, false, true],
    "Aug": [false, false, true, true, true],
    "Sep": [false, false, false, false, true],
    "Oct": [false, true, true, true, true],
    "Nov": [false, false, true, true, true],
    "Dec": [true, true, true, true, true],
    "Jan": [false, false, true, true, true],
    "Feb": [true, true, true, true, true],
    "Mar": [false, false, false, true, true],
  };
}

class MyModel {
  String image;
  String title;

  MyModel({required this.image, required this.title});
}
