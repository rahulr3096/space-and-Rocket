import 'package:flutter/material.dart';
import 'package:rocket_details/constants.dart';
import 'package:rocket_details/models/rocket_model.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rocket_details/views/next_page.dart';
// import 'package:rest_api_example/model/user_model.dart';
// import 'package:rest_api_example/services/api_service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                              "Name:",
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
                      Column(children: [
                        Row(children: [
                          const Text(
                            "Country:",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              _userModel![index].country,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                              textAlign: TextAlign.start,
                              maxLines: 1,
                            ),
                          ),
                        ]),
                      ]),

                      // Text(_userModel![index].company),
                      Column(children: [
                        Row(children: [
                          const Text(
                            "Engines:",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            _userModel![index].engines.number.toString(),
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ]),
                      ]),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NextPage()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 16),
                          child: ClipRRect(
                            // decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),

                            child: Image.network(
                              _userModel![index].flickrImages[0],
                              height: 250,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ));
              },
            ),
    );
  }
}
