
import 'package:demo_project/utils/constant.dart';
import 'package:demo_project/widget/filter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:page_transition/page_transition.dart';

import '../../widget/switchwidget.dart';
import 'chipfilter.dart';
import 'filter.dart';

class jobdetails {
  String? jobtitle;
  String? Industrytype;
  String? referencenumber;
  String? Deadline;
  String? Experience;
  String? location;

  jobdetails(
      {this.jobtitle,
      this.Industrytype,
      this.referencenumber,
      this.Deadline,
      this.Experience,
      this.location});
}

class MyJobs extends StatefulWidget {
  const MyJobs({Key? key}) : super(key: key);

  @override
  State<MyJobs> createState() => _MyJobsState();
}

class _MyJobsState extends State<MyJobs> with SingleTickerProviderStateMixin {
  List jobList = [
    jobdetails(
      jobtitle: "Testing",
      Industrytype: "IT Industry",
      referencenumber: "25454",
      Deadline: "August 22,2022",
      Experience: "1-2 years",
      location: "United Kingdom",
    ),
    jobdetails(
      jobtitle: "Biology Teacher",
      Industrytype: "Teaching Industry",
      referencenumber: "145245",
      Deadline: "August 11,2022",
      Experience: "3-5 years",
      location: "United Kingdom",
    ),
    jobdetails(
      jobtitle: "English Professor",
      Industrytype: "Teaching Industry",
      referencenumber: "24444455",
      Deadline: "August 11,2022",
      Experience: "9-10 years",
      location: "United Kingdom",
    ),
  ];

  void showMenuSelection(String value) {
    print("pressed");
  }

