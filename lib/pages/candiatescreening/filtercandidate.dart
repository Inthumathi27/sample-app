
import 'package:demo_project/pages/candiatescreening/candidate_screening.dart';
import 'package:demo_project/pages/loginpage/loginpage.dart';
import 'package:demo_project/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class CanidateScreeningFilter extends StatefulWidget {
  const CanidateScreeningFilter({Key? key}) : super(key: key);

  @override
  State<CanidateScreeningFilter> createState() =>
      _CanidateScreeningFilterState();
}

class _CanidateScreeningFilterState extends State<CanidateScreeningFilter> {
  var holder_1 = [];

  int tabId = 1;
  bool isCheckedBrand = false;
  bool isCheckedType = false;
  bool isCheckedPackSize = false;

  Map<String, bool> continent = {
    'Continent1' : false,
    'Continent2' : false,
    'Continent3' : false,
    'Continent4' : false,
  };
  Map<String, bool> country = {
    'country1' : false,
    'country2' : false,
    'country3' : false,
    'country4' : false,
  };
  Map<String, bool> state = {
    'state1' : false,
    'state2' : false,
    'state3' : false,
    'state4' : false,
    'state5' : false,
    'state6' : false,
    'state7' : false,
    'state8' : false,
    'state9' : false,
    'state10' : false,
    'state11' : false,
    'state12' : false,
    'state13' : false,
    'state14' : false,
    'state15' : false,
    'state16' : false,
    'state17' : false,
    'state18' : false,
    'state19' : false,
    'state20' : false,
  };
  Map<String, bool> region = {
    'region1' : false,
    'region2' : false,
    'region3' : false,
    'region4' : false,
    'region5' : false,
    'region6' : false,
  };
  Map<String, bool> city = {
    'city1' : false,
    'city2' : false,
    'city3' : false,
    'city4' : false,
  };
  Map<String, bool> work_location = {
    'work location1' : false,
    'work location2' : false,
    'work location3' : false,
    'work location4' : false,
  };
  Map<String, bool> division = {
    'division1' : false,
    'division2' : false,
    'division3' : false,
    'division4' : false,
  };
  Map<String, bool> department = {
    'department1' : false,
    'department2' : false,
    'department3' : false,
    'department4' : false,
  };
  Map<String, bool> function = {
    'function1' : false,
    'function2' : false,
    'function3' : false,
    'function4' : false,
  };
  Map<String, bool> sector = {
    'sector1' : false,
    'sector2' : false,
    'sector3' : false,
    'sector4' : false,
  };
  Map<String, bool> career_level = {
    'career level1' : false,
    'career level2' : false,
    'career level3' : false,
    'career level4' : false,
  };
  Map<String, bool> experience_level = {
    'experience level1' : false,
    'experience level2' : false,
    'experience level3' : false,
    'experience level4' : false,
  };
  Map<String, bool> qualifications = {
    'qualifications1' : false,
    'qualifications2' : false,
    'qualifications3' : false,
    'qualifications4' : false,
  };
  Map<String, bool> shift = {
    'shift1' : false,
    'shift2' : false,
    'shift3' : false,
    'shift4' : false,
  };
  Map<String, bool> salary_banding = {
    'salary banding1' : false,
    'salary banding2' : false,
    'salary banding3' : false,
    'salary banding4' : false,
  };
  Map<String, bool> currency = {
    'currency1' : false,
    'currency2' : false,
    'currency3' : false,
    'currency4' : false,
  };
  Map<String, bool> payment = {
    'payment1' : false,
    'payment2' : false,
    'payment3' : false,
    'payment4' : false,
  };
  Map<String, bool> recruitment = {
    'recruitment1' : false,
    'recruitment2' : false,
    'recruitment3' : false,
    'recruitment4' : false,
  };
  Map<String, bool> created_by = {
    'created by1' : false,
    'created by2' : false,
    'created by3' : false,
    'created by4' : false,
  };
  Map<String, bool> brand = {
    'brand1' : false,
    'brand2' : false,
    'brand3' : false,
    'brand4' : false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Additional Filters",
          style: font16.copyWith(fontWeight: FontWeight.w600),
        ),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width/3,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabId = 1;
                      });
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: tabId == 1
                            ?whiteColor
                            : containercolor,
                      ),
                      child: const Center(child: Text('Continent')),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: lightgrey,
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabId = 2;
                      });
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: tabId == 2
                            ? Colors.white
                            : containercolor,
                      ),
                      child: const Center(child: Text('Country')),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: lightgrey,
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabId = 3;
                      });
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: tabId == 3
                            ? Colors.white
                            : containercolor,
                      ),
                      child: const Center(child: Text('State')),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: lightgrey,
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabId = 4;
                      });
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: tabId == 4
                            ? Colors.white
                            : containercolor,
                      ),
                      child: const Center(child: Text('Region')),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: lightgrey,
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabId = 5;
                      });
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: tabId == 5
                            ? Colors.white
                            : containercolor,
                      ),
                      child: const Center(child: Text('City')),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: lightgrey,
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabId = 6;
                      });
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: tabId ==6
                            ? Colors.white
                            : containercolor,
                      ),
                      child: const Center(child: Text('Work Location')),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: lightgrey,
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabId = 7;
                      });
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: tabId == 7
                            ? Colors.white
                            : containercolor,
                      ),
                      child: const Center(child: Text('Division')),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: lightgrey,
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabId = 8;
                      });
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: tabId == 8
                            ? Colors.white
                            :containercolor,
                      ),
                      child: const Center(child: Text('Department')),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: lightgrey,
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabId = 9;
                      });
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: tabId == 9
                            ? Colors.white
                            :containercolor,
                      ),
                      child: const Center(child: Text('Function')),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: lightgrey,
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabId =10;
                      });
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: tabId == 10
                            ? Colors.white
                            :containercolor,
                      ),
                      child: const Center(child: Text('Sector')),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: lightgrey,
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabId = 11;
                      });
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: tabId == 11
                            ? Colors.white
                            :containercolor,
                      ),
                      child: const Center(child: Text('Career Level')),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: lightgrey,
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabId = 12;
                      });
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: tabId == 12
                            ? Colors.white
                            : containercolor,
                      ),
                      child: const Center(child: Text('Experience Level')),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: lightgrey,
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabId = 13;
                      });
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: tabId ==13
                            ? Colors.white
                            : containercolor,
                      ),
                      child: const Center(child: Text('Qualifications')),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: lightgrey,
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabId = 14;
                      });
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: tabId == 14
                            ? Colors.white
                            :containercolor,
                      ),
                      child: const Center(child: Text('Shift')),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: lightgrey,
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabId = 15;
                      });
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: tabId == 15
                            ? Colors.white
                            : containercolor,
                      ),
                      child: const Center(child: Text('Salary Banding')),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: lightgrey,
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabId = 16;
                      });
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: tabId == 16
                            ? Colors.white
                            : containercolor,
                      ),
                      child: const Center(child: Text('Currency')),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: lightgrey,
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabId = 17;
                      });
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: tabId == 17
                            ? Colors.white
                            :containercolor
                      ),
                      child: const Center(child: Text('Payment')),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: lightgrey,
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabId = 18;
                      });
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: tabId == 18
                            ? Colors.white
                            : containercolor,
                      ),
                      child: const Center(child: Text('Recruitment')),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: lightgrey,
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabId = 19;
                      });
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: tabId == 19
                            ? Colors.white
                            : containercolor,
                      ),
                      child: const Center(child: Text('Created By')),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: lightgrey,
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabId = 20;
                      });
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: tabId == 20
                            ? Colors.white
                            : containercolor,
                      ),
                      child: const Center(child: Text('Brand')),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: lightgrey,
                    width: MediaQuery.of(context).size.width/3,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(

              child: Column(
                children: [
                  heightSpace,
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      style: font14,
                      cursorHeight: 20,
                      cursorColor: lightgrey,
                      decoration: InputDecoration(
                        hintText: "Search",
                        fillColor: filtercontainercolor,
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
                  tabId == 1? ListView(
               scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: continent.keys.map((String key) {
                  return  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CheckboxListTile(
                      value: continent[key],
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor: primayColor,
                      checkColor: Colors.white,
                      onChanged: (value) {
                        setState(() {
                          continent[key] = value!;
                        });
                      },
                      title:Text(key),
                    ),
                  );
                }).toList(),
              ):
                  tabId == 2? ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: country.keys.map((String key) {
                      return  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CheckboxListTile(
                          value: country[key],
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: primayColor,
                          checkColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              country[key] = value!;
                            });
                          },
                          title:Text(key),
                        ),
                      );
                    }).toList(),
                  ):
                  tabId == 3? ListView(
                    // scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: state.keys.map((String key) {
                      return  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CheckboxListTile(
                          value: state[key],
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: primayColor,
                          checkColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              state[key] = value!;
                            });
                          },
                          title:Text(key),
                        ),
                      );
                    }).toList(),
                  ):
                  tabId == 4? ListView(
                    // scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: region.keys.map((String key) {
                      return  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CheckboxListTile(
                          value: region[key],
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: primayColor,
                          checkColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              region[key] = value!;
                            });
                          },
                          title:Text(key),
                        ),
                      );
                    }).toList(),
                  ):
                  tabId == 5? ListView(
                    // scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: city.keys.map((String key) {
                      return  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CheckboxListTile(
                          value: city[key],
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: primayColor,
                          checkColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              city[key] = value!;
                            });
                          },
                          title:Text(key),
                        ),
                      );
                    }).toList(),
                  ):
                  tabId == 6? ListView(
                    // scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: work_location.keys.map((String key) {
                      return  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CheckboxListTile(
                          value: work_location[key],
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: primayColor,
                          checkColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              work_location[key] = value!;
                            });
                          },
                          title:Text(key),
                        ),
                      );
                    }).toList(),
                  ):
                  tabId == 7? ListView(
                    // scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: division.keys.map((String key) {
                      return  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CheckboxListTile(
                          value: division[key],
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: primayColor,
                          checkColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              division[key] = value!;
                            });
                          },
                          title:Text(key),
                        ),
                      );
                    }).toList(),
                  ):
                  tabId == 8? ListView(
                    // scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: department.keys.map((String key) {
                      return  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CheckboxListTile(
                          value: department[key],
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: primayColor,
                          checkColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              department[key] = value!;
                            });
                          },
                          title:Text(key),
                        ),
                      );
                    }).toList(),
                  ):
                  tabId == 9? ListView(
                    // scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: function.keys.map((String key) {
                      return  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CheckboxListTile(
                          value: function[key],
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: primayColor,
                          checkColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              function[key] = value!;
                            });
                          },
                          title:Text(key),
                        ),
                      );
                    }).toList(),
                  ):
                  tabId == 10? ListView(
                    // scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: sector.keys.map((String key) {
                      return  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CheckboxListTile(
                          value: sector[key],
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: primayColor,
                          checkColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              sector[key] = value!;
                            });
                          },
                          title:Text(key),
                        ),
                      );
                    }).toList(),
                  ):
                  tabId == 11? ListView(
                    // scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: career_level.keys.map((String key) {
                      return  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CheckboxListTile(
                          value: career_level[key],
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: primayColor,
                          checkColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              career_level[key] = value!;
                            });
                          },
                          title:Text(key),
                        ),
                      );
                    }).toList(),
                  ):
                  tabId == 12? ListView(
                    // scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: experience_level.keys.map((String key) {
                      return  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CheckboxListTile(
                          value: experience_level[key],
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: primayColor,
                          checkColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              experience_level[key] = value!;
                            });
                          },
                          title:Text(key),
                        ),
                      );
                    }).toList(),
                  ):
                  tabId == 13? ListView(
                    // scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: qualifications.keys.map((String key) {
                      return  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CheckboxListTile(
                          value: qualifications[key],
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: primayColor,
                          checkColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              qualifications[key] = value!;
                            });
                          },
                          title:Text(key),
                        ),
                      );
                    }).toList(),
                  ):
                  tabId == 14? ListView(
                    // scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: shift.keys.map((String key) {
                      return  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CheckboxListTile(
                          value: shift[key],
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: primayColor,
                          checkColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              shift[key] = value!;
                            });
                          },
                          title:Text(key),
                        ),
                      );
                    }).toList(),
                  ):
                  tabId == 15? ListView(
                    // scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: salary_banding.keys.map((String key) {
                      return  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CheckboxListTile(
                          value: salary_banding[key],
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: primayColor,
                          checkColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              salary_banding[key] = value!;
                            });
                          },
                          title:Text(key),
                        ),
                      );
                    }).toList(),
                  ):
                  tabId == 16? ListView(
                    // scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: currency.keys.map((String key) {
                      return  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CheckboxListTile(
                          value: currency[key],
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: primayColor,
                          checkColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              currency[key] = value!;
                            });
                          },
                          title:Text(key),
                        ),
                      );
                    }).toList(),
                  ):
                  tabId == 17? ListView(
                    // scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: payment.keys.map((String key) {
                      return  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CheckboxListTile(
                          value: payment[key],
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: primayColor,
                          checkColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              payment[key] = value!;
                            });
                          },
                          title:Text(key),
                        ),
                      );
                    }).toList(),
                  ):
                  tabId == 18? ListView(
                    // scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: recruitment.keys.map((String key) {
                      return  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CheckboxListTile(
                          value: recruitment[key],
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: primayColor,
                          checkColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              recruitment[key] = value!;
                            });
                          },
                          title:Text(key),
                        ),
                      );
                    }).toList(),
                  ):
                  tabId == 19? ListView(
                    // scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: created_by.keys.map((String key) {
                      return  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CheckboxListTile(
                          value: created_by[key],
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: primayColor,
                          checkColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              created_by[key] = value!;
                            });
                          },
                          title:Text(key),
                        ),
                      );
                    }).toList(),
                  ):
                  tabId == 20? ListView(
                    // scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: brand.keys.map((String key) {
                      return  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CheckboxListTile(
                          value: brand[key],
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: primayColor,
                          checkColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              brand[key] = value!;
                            });
                          },
                          title:Text(key),
                        ),
                      );
                    }).toList(),
                  ):
                  SizedBox()

                  // else if (tabId == 2)
                  //   _buildBrandContent()
                  // else if (tabId == 3)
                  //   _buildTypeContent()
                  // else if (tabId == 4)
                  //   _buildPackSizeContent(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: MaterialButton(
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: const Candidate_Screening_Page()));
        },
        elevation: 5.0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: whiteColor,
          ),
          width: MediaQuery.of(context).size.width,
          height: 50.0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: primayColor,
            ),
            width: MediaQuery.of(context).size.width / 1.2,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                "Apply Filter",
                style: font16.copyWith(
                    color: whiteColor, fontWeight: FontWeight.w600),
              )),
            ),
          ),
        ),
      ),
    );
  }

