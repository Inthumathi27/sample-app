
import 'package:demo_project/pages/candiatescreening/candidate_listing_screening.dart';
import 'package:demo_project/pages/candiatescreening/filtercandidate.dart';
import 'package:demo_project/utils/constant.dart';
import 'package:demo_project/widget/switchwidget.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class jobdetails {
  String? jobtitle;
  String? Industrytype;
  String? PostedDate;
  String? Deadline;
  String? JobReference;
  String? location;

  jobdetails(
      {this.jobtitle,
      this.Industrytype,
      this.Deadline,
      this.PostedDate,
      this.JobReference,
      this.location});
}

class Application {
  String? applicationName;
  String? counter;

  Application({this.applicationName, this.counter});
}

class Candidate_Screening_Page extends StatefulWidget {
  const Candidate_Screening_Page({Key? key}) : super(key: key);

  @override
  State<Candidate_Screening_Page> createState() =>
      _Candidate_Screening_PageState();
}

class _Candidate_Screening_PageState extends State<Candidate_Screening_Page>
    with SingleTickerProviderStateMixin {
  List jobList = [
    jobdetails(
      jobtitle: "Testing",
      Industrytype: "IT Industry",
      Deadline: "August 22,2022",
      JobReference: "021554",
      PostedDate: "July 22,2022",
      location: "United Kingdom",
    ),
    jobdetails(
      jobtitle: "Biology Teacher",
      Industrytype: "Teaching Industry",
      Deadline: "August 11,2022",
      PostedDate: "July 11,2022",
      JobReference: "54235",
      location: "United Kingdom",
    ),
    jobdetails(
      jobtitle: "English Professor",
      Industrytype: "Teaching Industry",
      Deadline: "August 11,2022",
      PostedDate: "July 11,2022",
      JobReference: "074324",
      location: "United Kingdom",
    ),
    jobdetails(
      jobtitle: "English Professor",
      Industrytype: "Teaching Industry",
      Deadline: "August 11,2022",
      PostedDate: "June 11,2022",
      JobReference: "8672",
      location: "United Kingdom",
    ),
  ];

  List applicationList = [
    Application(
      applicationName: "Total Applicants",
      counter: " 5",
    ),
    Application(
      applicationName: "New Applicants",
      counter: "12",
    ),
    Application(
      applicationName: "Interview",
      counter: "15",
    ),
    Application(
      applicationName: "Hiried",
      counter: "35",
    ),
    Application(
      applicationName: "Rejected",
      counter: "205",
    ),
    Application(
      applicationName: "Offered",
      counter: "1254",
    ),
  ];

  String Inputvalue = "Alphabetical";
  final controller = ValueNotifier<bool>(false);
  // bool containerpress = false;

  bool onpress = false;

  void showWidget() {
    setState(() {
      onpress = true;
    });
  }

  void hideWidget() {
    setState(() {
      onpress = false;
    });
  }

  TabController? _tabController;

  List<Widget> tabs = [
    Tab(
        child: Column(
      children: [
        Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(50),
              color: containercolor1,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Text(
                "5",
                style: font11,
              ),
            )),
        SizedBox(
          width: 3,
        ),
        Text(
          "Active jobs",
          style: font13,
        ),
      ],
    )),
    Tab(
        child: Column(
      children: [
        Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(50),
              color: containercolor1,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Text(
                "15",
                style: font11,
              ),
            )),
        SizedBox(
          width: 3,
        ),
        Text(
          "Expired jobs",
          style: font13,
        ),
      ],
    )),
    Tab(
        child: Column(
      children: [
        Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(50),
              color: containercolor1,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Text(
                "115",
                style: font11,
              ),
            )),
        SizedBox(
          width: 3,
        ),
        Text(
          "Archived jobs",
          style: font13,
        ),
      ],
    )),
  ];
  int tabcolor = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Create TabController for getting the index of current tab
    _tabController = TabController(
      length: tabs.length,
      initialIndex: 0,
      vsync: this,
    );
    // containerpress == true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodycolor,
      appBar: AppBar(
          title: Text(
            "My Candiates",
            style: font16.copyWith(fontWeight: FontWeight.w600),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.filter_list,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const CanidateScreeningFilter()));
              },
            )
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 15),
                  child: TextField(
                    style: font14,
                    cursorHeight: 20,
                    cursorColor: lightgrey,
                    decoration: InputDecoration(
                      hintText: "Candidate Name",
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
                      Icons.sort,
                      color: primayColor, // <-- SEE HERE
                    ),
                    iconSize: 25,
                    //elevation: 5,
                    style: TextStyle(color: Colors.white),
                    iconEnabledColor: primayColor,
                    items: <String>[
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
                  inactiveChild: Text('Des'),
                  enabled: true,
                  borderRadius: BorderRadius.circular(5),
                  width: 80,
                  height: 25,
                  activeColor: primayColor,
                  inactiveColor: primayColor,
                  controller: controller,
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              heightSpace,
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Container(
                  height: 65,
                  decoration: BoxDecoration(
                    color: containerblueColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TabBar(
                    controller: _tabController,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: primayColor),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    onTap: (index) {
                      print(index);
                      setState(() {
                        tabcolor = index;
                      });
                    },
                    tabs: [
                      Tab(
                          child: Center(
                            child: Column(
                        children: [
                            Text(
                              "5",
                              style: font18.copyWith(color: tabcolor ==0?whiteColor:greyColor),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Active jobs",
                              style: font14.copyWith(color: tabcolor ==0?whiteColor:greyColor),
                            ),
                        ],
                      ),
                          )),
                      Tab(
                          child: Column(
                        children: [
                          Text(
                            "15",
                            style:font18.copyWith(color: tabcolor ==1?whiteColor:greyColor),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "Expired jobs",
                            style: font14.copyWith(color: tabcolor ==1?whiteColor:greyColor),
                          ),
                        ],
                      )),
                      Tab(
                          child: Column(
                        children: [
                          Text(
                            "115",
                            style:font18.copyWith(color: tabcolor ==2?whiteColor:greyColor),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "Archived jobs",
                            style: font14.copyWith(color: tabcolor ==2?whiteColor:greyColor),
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
              ),
              ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: jobList.length,
                itemExtent: onpress == false ? 200 : 440.0,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: candidate_Listing()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: whiteColor,
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SingleChildScrollView(
                              physics: NeverScrollableScrollPhysics(),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  onpress == false
                                      ? InkWell(
                                          onTap: () {
                                            showWidget();
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                jobList[index].jobtitle,
                                                style: font16.copyWith(
                                                  color: Color(0xff3b3b3b),
                                                  fontWeight: FontWeight.w600,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                              Icon(Icons
                                                  .keyboard_arrow_down_sharp),
                                            ],
                                          ),
                                        )
                                      : InkWell(
                                          onTap: () {
                                            hideWidget();
                                            print(onpress);
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                jobList[index].jobtitle,
                                                style: font16.copyWith(
                                                  color: Color(0xff3b3b3b),
                                                  fontWeight: FontWeight.w600,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                              Icon(
                                                  Icons.keyboard_arrow_up_sharp)
                                            ],
                                          ),
                                        ),
                                  heightSpace,
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
                                  heightSpace,
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
                                            style: font14,
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
                                            jobList[index].JobReference,
                                            style: font14,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  heightSpace,
                                  heightSpace,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Posted Date:\n${jobList[index].PostedDate}',
                                        style:
                                            font14.copyWith(color: lightgrey),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        'Closed Date:\n${jobList[index].Deadline}',
                                        style: font14.copyWith(
                                          color: lightgrey,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  heightSpace,
                                  onpress == true ? heightSpace : SizedBox(),
                                  heightSpace,
                                  Visibility(
                                    maintainSize: true,
                                    maintainAnimation: true,
                                    maintainState: true,
                                    visible: onpress,
                                    child: GridView.builder(
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                childAspectRatio: 0.7 / 0.6,
                                                crossAxisCount: 3,
                                                crossAxisSpacing: 5,
                                                mainAxisSpacing: 5),
                                        itemCount: applicationList.length,
                                        primary: false,
                                        shrinkWrap: true,
                                        itemBuilder: (BuildContext ctx, index) {
                                          return Container(
                                              decoration: const BoxDecoration(
                                                color: Color(0xff8dd7f7),
                                                // gradient: LinearGradient(
                                                //     begin: Alignment.centerLeft,
                                                //     end: Alignment.centerRight,
                                                //     colors: [
                                                //       Color(0xFF79c9da),
                                                //       Color(0xFF4bc3db),
                                                //       Color(0xFF21b4d2),
                                                //       Color(0xFF0cadce),
                                                //     ]),
                                              ),
                                              child: Column(
                                                children: [
                                                  heightSpace,
                                                  Container(
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xFF297ca8),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5.0),
                                                        child: Text(
                                                          applicationList[index]
                                                              .counter
                                                              .toString(),
                                                          style: font16.copyWith(
                                                              color: whiteColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  heightSpace,
                                                  Text(
                                                    applicationList[index]
                                                        .applicationName,
                                                    style: font14.copyWith(
                                                        color:
                                                            Color(0xFF297ca8),
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ));
                                        }),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