  String Inputvalue = "Sort By";
  final _controller = ValueNotifier<bool>(false);
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: bodycolor,
          appBar: AppBar(
              title: Text(
                "My Jobs",
                style: font16.copyWith(fontWeight: FontWeight.w600),
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.filter_list,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: FilterPage()));
                  },
                )
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(50.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 15),
                      child: TextField(
                        style: font14,
                        cursorHeight: 20,
                        cursorColor: lightgrey,
                        decoration: InputDecoration(
                          hintText: "Search",
                          fillColor: Color(0xffbce8f1),
                          filled: true,
                          contentPadding: EdgeInsets.fromLTRB(10, 3.0, 3, 3),
                          hintStyle: font14.copyWith(color: lightgrey),
                          prefixIcon: Icon(
                            Icons.search,
                            color: lightgrey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    )
                  ],
                ),
              )),
          body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    heightSpace,
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Filter",style: font16.copyWith(color: primayColor,fontWeight: FontWeight.w600)),
                        FlutterSwitch(
                          width: 75.0,
                          height: 30.0,
                          valueFontSize: 12.0,
                          toggleSize: 30.0,
                          value: status,
                          activeColor: primayColor,
                          borderRadius: 5.0,
                          padding: 5.0,
                          activeTextColor: whiteColor,
                          inactiveTextColor: whiteColor,
                          showOnOff: true,

                          onToggle: (val) {
                            setState(() {
                              status = val;
                            });
                          },
                        ),
                      ],
                    ),
                    heightSpace,
                    status == true?  Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Requisition",style: font16.copyWith(color: bluegrey,fontWeight: FontWeight.w600),),

                        Container(
                          height: 70,
                          child: ChipsFilter(
                            selected: 1, // Select the second filter as default
                            filters: [
                              Filter(label: "Requested", count: "5"),
                              Filter(label: "Denied", count: "256"),
                            ],
                          ),
                        ),
                        Text("Jobs",style: font16.copyWith(color: bluegrey,fontWeight: FontWeight.w600),),
                        Container(
                          height: 122,
                          child: ChipsFilter(
                            selected: 1, // Select the second filter as default
                            filters: const [
                              Filter(label: "Draft", count: "5"),
                              Filter(label: "Active", count: "256"),
                              Filter(label: "Expired", count: "256"),
                              Filter(label: "Archive", count: "2554"),
                            ],
                          ),
                        ),
                        heightSpace,
                      ],
                    ):SizedBox(),
                    ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: jobList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10.0,top: 10),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: whiteColor,
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            jobList[index].jobtitle,
                                            style: font16.copyWith(
                                              color: Color(0xff3b3b3b),
                                              fontWeight: FontWeight.w600,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          PopupMenuButton<String>(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15.0))),
                                            icon: Icon(Icons.more_vert),
                                            onSelected: showMenuSelection,
                                            itemBuilder: (BuildContext context) =>
                                                <PopupMenuEntry<String>>[
                                              PopupMenuItem<String>(
                                                  child: Container(
                                                      width: MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          2.5,
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.remove_red_eye,
                                                            size: 25,
                                                            color: Colors.blueGrey,
                                                          ),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Text("Preview Job",
                                                              style: font14.copyWith())
                                                        ],
                                                      ))),
                                              PopupMenuItem<String>(
                                                  child: Container(
                                                      width: MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          2.2,
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.edit,
                                                            size: 25,
                                                            color: Colors.blueGrey,
                                                          ),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Text("Edit Job",
                                                              style: font14)
                                                        ],
                                                      ))),
                                              PopupMenuItem<String>(
                                                  child: Container(
                                                      width: MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          2.2,
                                                      child: Row(
                                                        children: [
                                                          Image.asset(
                                                            "assets/job/screening.png",
                                                            width: 25,
                                                            height: 25,
                                                          ),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Text("Screening Question",
                                                              style: font14.copyWith())
                                                        ],
                                                      ))),
                                              PopupMenuItem<String>(
                                                  child: Container(
                                                      width: MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          2.2,
                                                      child: Row(
                                                        children: [
                                                          Image.asset(
                                                            "assets/job/duplicatedata.png",
                                                            width: 25,
                                                            height: 25,
                                                          ),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Text("Duplicate Job",
                                                              style: font14.copyWith())
                                                        ],
                                                      ))),
                                              PopupMenuItem<String>(
                                                  child: Container(
                                                      width: MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          2.2,
                                                      child: Row(
                                                        children: [
                                                          Image.asset(
                                                            "assets/job/candidatescreening.png",
                                                            width: 25,
                                                            height: 25,
                                                          ),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Text("Candidate Screening",
                                                              style: font14.copyWith())
                                                        ],
                                                      ))),
                                              PopupMenuItem<String>(
                                                  child: Container(
                                                      width: MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          2.2,
                                                      child: Row(
                                                        children: [
                                                          Image.asset(
                                                            "assets/job/notes.png",
                                                            width: 25,
                                                            height: 25,
                                                          ),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Text("Job Notes",
                                                              style: font14.copyWith())
                                                        ],
                                                      ))),
                                              PopupMenuItem<String>(
                                                  child: Container(
                                                      width: MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          2.2,
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.close,
                                                            color: bluegrey,
                                                          ),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Text("Close Jobs",
                                                              style: font14.copyWith())
                                                        ],
                                                      ))),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/tagicon.png",
                                                width: 25,
                                                height: 20,
                                              ),
                                              Text(
                                                jobList[index].Industrytype,
                                                style: font14.copyWith(
                                                    fontStyle: FontStyle.italic,
                                                    color: Colors.blueGrey),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/jobreferralno.png",
                                                width: 25,
                                                height: 20,
                                              ),
                                              Text(
                                                jobList[index].referencenumber,
                                                style: font14.copyWith(
                                                    fontStyle: FontStyle.italic,
                                                    color: Colors.blueGrey),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      heightSpace,

                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on_sharp,
                                                color: lightgrey,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                jobList[index].location,
                                                style: font15.copyWith(
                                                    color:
                                                        Colors.black.withOpacity(0.5)),
                                              )
                                            ],
                                          ),
                                          Text(jobList[index].Deadline),
                                        ],
                                      ),
                                      heightSpace,
                                      // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //   children: [
                                      //     Container(
                                      //       decoration: BoxDecoration(
                                      //         borderRadius: BorderRadius.circular(5),
                                      //         color: containerblueColor,
                                      //       ),
                                      //       width:170,
                                      //       height: 50,
                                      //       child: Center(child:
                                      //       Padding(
                                      //         padding: const EdgeInsets.only(left: 2.0,right: 2),
                                      //         child: Row(
                                      //           children: [
                                      //             Image.asset(
                                      //               "assets/job/careerssite.png",
                                      //               width: 25,
                                      //               height: 20,
                                      //             ),
                                      //             Text("Post to Careers Site",style: font14.copyWith(color: bluegrey,fontWeight: FontWeight.w600),),
                                      //           ],
                                      //         ),
                                      //       )),
                                      //     ),
                                      //     widthSpace,
                                      //     Container(
                                      //       decoration: BoxDecoration(
                                      //         borderRadius: BorderRadius.circular(5),
                                      //         color: containerblueColor,
                                      //       ),
                                      //       width:170,
                                      //       height: 50,
                                      //       child: Center(child:
                                      //
                                      //       Padding(
                                      //         padding: const EdgeInsets.only(left: 2.0,right: 2),
                                      //         child: Row(
                                      //           children: [
                                      //             Image.asset(
                                      //               "assets/job/webrecruit.png",
                                      //               width: 25,
                                      //               height: 20,
                                      //             ),
                                      //             Text("Send to Webrecruit",style: font14.copyWith(color: bluegrey,fontWeight: FontWeight.w600),),
                                      //           ],
                                      //         ),
                                      //       )),
                                      //     ),
                                      //   ],
                                      // ),
                                      // heightSpace,
                                      // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //   children: [
                                      //     Container(
                                      //       decoration: BoxDecoration(
                                      //         borderRadius: BorderRadius.circular(5),
                                      //         color: containerblueColor,
                                      //       ),
                                      //       width:170,
                                      //       height: 50,
                                      //       child: Center(child:
                                      //         Padding(
                                      //           padding: const EdgeInsets.only(left: 2.0,right: 2),
                                      //           child: Row(
                                      //             children: [
                                      //               Image.asset(
                                      //                 "assets/job/careerssite.png",
                                      //                 width: 25,
                                      //                 height: 20,
                                      //               ),
                                      //               Text("Post to Job Boards",style: font15.copyWith(color: bluegrey,fontWeight: FontWeight.w600),),
                                      //             ],
                                      //           ),
                                      //         )),
                                      //     ),
                                      //
                                      //     Container(
                                      //       decoration: BoxDecoration(
                                      //         borderRadius: BorderRadius.circular(5),
                                      //         color: containerblueColor,
                                      //       ),
                                      //       width:170,
                                      //       height: 50,
                                      //       child: Center(child:
                                      //
                                      //         Padding(
                                      //           padding: const EdgeInsets.only(left: 2.0,right: 2),
                                      //           child: Row(
                                      //             children: [
                                      //               Image.asset(
                                      //                 "assets/job/agencies.png",
                                      //                 width: 25,
                                      //                 height: 20,
                                      //               ),
                                      //               Text("Send to Agencies",style: font15.copyWith(color: bluegrey,fontWeight: FontWeight.w600),),
                                      //             ],
                                      //           ),
                                      //         )),
                                      //     ),
                                      //   ],
                                      // ),
                                      // heightSpace,
                                      // heightSpace,
                                      Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 1,
                                        color: lightgrey.withOpacity(0.5),
                                      ),

                                      heightSpace,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: primayColor,
                                                ),
                                                width: 130,
                                                height: 50,
                                                child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 2.0, right: 2),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                    children: [
                                                      Image.asset(
                                                        "assets/job/hiringmanager.png",
                                                        width: 25,
                                                        height: 20,
                                                        color: whiteColor,
                                                      ),
                                                      Text(
                                                        "Hiring managers",
                                                        style: font13.copyWith(
                                                            color: whiteColor,
                                                            fontWeight:
                                                                FontWeight.w600),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              widthSpace,
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Color(0xff4BB543),
                                                ),
                                                width: 130,
                                                height: 50,
                                                child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 2.0, right: 2),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                    children: [
                                                      Image.asset(
                                                        "assets/job/url.png",
                                                        width: 25,
                                                        height: 20,
                                                      ),
                                                      Text(
                                                        "Apply Url",
                                                        style: font13.copyWith(
                                                            color: whiteColor,
                                                            fontWeight:
                                                                FontWeight.w600),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              PopupMenuButton<String>(
                                                shape: const RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(15.0))),
                                                icon: Icon(
                                                  Icons.send,
                                                  color: bluegrey,
                                                  size: 20,
                                                ),
                                                onSelected: showMenuSelection,
                                                itemBuilder: (BuildContext context) =>
                                                    <PopupMenuEntry<String>>[
                                                  PopupMenuItem<String>(
                                                      child: Container(
                                                    width: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        2.2,
                                                    child: Row(
                                                      children: [
                                                        Image.asset(
                                                          "assets/job/careerssite.png",
                                                          width: 25,
                                                          height: 20,
                                                        ),
                                                        Text(
                                                          "Post to Careers Site",
                                                          style: font14.copyWith(
                                                              color: bluegrey,
                                                              fontWeight:
                                                                  FontWeight.w600),
                                                        ),
                                                      ],
                                                    ),
                                                  )),
                                                  PopupMenuItem<String>(
                                                      child: Container(
                                                    width: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        2.2,
                                                    child: Row(
                                                      children: [
                                                        Image.asset(
                                                          "assets/job/webrecruit.png",
                                                          width: 25,
                                                          height: 20,
                                                        ),
                                                        Text(
                                                          "Send to Webrecruit",
                                                          style: font14.copyWith(
                                                              color: bluegrey,
                                                              fontWeight:
                                                                  FontWeight.w600),
                                                        ),
                                                      ],
                                                    ),
                                                  )),
                                                  PopupMenuItem<String>(
                                                      child: Container(
                                                    width: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        2.2,
                                                    child: Row(
                                                      children: [
                                                        Image.asset(
                                                          "assets/job/careerssite.png",
                                                          width: 25,
                                                          height: 20,
                                                        ),
                                                        Text(
                                                          "Post to Job Boards",
                                                          style: font15.copyWith(
                                                              color: bluegrey,
                                                              fontWeight:
                                                                  FontWeight.w600),
                                                        ),
                                                      ],
                                                    ),
                                                  )),
                                                  PopupMenuItem<String>(
                                                      child: Container(
                                                    width: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        2.2,
                                                    child: Row(
                                                      children: [
                                                        Image.asset(
                                                          "assets/job/agencies.png",
                                                          width: 25,
                                                          height: 20,
                                                        ),
                                                        Text(
                                                          "Send to Agencies",
                                                          style: font15.copyWith(
                                                              color: bluegrey,
                                                              fontWeight:
                                                                  FontWeight.w600),
                                                        ),
                                                      ],
                                                    ),
                                                  )),
                                                ],
                                              ),
                                              PopupMenuButton<String>(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(15.0))),
                                                icon: Icon(
                                                  Icons.share,
                                                  color: bluegrey,
                                                  size: 20,
                                                ),
                                                onSelected: showMenuSelection,
                                                itemBuilder: (BuildContext context) =>
                                                    <PopupMenuEntry<String>>[
                                                  PopupMenuItem<String>(
                                                      child: Container(
                                                          width: MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              2.5,
                                                          child: Row(
                                                            children: [
                                                              Icon(
                                                                Icons.facebook,
                                                                size: 25,
                                                                color: Colors.blueGrey,
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text("Facebook",
                                                                  style: font14)
                                                            ],
                                                          ))),
                                                  PopupMenuItem<String>(
                                                      child: Container(
                                                          width: MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              2.5,
                                                          child: Row(
                                                            children: [
                                                              Image.asset(
                                                                "assets/job/twitter.png",
                                                                width: 25,
                                                                height: 25,
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text("Twitter",
                                                                  style:
                                                                      font14.copyWith())
                                                            ],
                                                          ))),
                                                  PopupMenuItem<String>(
                                                      child: Container(
                                                          width: MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              2.5,
                                                          child: Row(
                                                            children: [
                                                              Image.asset(
                                                                "assets/job/linkedin.png",
                                                                width: 25,
                                                                height: 25,
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text("LinkedIn",
                                                                  style:
                                                                      font14.copyWith())
                                                            ],
                                                          ))),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
           bottomNavigationBar: Material(
        elevation: 5.0,
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: 50.0,
          padding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
          alignment: Alignment.center,
          child: Container(
            width: MediaQuery.of(context).size.width - 10 * 4.0,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(width: 1.0, color: primayColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    focusColor: Colors.white,
                    value: Inputvalue,
                    underline: SizedBox(),
                    icon: Icon(
                      Icons.arrow_drop_down_circle_outlined,
                      color: primayColor, // <-- SEE HERE
                    ),
                    iconSize: 25,
                    //elevation: 5,
                    style: TextStyle(color: Colors.white),
                    iconEnabledColor: primayColor,
                    items: <String>[
                      'Sort By',
                      'Alphabetical',
                      'Posted Date',
                      'Closed Date',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: value == "Sort By"
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
                        Inputvalue = value!;
                      });
                    },
                    isExpanded: false,
                  ),
                ),
                Container(
                  width: 1.5,
                  height: 35.0,
                  color: primayColor,
                ),
                AdvancedSwitch(
                  activeChild: Text('Asc'),
                  inactiveChild: Text('Dec'),
                  enabled: true,
                  borderRadius: BorderRadius.circular(5),
                  width: 80,
                  height: 25,
                  activeColor: primayColor,
                  inactiveColor: primayColor,
                  controller: _controller,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

}
