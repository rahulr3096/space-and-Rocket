import 'dart:convert';

// List<RocketModel> RocketModelFromJson(String str) => List<RocketModel>.from(
//     json.decode(str).map((x) => RocketModel.fromJson(x)));

// String RocketModelToJson(List<RocketModel> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class RocketModel {
//   RocketModel({
//     required this.height,
//     required this.diameter,
//     required this.mass,
//     required this.firstStage,
//     required this.secondStage,
//     required this.engines,
//     required this.landingLegs,
//     required this.payloadWeights,
//     required this.flickrImages,
//     required this.name,
//     required this.type,
//     required this.active,
//     required this.stages,
//     required this.boosters,
//     required this.costPerLaunch,
//     required this.successRatePct,
//     required this.firstFlight,
//     required this.country,
//     required this.company,
//     required this.wikipedia,
//     required this.description,
//     required this.id,
//   });

//   Height height;
//   Diameter diameter;
//   Mass mass;
//   FirstStage firstStage;
//   SecondStage secondStage;
//   Engines engines;
//   LandingLegs landingLegs;
//   List<PayloadWeight> payloadWeights;
//   List<String> flickrImages;
//   String name;
//   String type;
//   bool active;
//   int stages;
//   int boosters;
//   int costPerLaunch;
//   int successRatePct;
//   DateTime firstFlight;
//   String country;
//   String company;
//   String wikipedia;
//   String description;
//   String id;

//   factory RocketModel.fromJson(Map<String, dynamic> json) => RocketModel(
//         height: Height.fromJson(json["height"]),
//         diameter: Diameter.fromJson(json["diameter"]),
//         mass: Mass.fromJson(json["mass"]),
//         firstStage: FirstStage.fromJson(json["first_stage"]),
//         secondStage: SecondStage.fromJson(json["second_stage"]),
//         engines: Engines.fromJson(json["engines"]),
//         landingLegs: LandingLegs.fromJson(json["landing_legs"]),
//         payloadWeights: List<PayloadWeight>.from(
//             json["payload_weights"].map((x) => PayloadWeight.fromJson(x))),
//         flickrImages: List<String>.from(json["flickr_images"].map((x) => x)),
//         name: json["name"],
//         type: json["type"],
//         active: json["active"],
//         stages: json["stages"],
//         boosters: json["boosters"],
//         costPerLaunch: json["cost_per_launch"],
//         successRatePct: json["success_rate_pct"],
//         firstFlight: DateTime.parse(json["first_flight"]),
//         country: json["country"],
//         company: json["company"],
//         wikipedia: json["wikipedia"],
//         description: json["description"],
//         id: json["id"],
//       );

//   Map<String, dynamic> toJson() => {
//         "height": height.toJson(),
//         "diameter": diameter.toJson(),
//         "mass": mass.toJson(),
//         "first_stage": firstStage.toJson(),
//         "second_stage": secondStage.toJson(),
//         "engines": engines.toJson(),
//         "landing_legs": landingLegs.toJson(),
//         "payload_weights":
//             List<dynamic>.from(payloadWeights.map((x) => x.toJson())),
//         "flickr_images": List<dynamic>.from(flickrImages.map((x) => x)),
//         "name": name,
//         "type": type,
//         "active": active,
//         "stages": stages,
//         "boosters": boosters,
//         "cost_per_launch": costPerLaunch,
//         "success_rate_pct": successRatePct,
//         "first_flight":
//             "${firstFlight.year.toString().padLeft(4, '0')}-${firstFlight.month.toString().padLeft(2, '0')}-${firstFlight.day.toString().padLeft(2, '0')}",
//         "country": country,
//         "company": company,
//         "wikipedia": wikipedia,
//         "description": description,
//         "id": id,
//       };
// }

// class Height {
//   Height({
//     required this.meters,
//     required this.feet,
//   });

//   double meters;
//   double feet;

//   factory Height.fromJson(Map<String, dynamic> json) => Height(
//         meters: json["meters"]?.toDouble(),
//         feet: json["feet"]?.toDouble(),
//       );

//   Map<String, dynamic> toJson() => {
//         "meters": meters,
//         "feet": feet,
//       };
// }

// class Diameter {
//   Diameter({
//     required this.meters,
//     required this.feet,
//   });

//   double meters;
//   double feet;