Widget _buildcontinet(){
  Map<String, bool> requistions = {
    'Requested' : false,
    'Denied' : false,
  };

  return  ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: requistions.keys.map((String key) {
        return  Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration:BoxDecoration(
              color: Color(0xffd9edf7),
              borderRadius: BorderRadius.circular(10),
            ),
            child: CheckboxListTile(
              title:  Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xfff0ad4e),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("5",style: font14.copyWith(color: whiteColor),),
                    ),
                  ),
                  widthSpace,
                  Text(key),
                ],
              ),
              value: requistions[key],
              activeColor: primayColor,
              checkColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  requistions[key] = value!;
                });
              },
            ),
          ),
        );
      }).toList(),
    );
}
  // Widget _buildSortByContent() {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Row(
  //         children: [
  //           Checkbox(
  //             checkColor: Colors.white,
  //             shape: const CircleBorder(),
  //             activeColor: primayColor,
  //             value: isChecked,
  //             onChanged: (bool? value) {
  //               setState(() {
  //                 isChecked = value!;
  //               });
  //             },
  //           ),
  //           const Text(
  //             'Price (Low to High)',
  //           ),
  //         ],
  //       ),
  //       Row(
  //         children: [
  //           Checkbox(
  //             checkColor: Colors.white,
  //             shape: const CircleBorder(),
  //             activeColor: primayColor,
  //             value: isChecked,
  //             onChanged: (bool? value) {
  //               setState(() {
  //                 isChecked = value!;
  //               });
  //             },
  //           ),
  //           const Text(
  //             'Price (High to Low)',
  //           ),
  //         ],
  //       ),
  //       Row(
  //         children: [
  //           Checkbox(
  //             checkColor: Colors.white,
  //             shape: const CircleBorder(),
  //             activeColor: primayColor,
  //             value: isChecked,
  //             onChanged: (bool? value) {
  //               setState(() {
  //                 isChecked = value!;
  //               });
  //             },
  //           ),
  //           const Text(
  //             'Popilarity',
  //           ),
  //         ],
  //       ),
  //       Row(
  //         children: [
  //           Checkbox(
  //             checkColor: Colors.white,
  //             shape: const CircleBorder(),
  //             activeColor: primayColor,
  //             value: isChecked,
  //             onChanged: (bool? value) {
  //               setState(() {
  //                 isChecked = value!;
  //               });
  //             },
  //           ),
  //           const Text(
  //             'Discount',
  //           ),
  //         ],
  //       ),
  //     ],
  //   );
  // }

  Widget _buildBrandContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedBrand,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedBrand = value!;
                });
              },
            ),
            const Text(
              'Zama Organics (6)',
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTypeContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedType,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedType = value!;
                });
              },
            ),
            const Text(
              'Capsicum (6)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedType,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedType = value!;
                });
              },
            ),
            const Text(
              'Onion (6)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedType,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedType = value!;
                });
              },
            ),
            const Text(
              'Lettuce (6)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedType,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedType = value!;
                });
              },
            ),
            const Text(
              'Potato (6)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedType,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedType = value!;
                });
              },
            ),
            const Text(
              'Cabbage (6)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedType,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedType = value!;
                });
              },
            ),
            const Text(
              'Chill (6)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedType,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedType = value!;
                });
              },
            ),
            const Text(
              'Garlic (6)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedType,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedType = value!;
                });
              },
            ),
            const Text(
              'Cucumber (6)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedType,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedType = value!;
                });
              },
            ),
            const Text(
              'Tomato (6)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedType,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedType = value!;
                });
              },
            ),
            const Text(
              'Capsicum (6)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedType,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedType = value!;
                });
              },
            ),
            const Text(
              'Bell Paper (6)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedType,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedType = value!;
                });
              },
            ),
            const Text(
              'Cluster Bean (6)',
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPackSizeContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedPackSize,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedPackSize = value!;
                });
              },
            ),
            const Text(
              '250 g (22)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedPackSize,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedPackSize = value!;
                });
              },
            ),
            const Text(
              '150 g (12)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedPackSize,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedPackSize = value!;
                });
              },
            ),
            const Text(
              '300 g (21)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedPackSize,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedPackSize = value!;
                });
              },
            ),
            const Text(
              '500 g (16)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedPackSize,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedPackSize = value!;
                });
              },
            ),
            const Text(
              '200 g (2)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedPackSize,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedPackSize = value!;
                });
              },
            ),
            const Text(
              '350 g (24)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedPackSize,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedPackSize = value!;
                });
              },
            ),
            const Text(
              '600 g (30)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedPackSize,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedPackSize = value!;
                });
              },
            ),
            const Text(
              '350 g (06)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedPackSize,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedPackSize = value!;
                });
              },
            ),
            const Text(
              '450 g (10)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedPackSize,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedPackSize = value!;
                });
              },
            ),
            const Text(
              '700 g (22)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedPackSize,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedPackSize = value!;
                });
              },
            ),
            const Text(
              '800 g (14)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedPackSize,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedPackSize = value!;
                });
              },
            ),
            const Text(
              '280 g (07)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedPackSize,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedPackSize = value!;
                });
              },
            ),
            const Text(
              '350 g (16)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedPackSize,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedPackSize = value!;
                });
              },
            ),
            const Text(
              '200 g (2)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedPackSize,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedPackSize = value!;
                });
              },
            ),
            const Text(
              '250 g (18)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedPackSize,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedPackSize = value!;
                });
              },
            ),
            const Text(
              '900 g (36)',
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: primayColor,
              value: isCheckedPackSize,
              onChanged: (bool? value) {
                setState(() {
                  isCheckedPackSize = value!;
                });
              },
            ),
            const Text(
              '250 g (08)',
            ),
          ],
        ),
      ],
    );
  }
}
