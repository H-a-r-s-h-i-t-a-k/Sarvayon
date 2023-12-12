// import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:pro/common/content_search.dart';
import 'package:pro/common/search.dart';
import 'package:pro/constants/global_box.dart';
import 'package:pro/module/home-screens/widgetss/TopCato.dart';
import 'package:pro/module/home-screens/widgetss/address.dart';
import 'package:pro/module/home-screens/widgetss/carousal.dart';
import 'package:pro/module/home-screens/widgetss/deal_of_the_day.dart';
import 'package:provider/provider.dart';
import 'package:rive/rive.dart';

import '../../providers/user_provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    String userSelected;
    bool search = false;
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: search ? Size.fromHeight(180) : Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: Global_Box.appBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(left: 15),
                  child: Material(
                    borderRadius: BorderRadius.circular(7),
                    elevation: 1,
                    child: TypeAheadField(
                      suggestionsBoxDecoration: SuggestionsBoxDecoration(
                        elevation: 4,
                        borderRadius: BorderRadius.all(
                          Radius.circular(7),
                        ),
                        color: Colors.white,
                      ),

                      debounceDuration: Duration(milliseconds: 400),
                      suggestionsCallback: (pattern) {
                        return ContentSearch.getSuggestion(pattern);
                      },
                      onSuggestionSelected: (String suggestion) {
                        setState(() {
                          userSelected = suggestion;
                        });
                      },
                      itemBuilder: (BuildContext context, String suggestion) {
                        return Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsets.all(6.0),
                                child: Text(
                                  suggestion,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      noItemsFoundBuilder: (context) {
                        return const Padding(
                          padding: EdgeInsets.only(left: 6),
                          child: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 25,
                          ),
                        );
                      },
                      textFieldConfiguration: TextFieldConfiguration(
                        decoration: InputDecoration(
                          prefixIcon: InkWell(
                            onTap: () {},
                            child: const Padding(
                              padding: EdgeInsets.only(left: 6),
                              child: Icon(
                                Icons.search,
                                color: Colors.black,
                                size: 25,
                              ),
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.only(top: 10),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(7),
                            ),
                            borderSide: BorderSide(
                                color: Color.fromARGB(130, 38, 131, 212)),
                          ),
                          hintText:
                              "Search for Medicines/Clinic/LabTest/Doctors/ ",
                        ),
                      ),

                      // decoration: InputDecoration(
                      //   prefixIcon: InkWell(
                      //     onTap: () {
                      //       setState(() {
                      //         search = true;
                      //         setState(() {});
                      //       });
                      //       SearchAuto();
                      //       search = false;
                      //       setState(() {});
                      //     },
                      //     child: const Padding(
                      //       padding: EdgeInsets.only(left: 6),
                      //       child: Icon(
                      //         Icons.search,
                      //         color: Colors.black,
                      //         size: 25,
                      //       ),
                      //     ),
                      //   ),
                      //   filled: true,
                      //   fillColor: Colors.white,
                      //   contentPadding: const EdgeInsets.only(top: 10),
                      //   border: const OutlineInputBorder(
                      //     borderRadius: BorderRadius.all(
                      //       Radius.circular(7),
                      //     ),
                      //     borderSide: BorderSide(
                      //         color: Color.fromARGB(130, 38, 131, 212)),
                      //   ),
                      //   hintText:
                      //       "Search for Medicines/Clinic/LabTest/Doctors/ ",
                      // ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 42,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Padding(
                  padding: EdgeInsets.only(right: 1),
                  child: Icon(
                    Icons.mic,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: const Column(
          children: [
            AddressBox(),
            SizedBox(
              height: 10,
            ),
            CarouselImage(),
            SizedBox(
              height: 10,
            ),
            TopCateg(),
            DealOfTheDay(),
          ],
        ),
      ),
    );
  }
}