//   factory Diameter.fromJson(Map<String, dynamic> json) => Diameter(
//         meters: json["meters"]?.toDouble(),
//         feet: json["feet"]?.toDouble(),
//       );

//   Map<String, dynamic> toJson() => {
//         "meters": meters,
//         "feet": feet,
//       };
// }

// class Engines {
//   Engines({
//     this.isp,
//     this.thrustSeaLevel,
//     this.thrustVacuum,
//     this.number,
//     this.type,
//     this.version,
//     this.layout,
//     this.engineLossMax,
//     this.propellant1,
//     this.propellant2,
//     this.thrustToWeight,
//   });

//   Isp? isp;
//   Thrust? thrustSeaLevel;
//   Thrust? thrustVacuum;
//   int? number;
//   String? type;
//   String? version;
//   String? layout;
//   int? engineLossMax;
//   String? propellant1;
//   String? propellant2;
//   double? thrustToWeight;

//   factory Engines.fromJson(Map<String, dynamic> json) => Engines(
//         isp: json["isp"] == null ? null : Isp.fromJson(json["isp"]),
//         thrustSeaLevel: json["thrust_sea_level"] == null
//             ? null
//             : Thrust.fromJson(json["thrust_sea_level"]),
//         thrustVacuum: json["thrust_vacuum"] == null
//             ? null
//             : Thrust.fromJson(json["thrust_vacuum"]),
//         number: json["number"],
//         type: json["type"],
//         version: json["version"],
//         layout: json["layout"],
//         engineLossMax: json["engine_loss_max"],
//         propellant1: json["propellant_1"],
//         propellant2: json["propellant_2"],
//         thrustToWeight: json["thrust_to_weight"]?.toDouble(),
//       );

//   Map<String, dynamic> toJson() => {
//         "isp": isp?.toJson(),
//         "thrust_sea_level": thrustSeaLevel?.toJson(),
//         "thrust_vacuum": thrustVacuum?.toJson(),
//         "number": number,
//         "type": type,
//         "version": version,
//         "layout": layout,
//         "engine_loss_max": engineLossMax,
//         "propellant_1": propellant1,
//         "propellant_2": propellant2,
//         "thrust_to_weight": thrustToWeight,
//       };
// }

// class Isp {
//   Isp({
//     required this.seaLevel,
//     required this.vacuum,
//   });

//   int seaLevel;
//   int vacuum;

//   factory Isp.fromJson(Map<String, dynamic> json) => Isp(
//         seaLevel: json["sea_level"],
//         vacuum: json["vacuum"],
//       );

//   Map<String, dynamic> toJson() => {
//         "sea_level": seaLevel,
//         "vacuum": vacuum,
//       };
// }

// class Thrust {
//   Thrust({
//     this.kN,
//     this.lbf,
//   });

//   int? kN;
//   int? lbf;

//   factory Thrust.fromJson(Map<String, dynamic> json) => Thrust(
//         kN: json["kN"],
//         lbf: json["lbf"],
//       );

//   Map<String, dynamic> toJson() => {
//         "kN": kN,
//         "lbf": lbf,
//       };
// }

// class FirstStage {
//   FirstStage({
//     required this.thrustSeaLevel,
//     required this.thrustVacuum,
//     required this.reusable,
//     required this.engines,
//     required this.fuelAmountTons,
//     this.burnTimeSec,
//   });

//   Thrust thrustSeaLevel;
//   Thrust thrustVacuum;
//   bool reusable;
//   int engines;
//   double fuelAmountTons;
//   int? burnTimeSec;

//   factory FirstStage.fromJson(Map<String, dynamic> json) => FirstStage(
//         thrustSeaLevel: Thrust.fromJson(json["thrust_sea_level"]),
//         thrustVacuum: Thrust.fromJson(json["thrust_vacuum"]),
//         reusable: json["reusable"],
//         engines: json["engines"],
//         fuelAmountTons: json["fuel_amount_tons"]?.toDouble(),
//         burnTimeSec: json["burn_time_sec"],
//       );

//   Map<String, dynamic> toJson() => {
//         "thrust_sea_level": thrustSeaLevel.toJson(),
//         "thrust_vacuum": thrustVacuum.toJson(),
//         "reusable": reusable,
//         "engines": engines,
//         "fuel_amount_tons": fuelAmountTons,
//         "burn_time_sec": burnTimeSec,
//       };
// }

