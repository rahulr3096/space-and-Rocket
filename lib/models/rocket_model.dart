import 'dart:convert';

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
