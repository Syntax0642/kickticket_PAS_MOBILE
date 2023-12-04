// To parse this JSON data, do
//
//     final sportsDetailModel = sportsDetailModelFromJson(jsonString);

import 'dart:convert';

SportsDetailModel sportsDetailModelFromJson(String str) => SportsDetailModel.fromJson(json.decode(str));


class SportsDetailModel {
  String? name;
  String? type;
  String? id;
  bool? test;
  String? url;
  String? locale;
  List<Image>? images;
  Sales? sales;
  Dates? dates;
  List<Classification>? classifications;
  Promoter? promoter;
  List<Promoter>? promoters;
  List<PriceRange>? priceRanges;
  List<Product>? products;
  Seatmap? seatmap;
  Accessibility? accessibility;
  TicketLimit? ticketLimit;
  AgeRestrictions? ageRestrictions;
  Ticketing? ticketing;
  SportsDetailModelLinks? links;
  Embedded? embedded;

  SportsDetailModel({
     this.name,
     this.type,
     this.id,
     this.test,
     this.url,
     this.locale,
     this.images,
     this.sales,
     this.dates,
     this.classifications,
     this.promoter,
     this.promoters,
     this.priceRanges,
     this.products,
     this.seatmap,
     this.accessibility,
     this.ticketLimit,
     this.ageRestrictions,
     this.ticketing,
     this.links,
     this.embedded,
  });

  factory SportsDetailModel.fromJson(Map<String, dynamic> json) => SportsDetailModel(
    name: json["name"],
    type: json["type"],
    id: json["id"],
    test: json["test"],
    url: json["url"],
    locale: json["locale"],
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    sales: Sales.fromJson(json["sales"]),
    dates: Dates.fromJson(json["dates"]),
    classifications: List<Classification>.from(json["classifications"].map((x) => Classification.fromJson(x))),
    promoter: Promoter.fromJson(json["promoter"]),
    promoters: List<Promoter>.from(json["promoters"].map((x) => Promoter.fromJson(x))),
    priceRanges: List<PriceRange>.from(json["priceRanges"].map((x) => PriceRange.fromJson(x))),
    products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
    seatmap: Seatmap.fromJson(json["seatmap"]),
    accessibility: Accessibility.fromJson(json["accessibility"]),
    ticketLimit: TicketLimit.fromJson(json["ticketLimit"]),
    ageRestrictions: AgeRestrictions.fromJson(json["ageRestrictions"]),
    ticketing: Ticketing.fromJson(json["ticketing"]),
    links: SportsDetailModelLinks.fromJson(json["_links"]),
    embedded: Embedded.fromJson(json["_embedded"]),
  );


}

class Accessibility {
  Accessibility();

  factory Accessibility.fromJson(Map<String, dynamic> json) => Accessibility(
  );

  Map<String, dynamic> toJson() => {
  };
}

class AgeRestrictions {
  bool legalAgeEnforced;

  AgeRestrictions({
    required this.legalAgeEnforced,
  });

  factory AgeRestrictions.fromJson(Map<String, dynamic> json) => AgeRestrictions(
    legalAgeEnforced: json["legalAgeEnforced"],
  );

  Map<String, dynamic> toJson() => {
    "legalAgeEnforced": legalAgeEnforced,
  };
}

class Classification {
  bool primary;
  Genre segment;
  Genre genre;
  Genre subGenre;
  Genre type;
  Genre subType;
  bool family;

  Classification({
    required this.primary,
    required this.segment,
    required this.genre,
    required this.subGenre,
    required this.type,
    required this.subType,
    required this.family,
  });

  factory Classification.fromJson(Map<String, dynamic> json) => Classification(
    primary: json["primary"],
    segment: Genre.fromJson(json["segment"]),
    genre: Genre.fromJson(json["genre"]),
    subGenre: Genre.fromJson(json["subGenre"]),
    type: Genre.fromJson(json["type"]),
    subType: Genre.fromJson(json["subType"]),
    family: json["family"],
  );