// class LandingLegs {
//   LandingLegs({
//     this.number,
//     this.material,
//   });

//   int? number;
//   String? material;

//   factory LandingLegs.fromJson(Map<String, dynamic> json) => LandingLegs(
//         number: json["number"],
//         material: json["material"],
//       );

//   Map<String, dynamic> toJson() => {
//         "number": number,
//         "material": material,
//       };
// }

// class Mass {
//   Mass({
//     required this.kg,
//     required this.lb,
//   });

//   int kg;
//   int lb;

//   factory Mass.fromJson(Map<String, dynamic> json) => Mass(
//         kg: json["kg"],
//         lb: json["lb"],
//       );

//   Map<String, dynamic> toJson() => {
//         "kg": kg,
//         "lb": lb,
//       };
// }

// class PayloadWeight {
//   PayloadWeight({
//     required this.id,
//     required this.name,
//     required this.kg,
//     required this.lb,
//   });

//   String id;
//   String name;
//   int kg;
//   int lb;

//   factory PayloadWeight.fromJson(Map<String, dynamic> json) => PayloadWeight(
//         id: json["id"],
//         name: json["name"],
//         kg: json["kg"],
//         lb: json["lb"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "kg": kg,
//         "lb": lb,
//       };
// }

// class SecondStage {
//   SecondStage({
//     required this.thrust,
//     required this.payloads,
//     required this.reusable,
//     required this.engines,
//     required this.fuelAmountTons,
//     this.burnTimeSec,
//   });

//   Thrust thrust;
//   Payloads payloads;
//   bool reusable;
//   int engines;
//   double fuelAmountTons;
//   int? burnTimeSec;

//   factory SecondStage.fromJson(Map<String, dynamic> json) => SecondStage(
//         thrust: Thrust.fromJson(json["thrust"]),
//         payloads: Payloads.fromJson(json["payloads"]),
//         reusable: json["reusable"],
//         engines: json["engines"],
//         fuelAmountTons: json["fuel_amount_tons"]?.toDouble(),
//         burnTimeSec: json["burn_time_sec"],
//       );

//   Map<String, dynamic> toJson() => {
//         "thrust": thrust.toJson(),
//         "payloads": payloads.toJson(),
//         "reusable": reusable,
//         "engines": engines,
//         "fuel_amount_tons": fuelAmountTons,
//         "burn_time_sec": burnTimeSec,
//       };
// }

// class Payloads {
//   Payloads({
//     this.compositeFairing,
//     this.option1,
//   });

//   CompositeFairing? compositeFairing;
//   String? option1;

//   factory Payloads.fromJson(Map<String, dynamic> json) => Payloads(
//         compositeFairing: json["composite_fairing"] == null
//             ? null
//             : CompositeFairing.fromJson(json["composite_fairing"]),
//         option1: json["option_1"],
//       );

//   Map<String, dynamic> toJson() => {
//         "composite_fairing": compositeFairing?.toJson(),
//         "option_1": option1,
//       };
// }

// class CompositeFairing {
//   CompositeFairing({
//     required this.height,
//     required this.diameter,
//   });

//   Diameter height;
//   Diameter diameter;

//   factory CompositeFairing.fromJson(Map<String, dynamic> json) =>
//       CompositeFairing(
//         height: Diameter.fromJson(json["height"]),
//         diameter: Diameter.fromJson(json["diameter"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "height": height.toJson(),
//         "diameter": diameter.toJson(),
//       };
// }

// List<RocketModel> userModelFromJson(String str) => List<RocketModel>.from(
//     json.decode(str).map((x) => RocketModel.fromJson(x)));

// String userModelToJson(List<RocketModel> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class RocketModel {
//   RocketModel({
//     // required this.id,
//     required this.name,
//     required this.country,
//     required this.company,
//     required this.flickrImages,
//     required this.engines,
//     // required this.phone,
//     // required this.website,
//     // required this.company,
//   });

//   // int id;
//   String name;
//   String country;
//   String company;
//   List<String> flickrImages;
//   Engines engines;
//   // String phone;
//   // String website;
//   // Company company;

