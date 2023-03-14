import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:rocket_details/constants.dart';
import 'package:rocket_details/models/rocket_model.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold();
  // }
  late List<Welcome>? _userModel = [];

  List<dynamic> imagesUrl = [];
  Future<List<Welcome>?> getUsers() async {
    // try {
    var url = Uri.parse(ApiConstants.baseUrl);
    var response = await http.get(url);
    List<Welcome> _model = welcomeFromJson(response.body);
    final json = jsonDecode(response.body);
    if (response.statusCode == 200) {
      print(_model);
      return _model;
    }
    setState(() {
      imagesUrl = json['flickr_images'];
    });
    // } catch (e) {
    //   log(e.toString());
    // }
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _userModel = (await getUsers());
    // Future.delayed(const Duration(seconds: 1)).then((value) =>
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SpaceX Rockets'),
      ),
      body: _userModel == null || _userModel!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _userModel!.length,
              itemBuilder: (context, index) {
                return Card(
                    child: Container(
                  padding: EdgeInsets.all(16),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      // Text(_userModel![index].id.toString()),
                      Center(
                        child: Row(
                          children: [
                            const Text(
                              "Name : ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              _userModel![index].name,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: ClampingScrollPhysics(),
                        child: Row(
                          children: [
                            for (var i = 0;
                                i < _userModel![index].flickrImages.length;
                                i++) ...[
                              Container(
                                  padding: EdgeInsets.all(8),
                                  child: ClipRRect(
                                    // decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      _userModel![index].flickrImages[i],
                                      height: 110,
                                      width: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                            ],
                          ],
                        ),
                      ),

                      //               SingleChildScrollView(
                      // child: Container(
                      //     child: Container(
                      //       margin: EdgeInsets.only(top: 16),
                      //       child: ListView.builder(
                      //           itemCount: _userModel![index].flickrImages.length,
                      //           shrinkWrap: true,
                      //           physics: ClampingScrollPhysics(),
                      //           itemBuilder: (context, index) {
                      //             return
                      Column(children: [
                        Row(children: [
                          const Text(
                            "Active Status : ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            _userModel![index].active.toString(),
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ]),
                      ]),

                      // Text(_userModel![index].company),
                      Column(children: [
                        Row(children: [
                          const Text(
                            "Cost per launch : ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            _userModel![index].cost_per_launch.toString(),
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ]),
                      ]),
                      Column(children: [
                        Row(children: [
                          const Text(
                            "Success Rate percent : ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            _userModel![index].success_rate_pct.toString(),
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ]),
                      ]),

                      Column(children: [
                        Row(children: [
                          const Text(
                            "Description : ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              _userModel![index].description.toString(),
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 3,
                            ),
                          ),
                        ]),
                      ]),
                      Row(children: [
                        const Text(
                          "Wikipedia:",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () =>
                                _userModel![index].wikipedia.toString(),
                            child: Text(
                              _userModel![index].wikipedia.toString(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              style: const TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 15,
                                  color: Colors.blue),
                            ),
                          ),
                        ),
                      ]),
                      // ),
                      Column(children: [
                        Row(children: [
                          const Text(
                            "Height : ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            _userModel![index].height.meters.toString(),
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ]),
                      ]),
                      Column(children: [
                        Row(children: [
                          const Text(
                            "Diameter : ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            _userModel![index].diameter.meters.toString(),
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ]),
                      ]),

                      /// Categories
                      // SingleChildScrollView(
                      //   child: Container(
                      //     padding: EdgeInsets.symmetric(horizontal: 16),
                      //     height: 70,
                      //     child: ListView.builder(
                      //         scrollDirection: Axis.horizontal,
                      //         itemCount: imagesUrl.length,
                      //         itemBuilder: (context, index) {
                      //           final user = imagesUrl[index];

                      //           return Container(
                      //             padding: EdgeInsets.all(8),
                      //             decoration: BoxDecoration(
                      //                 borderRadius: BorderRadius.circular(8)),
                      //             child: Image.network(
                      //               _userModel![index].flickrImages[user],
                      //               height: 20,
                      //               width: 20,
                      //               fit: BoxFit.cover,
                      //             ),
                      //           );
                      //         }),
                      //   ),
                      // ),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => NextPage()));
                      //   },

                      // Column(children: [
                      //   Row(children: [
                      //     const Text(
                      //       "Success Rate percent : ",
                      //       style: TextStyle(color: Colors.black, fontSize: 18),
                      //     ),
                      //     Expanded(
                      //       child: Text(
                      //         _userModel![index].wikipedia.toString(),
                      //         style:
                      //             TextStyle(color: Colors.black, fontSize: 18),
                      //       ),
                      //     ),
                      //   ]),
                      // ]),
                    ],
                  ),
                ));
              },
            ),
    );
  }
}