  Map<String, dynamic> toJson() => {
    "primary": primary,
    "segment": segment.toJson(),
    "genre": genre.toJson(),
    "subGenre": subGenre.toJson(),
    "type": type.toJson(),
    "subType": subType.toJson(),
    "family": family,
  };
}

class Genre {
  String id;
  String name;

  Genre({
    required this.id,
    required this.name,
  });

  factory Genre.fromJson(Map<String, dynamic> json) => Genre(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}

class Dates {
  Start start;
  String timezone;
  Status status;
  bool spanMultipleDays;

  Dates({
    required this.start,
    required this.timezone,
    required this.status,
    required this.spanMultipleDays,
  });

  factory Dates.fromJson(Map<String, dynamic> json) => Dates(
    start: Start.fromJson(json["start"]),
    timezone: json["timezone"],
    status: Status.fromJson(json["status"]),
    spanMultipleDays: json["spanMultipleDays"],
  );

  Map<String, dynamic> toJson() => {
    "start": start.toJson(),
    "timezone": timezone,
    "status": status.toJson(),
    "spanMultipleDays": spanMultipleDays,
  };
}

class Start {
  DateTime localDate;
  String localTime;
  DateTime dateTime;
  bool dateTbd;
  bool dateTba;
  bool timeTba;
  bool noSpecificTime;

  Start({
    required this.localDate,
    required this.localTime,
    required this.dateTime,
    required this.dateTbd,
    required this.dateTba,
    required this.timeTba,
    required this.noSpecificTime,
  });

  factory Start.fromJson(Map<String, dynamic> json) => Start(
    localDate: DateTime.parse(json["localDate"]),
    localTime: json["localTime"],
    dateTime: DateTime.parse(json["dateTime"]),
    dateTbd: json["dateTBD"],
    dateTba: json["dateTBA"],
    timeTba: json["timeTBA"],
    noSpecificTime: json["noSpecificTime"],
  );

  Map<String, dynamic> toJson() => {
    "localDate": "${localDate.year.toString().padLeft(4, '0')}-${localDate.month.toString().padLeft(2, '0')}-${localDate.day.toString().padLeft(2, '0')}",
    "localTime": localTime,
    "dateTime": dateTime.toIso8601String(),
    "dateTBD": dateTbd,
    "dateTBA": dateTba,
    "timeTBA": timeTba,
    "noSpecificTime": noSpecificTime,
  };
}

class Status {
  String code;

  Status({
    required this.code,
  });

  factory Status.fromJson(Map<String, dynamic> json) => Status(
    code: json["code"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
  };
}

class Embedded {
  List<Venue> venues;
  List<Attraction> attractions;

  Embedded({
    required this.venues,
    required this.attractions,
  });