//   factory RocketModel.fromJson(Map<String, dynamic> json) => RocketModel(
//         // id: json["id"],
//         name: json["name"],
//         country: json["country"],
//         company: json["company"],
//         flickrImages: List<String>.from(json["flickr_images"].map((x) => x)),
//         engines: Engines.fromJson(json["engines"]),
//         // phone: json["phone"],
//         // website: json["website"],
//         // company: Company.fromJson(json["company"]),
//       );

//   Map<String, dynamic> toJson() => {
//         // "id": id,
//         "name": name,
//         "country": country,
//         "company": company,
//         "flickr_images": List<dynamic>.from(flickrImages.map((x) => x)),
//         "engines": engines.toJson(),
//         // "phone": phone,
//         // "website": website,
//         // "company": company.toJson(),
//       };
// }

// class Engines {
//   Engines({
//     required this.number,
//     // required this.suite,
//     // required this.city,
//     // required this.zipcode,
//     // required this.geo,
//   });

//   String number;
//   // String suite;
//   // String city;
//   // String zipcode;
//   // Geo geo;

//   factory Engines.fromJson(Map<String, dynamic> json) => Engines(
//         number: json["number"],
//         // suite: json["suite"],
//         // city: json["city"],
//         // zipcode: json["zipcode"],
//         // geo: Geo.fromJson(json["geo"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "number": number,
//         // "suite": suite,
//         // "city": city,
//         // "zipcode": zipcode,
//         // "geo": geo.toJson(),
//       };
// }

// class Geo {
//   Geo({
//     required this.lat,
//     required this.lng,
//   });

//   String lat;
//   String lng;

//   factory Geo.fromJson(Map<String, dynamic> json) => Geo(
//         lat: json["lat"],
//         lng: json["lng"],
//       );

//   Map<String, dynamic> toJson() => {
//         "lat": lat,
//         "lng": lng,
//       };
// }

// class Company {
//   Company({
//     required this.name,
//     required this.catchPhrase,
//     required this.bs,
//   });

//   String name;
//   String catchPhrase;
//   String bs;

//   factory Company.fromJson(Map<String, dynamic> json) => Company(
//         name: json["name"],
//         catchPhrase: json["catchPhrase"],
//         bs: json["bs"],
//       );

//   Map<String, dynamic> toJson() => {
//         "name": name,
//         "catchPhrase": catchPhrase,
//         "bs": bs,
//       };
// }
// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

// import 'dart:convert';

List<Welcome> welcomeFromJson(String str) =>
    List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  Welcome({
    required this.name,
    required this.country,
    //required this.company,
    required this.flickrImages,
    required this.engines,
    required this.active,
    required this.cost_per_launch,
    required this.success_rate_pct,
    required this.description,
    required this.height,
    required this.wikipedia,
    required this.diameter,
  });

  int cost_per_launch;
  var success_rate_pct;
  bool active;
  String name;
  String country;
  List<String> flickrImages;
  String description;
  // String email;
  // Address address;
  Diameter diameter;
  Engines engines;
  Height height;
  // String phone;
  String wikipedia;
  // Company company;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        active: json["active"],
        success_rate_pct: json["json"],
        name: json["name"],
        country: json["country"],
        cost_per_launch: json["cost_per_launch"],
        height: Height.fromJson(json["height"]),
        engines: Engines.fromJson(json["engines"]),
        diameter: Diameter.fromJson(json["diameter"]),

        flickrImages: List<String>.from(json["flickr_images"].map((x) => x)),
        description: json["description"],
        wikipedia: json["wikipedia"],
        // company: Company.fromJson(json["company"]),
      );

  Map<String, dynamic> toJson() => {
        "active": active,
        "success_rate_pct": success_rate_pct,
        "name": name,
        "country": country,
        "cost_per_launch": cost_per_launch,
        "description": description,
        "engines": engines.toJson(),
        "flickr_images": List<dynamic>.from(flickrImages.map((x) => x)),
        "height": height.toJson(),
        "wikipedia": wikipedia,
        "diameter": diameter.toJson(),
        // "company": company.toJson(),
      };
}

// class Engine {
//   Engine({
//     required this.number,
//     // required this.suite,
//     // required this.city,
//     // required this.zipcode,
//     // required this.geo,
//   });

//   String number;
//   // String suite;
//   // String city;
//   // String zipcode;
//   // Geo geo;

