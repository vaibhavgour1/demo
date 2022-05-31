import 'package:demo/bloc.dart';
import 'package:demo/data_model.dart';
import 'package:demo/event.dart';
import 'package:demo/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/src/bloc_builder.dart';
import 'package:flutter_bloc/src/bloc_provider.dart';

class TaskHomeScreen extends StatefulWidget {
  const TaskHomeScreen({Key? key}) : super(key: key);

  @override
  State<TaskHomeScreen> createState() => _TaskHomeScreenState();
}

class _TaskHomeScreenState extends State<TaskHomeScreen> {
  TestResponse? res;

  @override
  void initState() {
    super.initState();
    bloc.add(GetDataEvent());
  }

  HomeBloc bloc = HomeBloc();

  // Future<TestResponse> login() async {
  //   log("yha aya11");
  //   try {
  //     log("yha aya22");
  //     Response response = await dio.get(
  //       "http://cgprojects.in/flutter/",
  //     );
  //     log("yha aya33$response");
  //     setState(() {
  //       res = response as TestResponse?;
  //     });
  //     return TestResponse.fromJson(res.toString());
  //   } catch (error) {
  //     String message = "";
  //     if (error is DioError) {
  //       ServerError e = ServerError.withError(error: error);
  //       message = e.getErrorMessage();
  //     } else {
  //       message = "Something Went wrong";
  //     }
  //     print("Exception occurred: $message");
  //     return TestResponse(packages: []);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return BlocProvider(
        create: (context) => bloc,
        child: Scaffold(
          backgroundColor: const Color(0xffFFFFFF),
          body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
            if (state is GetDataState) {
              res = state.response;
            }
            if (res == null) {
              return Center(child: CircularProgressIndicator());
            }

            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 38),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("images/crical.png"),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Welcome",
                              style: TextStyle(color: Color(0xff5C5C5C), fontSize: 20, fontWeight: FontWeight.bold)),
                          Text("Emily Cyrus",
                              style: TextStyle(color: Color(0xffE36DA6), fontSize: 20, fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 40, left: 12),
                        width: w,
                        height: h * 0.20,
                        decoration: BoxDecoration(
                          color: const Color(0xffF5B5CF),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Nanny and\nBabysitting Services",
                                style: TextStyle(color: Color(0xff262F71), fontSize: 18, fontWeight: FontWeight.w600)),
                            SizedBox(
                              height: h * 0.020,
                            ),
                            Container(
                              height: 30,
                              width: w * 0.30,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xff262F71),
                                  textStyle: const TextStyle(
                                    fontSize: 18,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Center(
                                  child: Text(
                                    "Book Now",
                                    style: TextStyle(color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: -30,
                        left: 0,
                        right: -42,
                        child: Image.asset(
                          "images/girl.png",
                          width: 140,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    "Your Current Booking",
                    style: TextStyle(color: Color(0xff262F71), fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: w,
                    height: h * 0.20,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 3,
                          offset: Offset(0, 0), // Shadow position
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "One Day Package",
                              style: TextStyle(
                                color: Color(0xffE36DA6),
                                fontSize: 16,
                              ),
                            ),
                            Container(
                              height: 20,
                              width: w * 0.20,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  // padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                                  primary: const Color(0xffE36DA6),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Center(
                                  child: Text(
                                    "Start",
                                    style: TextStyle(color: Colors.white, fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "From",
                                  style: TextStyle(color: Color(0xff5C5C5C), fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                // Image.asset("images/circalTime.png"),
                                Row(
                                  children: [
                                    Container(
                                        width: 12,
                                        height: 12,
                                        child: Image.asset(
                                          "images/fromDateImage.png",
                                          fit: BoxFit.contain,
                                        )),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      "${res!.currentBookings!.fromDate}",
                                      style: TextStyle(
                                          color: Color(0xff5C5C5C), fontSize: 12, fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 12,
                                      height: 12,
                                      child: Image.asset(
                                        "images/circalTime.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      "${res!.currentBookings!.fromTime}",
                                      style: TextStyle(
                                          color: Color(0xff5C5C5C), fontSize: 12, fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "To",
                                  style: TextStyle(color: Color(0xff5C5C5C), fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                        width: 12,
                                        height: 12,
                                        child: Image.asset(
                                          "images/fromDateImage.png",
                                          fit: BoxFit.fill,
                                        )),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      "${res!.currentBookings!.toDate}",
                                      style: TextStyle(
                                          color: Color(0xff5C5C5C), fontSize: 12, fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 12,
                                      height: 12,
                                      child: Image.asset(
                                        "images/circalTime.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      "${res!.currentBookings!.toTime}",
                                      style: TextStyle(
                                          color: Color(0xff5C5C5C), fontSize: 12, fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 7, right: 7, top: 2, bottom: 2),
                              decoration: BoxDecoration(
                                color: const Color(0xff262F71),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "images/star.png",
                                    fit: BoxFit.fill,
                                  ),
                                  const Text(' Rate Us', style: TextStyle(fontSize: 10, color: Colors.white)),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 7, right: 7, top: 2, bottom: 2),
                              decoration: BoxDecoration(
                                color: const Color(0xff262F71),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "images/location.png",
                                    fit: BoxFit.fill,
                                  ),
                                  const Text(' Geolocation', style: TextStyle(fontSize: 10, color: Colors.white)),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 7, right: 7, top: 2, bottom: 2),
                              decoration: BoxDecoration(
                                color: const Color(0xff262F71),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "images/radio.png",
                                    fit: BoxFit.fill,
                                  ),
                                  const Text(' Surveillance', style: TextStyle(fontSize: 10, color: Colors.white)),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Packages",
                    style: TextStyle(color: Color(0xff262F71), fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                      itemCount: res!.packages.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(bottom: 20),
                          height: h * 0.16,
                          decoration: BoxDecoration(
                            color: getColor(index),
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 3,
                                offset: Offset(0, 0), // Shadow position
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      height: 25,
                                      width: 25,
                                      child: Image.asset(
                                        "images/calenderlist.png",
                                        fit: BoxFit.fill,
                                      )),
                                  Container(
                                    height: 20,
                                    width: w * 0.22,
                                    decoration: BoxDecoration(
                                        color: getButtonColor(index), borderRadius: BorderRadius.circular(30)),
                                    child: Center(
                                      child: Text(
                                        "Book Now",
                                        style: const TextStyle(color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    res!.packages[index].packageName,
                                    style: const TextStyle(
                                        color: Color(0xff262F71), fontSize: 18, fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "\u{20B9} ${res!.packages[index].price}",
                                    style: const TextStyle(
                                        color: Color(0xff262F71), fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Text(
                                res!.packages[index].description,
                                maxLines: 2,
                                style: const TextStyle(
                                    color: Color(0xff262F71), fontSize: 10, fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        );
                      }),
                ],
              ),
            );
          }),
        ));
  }

  getColor(int index) {
    if (index == 0) {
      return Color(0xffF0B3CD);
    }
    if (index == 2) {
      return Color(0xffF0B3CD);
    }
    if (index == 4) {
      return Color(0xffF0B3CD);
    }
    if (index == 6) {
      return Color(0xffF0B3CD);
    } else {
      return Color(0xff80ABDB);
    }
  }

  getButtonColor(int index) {
    if (index == 0) {
      return const Color(0xffE36DA6);
    }
    if (index == 2) {
      return const Color(0xffE36DA6);
    }
    if (index == 4) {
      return const Color(0xffE36DA6);
    }
    if (index == 6) {
      return const Color(0xffE36DA6);
    } else {
      return const Color(0xff0098D0);
    }
  }
}