  factory Embedded.fromJson(Map<String, dynamic> json) => Embedded(
    venues: List<Venue>.from(json["venues"].map((x) => Venue.fromJson(x))),
    attractions: List<Attraction>.from(json["attractions"].map((x) => Attraction.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "venues": List<dynamic>.from(venues.map((x) => x.toJson())),
    "attractions": List<dynamic>.from(attractions.map((x) => x.toJson())),
  };
}

class Attraction {
  String name;
  String type;
  String id;
  bool test;
  String url;
  String locale;
  ExternalLinks externalLinks;
  List<String> aliases;
  List<Image> images;
  List<Classification> classifications;
  UpcomingEvents upcomingEvents;
  AttractionLinks links;

  Attraction({
    required this.name,
    required this.type,
    required this.id,
    required this.test,
    required this.url,
    required this.locale,
    required this.externalLinks,
    required this.aliases,
    required this.images,
    required this.classifications,
    required this.upcomingEvents,
    required this.links,
  });

  factory Attraction.fromJson(Map<String, dynamic> json) => Attraction(
    name: json["name"],
    type: json["type"],
    id: json["id"],
    test: json["test"],
    url: json["url"],
    locale: json["locale"],
    externalLinks: ExternalLinks.fromJson(json["externalLinks"]),
    aliases: List<String>.from(json["aliases"].map((x) => x)),
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    classifications: List<Classification>.from(json["classifications"].map((x) => Classification.fromJson(x))),
    upcomingEvents: UpcomingEvents.fromJson(json["upcomingEvents"]),
    links: AttractionLinks.fromJson(json["_links"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "type": type,
    "id": id,
    "test": test,
    "url": url,
    "locale": locale,
    "externalLinks": externalLinks.toJson(),
    "aliases": List<dynamic>.from(aliases.map((x) => x)),
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "classifications": List<dynamic>.from(classifications.map((x) => x.toJson())),
    "upcomingEvents": upcomingEvents.toJson(),
    "_links": links.toJson(),
  };
}

class ExternalLinks {
  List<Facebook> twitter;
  List<Facebook> facebook;
  List<Facebook> wiki;
  List<Facebook> instagram;
  List<Facebook> homepage;

  ExternalLinks({
    required this.twitter,
    required this.facebook,
    required this.wiki,
    required this.instagram,
    required this.homepage,
  });

  factory ExternalLinks.fromJson(Map<String, dynamic> json) => ExternalLinks(
    twitter: List<Facebook>.from(json["twitter"].map((x) => Facebook.fromJson(x))),
    facebook: List<Facebook>.from(json["facebook"].map((x) => Facebook.fromJson(x))),
    wiki: List<Facebook>.from(json["wiki"].map((x) => Facebook.fromJson(x))),
    instagram: List<Facebook>.from(json["instagram"].map((x) => Facebook.fromJson(x))),
    homepage: List<Facebook>.from(json["homepage"].map((x) => Facebook.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "twitter": List<dynamic>.from(twitter.map((x) => x.toJson())),
    "facebook": List<dynamic>.from(facebook.map((x) => x.toJson())),
    "wiki": List<dynamic>.from(wiki.map((x) => x.toJson())),
    "instagram": List<dynamic>.from(instagram.map((x) => x.toJson())),
    "homepage": List<dynamic>.from(homepage.map((x) => x.toJson())),
  };
}

class Facebook {
  String url;

  Facebook({
    required this.url,
  });

  factory Facebook.fromJson(Map<String, dynamic> json) => Facebook(
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
  };
}

class Image {
  Ratio ratio;
  String url;
  int width;
  int height;
  bool fallback;

  Image({
    required this.ratio,
    required this.url,
    required this.width,
    required this.height,
    required this.fallback,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    ratio: ratioValues.map[json["ratio"]]!,
    url: json["url"],
    width: json["width"],
    height: json["height"],
    fallback: json["fallback"],
  );

  Map<String, dynamic> toJson() => {
    "ratio": ratioValues.reverse[ratio],
    "url": url,
    "width": width,
    "height": height,
    "fallback": fallback,
  };
}

enum Ratio {
  THE_169,
  THE_32,
  THE_43
}

final ratioValues = EnumValues({
  "16_9": Ratio.THE_169,
  "3_2": Ratio.THE_32,
  "4_3": Ratio.THE_43
});

class AttractionLinks {
  Self self;

  AttractionLinks({
    required this.self,
  });

  factory AttractionLinks.fromJson(Map<String, dynamic> json) => AttractionLinks(
    self: Self.fromJson(json["self"]),
  );

  Map<String, dynamic> toJson() => {
    "self": self.toJson(),
  };
}

class Self {
  String href;

  Self({
    required this.href,
  });

  factory Self.fromJson(Map<String, dynamic> json) => Self(
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "href": href,
  };
}

class UpcomingEvents {
  int? tmr;
  int ticketmaster;
  int total;
  int filtered;

  UpcomingEvents({
    this.tmr,
    required this.ticketmaster,
    required this.total,
    required this.filtered,
  });

  factory UpcomingEvents.fromJson(Map<String, dynamic> json) => UpcomingEvents(
    tmr: json["tmr"],
    ticketmaster: json["ticketmaster"],
    total: json["_total"],
    filtered: json["_filtered"],
  );

  Map<String, dynamic> toJson() => {
    "tmr": tmr,
    "ticketmaster": ticketmaster,
    "_total": total,
    "_filtered": filtered,
  };
}

class Venue {
  String name;
  String type;
  String id;
  bool test;
  String url;
  String locale;
  List<String> aliases;
  List<Image> images;
  String postalCode;
  String timezone;
  City city;
  State state;
  Country country;
  Address address;
  Location location;
  List<Genre> markets;
  List<Dma> dmas;
  Social social;
  BoxOfficeInfo boxOfficeInfo;
  String parkingDetail;
  String accessibleSeatingDetail;
  GeneralInfo generalInfo;
  UpcomingEvents upcomingEvents;
  AttractionLinks links;

  Venue({
    required this.name,
    required this.type,
    required this.id,
    required this.test,
    required this.url,
    required this.locale,
    required this.aliases,
    required this.images,
    required this.postalCode,
    required this.timezone,
    required this.city,
    required this.state,
    required this.country,
    required this.address,
    required this.location,
    required this.markets,
    required this.dmas,
    required this.social,
    required this.boxOfficeInfo,
    required this.parkingDetail,
    required this.accessibleSeatingDetail,
    required this.generalInfo,
    required this.upcomingEvents,
    required this.links,
  });

  factory Venue.fromJson(Map<String, dynamic> json) => Venue(
    name: json["name"],
    type: json["type"],
    id: json["id"],
    test: json["test"],
    url: json["url"],
    locale: json["locale"],
    aliases: List<String>.from(json["aliases"].map((x) => x)),
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    postalCode: json["postalCode"],
    timezone: json["timezone"],
    city: City.fromJson(json["city"]),
    state: State.fromJson(json["state"]),
    country: Country.fromJson(json["country"]),
    address: Address.fromJson(json["address"]),
    location: Location.fromJson(json["location"]),
    markets: List<Genre>.from(json["markets"].map((x) => Genre.fromJson(x))),
    dmas: List<Dma>.from(json["dmas"].map((x) => Dma.fromJson(x))),
    social: Social.fromJson(json["social"]),
    boxOfficeInfo: BoxOfficeInfo.fromJson(json["boxOfficeInfo"]),
    parkingDetail: json["parkingDetail"],
    accessibleSeatingDetail: json["accessibleSeatingDetail"],
    generalInfo: GeneralInfo.fromJson(json["generalInfo"]),
    upcomingEvents: UpcomingEvents.fromJson(json["upcomingEvents"]),
    links: AttractionLinks.fromJson(json["_links"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "type": type,
    "id": id,
    "test": test,
    "url": url,
    "locale": locale,
    "aliases": List<dynamic>.from(aliases.map((x) => x)),
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "postalCode": postalCode,
    "timezone": timezone,
    "city": city.toJson(),
    "state": state.toJson(),
    "country": country.toJson(),
    "address": address.toJson(),
    "location": location.toJson(),
    "markets": List<dynamic>.from(markets.map((x) => x.toJson())),
    "dmas": List<dynamic>.from(dmas.map((x) => x.toJson())),
    "social": social.toJson(),
    "boxOfficeInfo": boxOfficeInfo.toJson(),
    "parkingDetail": parkingDetail,
    "accessibleSeatingDetail": accessibleSeatingDetail,
    "generalInfo": generalInfo.toJson(),
    "upcomingEvents": upcomingEvents.toJson(),
    "_links": links.toJson(),
  };
}

class Address {
  String line1;

  Address({
    required this.line1,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    line1: json["line1"],
  );

  Map<String, dynamic> toJson() => {
    "line1": line1,
  };
}

class BoxOfficeInfo {
  String phoneNumberDetail;
  String openHoursDetail;
  String acceptedPaymentDetail;
  String willCallDetail;

  BoxOfficeInfo({
    required this.phoneNumberDetail,
    required this.openHoursDetail,
    required this.acceptedPaymentDetail,
    required this.willCallDetail,
  });

  factory BoxOfficeInfo.fromJson(Map<String, dynamic> json) => BoxOfficeInfo(
    phoneNumberDetail: json["phoneNumberDetail"],
    openHoursDetail: json["openHoursDetail"],
    acceptedPaymentDetail: json["acceptedPaymentDetail"],
    willCallDetail: json["willCallDetail"],
  );

  Map<String, dynamic> toJson() => {
    "phoneNumberDetail": phoneNumberDetail,
    "openHoursDetail": openHoursDetail,
    "acceptedPaymentDetail": acceptedPaymentDetail,
    "willCallDetail": willCallDetail,
  };
}

class City {
  String name;

  City({
    required this.name,
  });

  factory City.fromJson(Map<String, dynamic> json) => City(
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
  };
}

class Country {
  String name;
  String countryCode;

  Country({
    required this.name,
    required this.countryCode,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
    name: json["name"],
    countryCode: json["countryCode"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "countryCode": countryCode,
  };
}

class Dma {
  int id;

  Dma({
    required this.id,
  });

  factory Dma.fromJson(Map<String, dynamic> json) => Dma(
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
  };
}

class GeneralInfo {
  String generalRule;
  String childRule;

  GeneralInfo({
    required this.generalRule,
    required this.childRule,
  });

  factory GeneralInfo.fromJson(Map<String, dynamic> json) => GeneralInfo(
    generalRule: json["generalRule"],
    childRule: json["childRule"],
  );

  Map<String, dynamic> toJson() => {
    "generalRule": generalRule,
    "childRule": childRule,
  };
}

class Location {
  String longitude;
  String latitude;

  Location({
    required this.longitude,
    required this.latitude,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    longitude: json["longitude"],
    latitude: json["latitude"],
  );

  Map<String, dynamic> toJson() => {
    "longitude": longitude,
    "latitude": latitude,
  };
}

class Social {
  Twitter twitter;

  Social({
    required this.twitter,
  });

  factory Social.fromJson(Map<String, dynamic> json) => Social(
    twitter: Twitter.fromJson(json["twitter"]),
  );

  Map<String, dynamic> toJson() => {
    "twitter": twitter.toJson(),
  };
}

class Twitter {
  String handle;

  Twitter({
    required this.handle,
  });

  factory Twitter.fromJson(Map<String, dynamic> json) => Twitter(
    handle: json["handle"],
  );

  Map<String, dynamic> toJson() => {
    "handle": handle,
  };
}

class State {
  String name;
  String stateCode;

  State({
    required this.name,
    required this.stateCode,
  });

  factory State.fromJson(Map<String, dynamic> json) => State(
    name: json["name"],
    stateCode: json["stateCode"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "stateCode": stateCode,
  };
}

class SportsDetailModelLinks {
  Self self;
  List<Self> attractions;
  List<Self> venues;

  SportsDetailModelLinks({
    required this.self,
    required this.attractions,
    required this.venues,
  });

  factory SportsDetailModelLinks.fromJson(Map<String, dynamic> json) => SportsDetailModelLinks(
    self: Self.fromJson(json["self"]),
    attractions: List<Self>.from(json["attractions"].map((x) => Self.fromJson(x))),
    venues: List<Self>.from(json["venues"].map((x) => Self.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "self": self.toJson(),
    "attractions": List<dynamic>.from(attractions.map((x) => x.toJson())),
    "venues": List<dynamic>.from(venues.map((x) => x.toJson())),
  };
}

class PriceRange {
  String type;
  String currency;
  double min;
  double max;

  PriceRange({
    required this.type,
    required this.currency,
    required this.min,
    required this.max,
  });

  factory PriceRange.fromJson(Map<String, dynamic> json) => PriceRange(
    type: json["type"],
    currency: json["currency"],
    min: json["min"],
    max: json["max"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "currency": currency,
    "min": min,
    "max": max,
  };
}

class Product {
  String name;
  String id;
  String url;
  String type;
  List<Classification> classifications;

  Product({
    required this.name,
    required this.id,
    required this.url,
    required this.type,
    required this.classifications,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    name: json["name"],
    id: json["id"],
    url: json["url"],
    type: json["type"],
    classifications: List<Classification>.from(json["classifications"].map((x) => Classification.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "id": id,
    "url": url,
    "type": type,
    "classifications": List<dynamic>.from(classifications.map((x) => x.toJson())),
  };
}

class Promoter {
  String id;
  String name;
  String description;

  Promoter({
    required this.id,
    required this.name,
    required this.description,
  });

  factory Promoter.fromJson(Map<String, dynamic> json) => Promoter(
    id: json["id"],
    name: json["name"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
  };
}

class Sales {
  Public public;
  List<Presale> presales;

  Sales({
    required this.public,
    required this.presales,
  });

  factory Sales.fromJson(Map<String, dynamic> json) => Sales(
    public: Public.fromJson(json["public"]),
    presales: List<Presale>.from(json["presales"].map((x) => Presale.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "public": public.toJson(),
    "presales": List<dynamic>.from(presales.map((x) => x.toJson())),
  };
}

class Presale {
  DateTime startDateTime;
  DateTime endDateTime;
  String name;

  Presale({
    required this.startDateTime,
    required this.endDateTime,
    required this.name,
  });

  factory Presale.fromJson(Map<String, dynamic> json) => Presale(
    startDateTime: DateTime.parse(json["startDateTime"]),
    endDateTime: DateTime.parse(json["endDateTime"]),
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "startDateTime": startDateTime.toIso8601String(),
    "endDateTime": endDateTime.toIso8601String(),
    "name": name,
  };
}

class Public {
  DateTime startDateTime;
  bool startTbd;
  bool startTba;
  DateTime endDateTime;

  Public({
    required this.startDateTime,
    required this.startTbd,
    required this.startTba,
    required this.endDateTime,
  });

  factory Public.fromJson(Map<String, dynamic> json) => Public(
    startDateTime: DateTime.parse(json["startDateTime"]),
    startTbd: json["startTBD"],
    startTba: json["startTBA"],
    endDateTime: DateTime.parse(json["endDateTime"]),
  );

  Map<String, dynamic> toJson() => {
    "startDateTime": startDateTime.toIso8601String(),
    "startTBD": startTbd,
    "startTBA": startTba,
    "endDateTime": endDateTime.toIso8601String(),
  };
}

class Seatmap {
  String staticUrl;

  Seatmap({
    required this.staticUrl,
  });

  factory Seatmap.fromJson(Map<String, dynamic> json) => Seatmap(
    staticUrl: json["staticUrl"],
  );

  Map<String, dynamic> toJson() => {
    "staticUrl": staticUrl,
  };
}

class TicketLimit {
  String info;

  TicketLimit({
    required this.info,
  });

  factory TicketLimit.fromJson(Map<String, dynamic> json) => TicketLimit(
    info: json["info"],
  );

  Map<String, dynamic> toJson() => {
    "info": info,
  };
}

class Ticketing {
  AllInclusivePricing safeTix;
  AllInclusivePricing allInclusivePricing;

  Ticketing({
    required this.safeTix,
    required this.allInclusivePricing,
  });

  factory Ticketing.fromJson(Map<String, dynamic> json) => Ticketing(
    safeTix: AllInclusivePricing.fromJson(json["safeTix"]),
    allInclusivePricing: AllInclusivePricing.fromJson(json["allInclusivePricing"]),
  );

  Map<String, dynamic> toJson() => {
    "safeTix": safeTix.toJson(),
    "allInclusivePricing": allInclusivePricing.toJson(),
  };
}

class AllInclusivePricing {
  bool enabled;

  AllInclusivePricing({
    required this.enabled,
  });

  factory AllInclusivePricing.fromJson(Map<String, dynamic> json) => AllInclusivePricing(
    enabled: json["enabled"],
  );

  Map<String, dynamic> toJson() => {
    "enabled": enabled,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