//   factory Engine.fromJson(Map<String, dynamic> json) => Engine(
//         number: json["number"],
//         // suite: json["suite"],
//         // city: json["city"],
//         // zipcode: json["zipcode"],
//         // geo: Geo.fromJson(json["geo"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "number": number,
//         // "suite": suite,
//         // "city": city,
//         // "zipcode": zipcode,
//         // "geo": geo.toJson(),
//       };
// }

// class Geo {
//   Geo({
//     required this.lat,
//     required this.lng,
//   });

//   String lat;
//   String lng;

//   factory Geo.fromJson(Map<String, dynamic> json) => Geo(
//         lat: json["lat"],
//         lng: json["lng"],
//       );

//   Map<String, dynamic> toJson() => {
//         "lat": lat,
//         "lng": lng,
//       };
// }

// class Company {
//   Company({
//     required this.name,
//     required this.catchPhrase,
//     required this.bs,
//   });

//   String name;
//   String catchPhrase;
//   String bs;

//   factory Company.fromJson(Map<String, dynamic> json) => Company(
//         name: json["name"],
//         catchPhrase: json["catchPhrase"],
//         bs: json["bs"],
//       );

//   Map<String, dynamic> toJson() => {
//         "name": name,
//         "catchPhrase": catchPhrase,
//         "bs": bs,
//       };
// }

class Engines {
  Engines({
    this.isp,
    this.thrustSeaLevel,
    this.thrustVacuum,
    this.number,
    this.type,
    this.version,
    this.layout,
    this.engineLossMax,
    this.propellant1,
    this.propellant2,
    this.thrustToWeight,
  });

  Isp? isp;
  Thrust? thrustSeaLevel;
  Thrust? thrustVacuum;
  int? number;
  String? type;
  String? version;
  String? layout;
  int? engineLossMax;
  String? propellant1;
  String? propellant2;
  double? thrustToWeight;

  factory Engines.fromJson(Map<String, dynamic> json) => Engines(
        isp: json["isp"] == null ? null : Isp.fromJson(json["isp"]),
        thrustSeaLevel: json["thrust_sea_level"] == null
            ? null
            : Thrust.fromJson(json["thrust_sea_level"]),
        thrustVacuum: json["thrust_vacuum"] == null
            ? null
            : Thrust.fromJson(json["thrust_vacuum"]),
        number: json["number"],
        type: json["type"],
        version: json["version"],
        layout: json["layout"],
        engineLossMax: json["engine_loss_max"],
        propellant1: json["propellant_1"],
        propellant2: json["propellant_2"],
        thrustToWeight: json["thrust_to_weight"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "isp": isp?.toJson(),
        "thrust_sea_level": thrustSeaLevel?.toJson(),
        "thrust_vacuum": thrustVacuum?.toJson(),
        "number": number,
        "type": type,
        "version": version,
        "layout": layout,
        "engine_loss_max": engineLossMax,
        "propellant_1": propellant1,
        "propellant_2": propellant2,
        "thrust_to_weight": thrustToWeight,
      };
}

class Isp {
  Isp({
    required this.seaLevel,
    required this.vacuum,
  });

  int seaLevel;
  int vacuum;

  factory Isp.fromJson(Map<String, dynamic> json) => Isp(
        seaLevel: json["sea_level"],
        vacuum: json["vacuum"],
      );

  Map<String, dynamic> toJson() => {
        "sea_level": seaLevel,
        "vacuum": vacuum,
      };
}

class Thrust {
  Thrust({
    this.kN,
    this.lbf,
  });

  int? kN;
  int? lbf;

  factory Thrust.fromJson(Map<String, dynamic> json) => Thrust(
        kN: json["kN"],
        lbf: json["lbf"],
      );

  Map<String, dynamic> toJson() => {
        "kN": kN,
        "lbf": lbf,
      };
}

class Height {
  Height({
    required this.meters,
    required this.feet,
  });

  double meters;
  double feet;

  factory Height.fromJson(Map<String, dynamic> json) => Height(
        meters: json["meters"]?.toDouble(),
        feet: json["feet"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "meters": meters,
        "feet": feet,
      };
}

class Diameter {
  Diameter({
    required this.meters,
    required this.feet,
  });

  double meters;
  double feet;

  factory Diameter.fromJson(Map<String, dynamic> json) => Diameter(
        meters: json["meters"]?.toDouble(),
        feet: json["feet"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "meters": meters,
        "feet": feet,
      };
}
