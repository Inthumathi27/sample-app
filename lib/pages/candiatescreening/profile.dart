
import 'package:demo_project/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void showMenuSelection(String value) {
    print("pressed");
  }

  void addItemToList() {
    setState(() {
      names.insert(0, nameController.text);
    });
  }



  void showWidget1() {
    setState(() {
      viewVisible1 = true;
    });
  }

  void hideWidget1() {
    setState(() {
      viewVisible1 = false;
    });
  }

  bool viewVisible1 = false;
  final List<String> names = <String>[];
  TextEditingController nameController = TextEditingController();
  String Inputdata = "option";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primayColor,
      //  appBar: AppBar(
      //   elevation: 0,
      //   centerTitle: true,
      //   actions: <Widget>[
      //     PopupMenuButton<String>(
      //       shape: const RoundedRectangleBorder(
      //           borderRadius: BorderRadius.all(Radius.circular(15.0))),
      //       icon: const Icon(Icons.more_horiz),
      //       onSelected: showMenuSelection,
      //       itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
      //         PopupMenuItem<String>(
      //             child: Column(
      //               children: [
      //                 Row(
      //                   children: [
      //                     const Image(
      //                       image: AssetImage(
      //                           'assets/profile/downloadcv.png'),
      //                       width: 30,
      //                       height: 30,
      //                     ),
      //                     Text("Download Cv", style: font14),
      //                   ],
      //                 ),
      //                 heightSpace,
      //                 Container(color: greyColor.withOpacity(0.5),height: 1,)
      //               ],
      //             )),
      //         PopupMenuItem<String>(
      //             child: Column(
      //               children: [
      //                 Row(
      //                   children: [
      //                     const Image(
      //                       image: AssetImage(
      //                           'assets/profile/exportdata.png'),
      //                       width: 30,
      //                       height: 30,
      //                     ),
      //                     Text("Export data", style: font14),
      //                   ],
      //                 ),
      //                 heightSpace,
      //                 Container(color: greyColor.withOpacity(0.5),height: 1,)
      //               ],
      //             )),
      //         PopupMenuItem<String>(
      //             child: Column(
      //               children: [
      //                 Row(
      //                   children: [
      //                     const Image(
      //                       image: AssetImage(
      //                           'assets/profile/exportdocument.png'),
      //                       width: 30,
      //                       height: 30,
      //                     ),
      //                     Text("Export Document", style: font14),
      //                   ],
      //                 ),
      //                 heightSpace,
      //                 Container(color: greyColor.withOpacity(0.5),height: 1,)
      //               ],
      //             )),
      //         PopupMenuItem<String>(
      //             child: Row(
      //               children: [
      //                 const Image(
      //                   image: AssetImage(
      //                       'assets/profile/deletecandidate.png'),
      //                   width: 30,
      //                   height: 30,
      //                 ),
      //                 Text("Delete Candidate", style: font14),
      //               ],
      //             )),
      //       ],
      //     ),
      //   ],
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: whiteColor,
                          size: 28,
                        )),
                    PopupMenuButton<String>(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                        size: 28,
                      ),
                      onSelected: showMenuSelection,
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<String>>[
                        PopupMenuItem<String>(
                            child: Column(
                          children: [
                            Row(
                              children: [
                                const Image(
                                  image: AssetImage(
                                      'assets/profile/downloadcv.png'),
                                  width: 30,
                                  height: 30,
                                ),
                                Text("Download Cv", style: font14),
                              ],
                            ),
                            heightSpace,
                            Container(
                              color: greyColor.withOpacity(0.5),
                              height: 1,
                            )
                          ],
                        )),
                        PopupMenuItem<String>(
                            child: Column(
                          children: [
                            Row(
                              children: [
                                const Image(
                                  image: AssetImage(
                                      'assets/profile/exportdata.png'),
                                  width: 30,
                                  height: 30,
                                ),
                                Text("Export data", style: font14),
                              ],
                            ),
                            heightSpace,
                            Container(
                              color: greyColor.withOpacity(0.5),
                              height: 1,
                            )
                          ],
                        )),
                        PopupMenuItem<String>(
                            child: Column(
                          children: [
                            Row(
                              children: [
                                const Image(
                                  image: AssetImage(
                                      'assets/profile/exportdocument.png'),
                                  width: 30,
                                  height: 30,
                                ),
                                Text("Export Document", style: font14),
                              ],
                            ),
                            heightSpace,
                            Container(
                              color: greyColor.withOpacity(0.5),
                              height: 1,
                            )
                          ],
                        )),
                        PopupMenuItem<String>(
                            child: Row(
                          children: [
                            const Image(
                              image: AssetImage(
                                  'assets/profile/deletecandidate.png'),
                              width: 30,
                              height: 30,
                            ),
                            Text("Delete Candidate", style: font14),
                          ],
                        )),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25),
                child: Column(
                  children: [
                    Text(
                      "Candidate \nProfile",
                      style: font30.copyWith(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500,
                          color: whiteColor),
                      textAlign: TextAlign.center,
                    ),
                    heightSpace,
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              left: 0, top: 40 + 20, right: 0, bottom: 20),
                          margin: EdgeInsets.only(top: 60),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            // mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                "jofer j 523".toUpperCase(),
                                style: font22.copyWith(
                                    color: primayColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              heightSpace,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          launch("tel:9876543210");
                                          print("9876543210");
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.call,
                                              color: primayColor,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "9876543210 ",
                                              style: font15.copyWith(),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          launch("mailto:joferj@mail.com");
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.mail,
                                              color: primayColor,
                                              size: 18,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "joferj@mail.com ",
                                              style: font15.copyWith(),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  viewVisible1 == false?   InkWell(
                                    onTap: () {
                                      showWidget1();
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: primayColor,
                                      ),

                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Row(
                                          children: [
                                            Icon(Icons.add,size: 20,color: whiteColor,),
                                            Center(
                                                child: Text(
                                              "Add to vacancy",
                                              style: font15.copyWith(
                                                  color: whiteColor,
                                                  fontWeight: FontWeight.w600),
                                            )),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ) :  SizedBox()
                                ],
                              ),
                              heightSpace,
                              Visibility(
                                  maintainSize: false,
                                  maintainAnimation: false,
                                  maintainState: false,
                                  visible: viewVisible1,
                                  child:   Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width:MediaQuery.of(context).size.width/1.2,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            border: Border.all(color:lightgrey)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 25.0,right: 25),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton<String>(
                                              focusColor: Colors.white,
                                              value: Inputdata,
                                              underline: SizedBox(),
                                              icon: Icon(
                                                Icons.keyboard_arrow_down_outlined,
                                                color:primayColor, // <-- SEE HERE
                                              ),
                                              iconSize: 25,
                                              //elevation: 5,
                                              style: TextStyle(color: Colors.white),
                                              iconEnabledColor: primayColor,
                                              items: <String>[
                                                'option',
                                                'option1',
                                                'option2',
                                                'option3',
                                                'option4',
                                              ].map<DropdownMenuItem<String>>((String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: value == "option"
                                                      ? Text(
                                                    value,
                                                    style: TextStyle(color: Color(0xff878c94)),
                                                  )
                                                      : Text(
                                                    value,
                                                    style: TextStyle(color: Colors.black),
                                                  ),
                                                );
                                              }).toList(),
                                              onChanged: (value) {
                                                setState(() {
                                                  Inputdata = value!;
                                                });
                                              },
                                              isExpanded: false,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 12.0),
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child:Row(mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Container(color: primayColor,
                                              child: Padding(
                                                padding: const EdgeInsets.all(2.0),
                                                child: Icon(Icons.check,color: whiteColor,),
                                              ),),
                                              widthSpace,
                                              InkWell(
                                                onTap: () {
                                                  hideWidget1();
                                                },
                                                child: Container(color: primayColor,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(2.0),
                                                  child: Icon(Icons.close,color: whiteColor,),
                                                ),),
                                              ),
                                            ],
                                          )
                                        ),
                                      )
                                    ],
                                  ),),
                              heightSpace,
                            ],
                          ),
                        ),
                        Positioned(
                          left: 40,
                          right: 50,
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 60,
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                child: Container(
                                  width: 125,
                                  height: 400,
                                  color: whiteColor,
                                  child: Center(
                                      child: Text(
                                    "J",
                                    style: font60.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: primayColor),
                                  )),
                                )),
                          ),
                        ),
                      ],
                    ),
                    heightSpace,
                    heightSpace,
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: whiteColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15,20,15,15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Opacity(
                                      opacity: 0.8,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/profile/summary.png'),
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Text(
                                      "Summary",
                                      style: font16.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: bluegrey),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                )
                              ],
                            ),
                            heightSpace,
                            Container(
                              color: primayColor.withOpacity(0.5),
                              width: MediaQuery.of(context).size.width,
                              height: 1,
                            ),
                            heightSpace,
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Opacity(
                                      opacity: 0.6,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/profile/profile.png'),
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Text(
                                      "Profile",
                                      style: font16.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: bluegrey),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                )
                              ],
                            ),
                            heightSpace,
                            Container(
                              color: primayColor.withOpacity(0.5),
                              width: MediaQuery.of(context).size.width,
                              height: 1,
                            ),
                            heightSpace,
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Opacity(
                                      opacity: 0.8,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/profile/tagging.png'),
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Text(
                                      "Tagging",
                                      style: font16.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: bluegrey),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                )
                              ],
                            ),
                            heightSpace,
                            Container(
                              color: primayColor.withOpacity(0.5),
                              width: MediaQuery.of(context).size.width,
                              height: 1,
                            ),
                            heightSpace,
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Opacity(
                                      opacity: 0.8,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/profile/applicationhistory.png'),
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Text(
                                      "Application History",
                                      style: font16.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: bluegrey),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                )
                              ],
                            ),
                            heightSpace,
                            Container(
                              color: primayColor.withOpacity(0.5),
                              width: MediaQuery.of(context).size.width,
                              height: 1,
                            ),
                            heightSpace,
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Opacity(
                                      opacity: 0.8,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/profile/documents.png'),
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Text(
                                      "Notes/ Documents",
                                      style: font16.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: bluegrey),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                )
                              ],
                            ),
                            heightSpace,
                            Container(
                              color: primayColor.withOpacity(0.5),
                              width: MediaQuery.of(context).size.width,
                              height: 1,
                            ),
                            heightSpace,
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Opacity(
                                      opacity: 0.8,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/profile/acitivityhistory.png'),
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Text(
                                      "Acitvity History",
                                      style: font16.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: bluegrey),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                )
                              ],
                            ),
                            heightSpace,
                            Container(
                              color: primayColor.withOpacity(0.5),
                              width: MediaQuery.of(context).size.width,
                              height: 1,
                            ),
                            heightSpace,
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Opacity(
                                      opacity: 0.8,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/profile/employementdetails.png'),
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Text(
                                      "Employment Details",
                                      style: font16.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: bluegrey),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                )
                              ],
                            ),
                            heightSpace,
                            Container(
                              color: primayColor.withOpacity(0.5),
                              width: MediaQuery.of(context).size.width,
                              height: 1,
                            ),
                            heightSpace,
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Opacity(
                                      opacity: 0.8,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/profile/salarydetails.png'),
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Text(
                                      "Salary Details",
                                      style: font16.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: bluegrey),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                )
                              ],
                            ),
                            heightSpace,
                            Container(
                              color: primayColor.withOpacity(0.5),
                              width: MediaQuery.of(context).size.width,
                              height: 1,
                            ),
                            heightSpace,
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Opacity(
                                      opacity: 0.8,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/profile/salarydetails.png'),
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Text(
                                      "Salary Details",
                                      style: font16.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: bluegrey),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                )
                              ],
                            ),
                            heightSpace,
                            Container(
                              color: primayColor.withOpacity(0.5),
                              width: MediaQuery.of(context).size.width,
                              height: 1,
                            ),
                            heightSpace,
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Opacity(
                                      opacity: 0.8,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/profile/joboffered.png'),
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Text(
                                      "Offer Generation",
                                      style: font16.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: bluegrey),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                )
                              ],
                            ),
                            heightSpace,
                            Container(
                              color: primayColor.withOpacity(0.5),
                              width: MediaQuery.of(context).size.width,
                              height: 1,
                            ),
                            heightSpace,
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Opacity(
                                      opacity: 0.7,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/profile/employeedetails.png'),
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Text(
                                      "Employee Details",
                                      style: font16.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: bluegrey),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                )
                              ],
                            ),
                            Container(
                              color: primayColor.withOpacity(0.5),
                              width: MediaQuery.of(context).size.width,
                              height: 1,
                            ),
                            heightSpace,

                          ],
                        ),
                      ),
                    ),
                    heightSpace,
                    heightSpace,
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
