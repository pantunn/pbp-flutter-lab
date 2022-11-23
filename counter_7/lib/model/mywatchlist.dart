// To parse this JSON data, do
//
//     final watchlists = watchlistsFromJson(jsonString);

import 'dart:convert';

List<Watchlists> watchlistsFromJson(String str) => List<Watchlists>.from(json.decode(str).map((x) => Watchlists.fromJson(x)));

String watchlistsToJson(List<Watchlists> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Watchlists {
    Watchlists({
        required this.model,
        required this.pk,
        required this.fields,
    });

    Model model;
    int pk;
    Fields fields;

    factory Watchlists.fromJson(Map<String, dynamic> json) => Watchlists(
        model: modelValues.map[json["model"]]!,
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": modelValues.reverse[model],
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    Fields({
        required this.watched,
        required this.title,
        required this.rating,
        required this.releaseDate,
        required this.review,
    });

    Watched watched;
    String title;
    int rating;
    String releaseDate;
    String review;

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        watched: watchedValues.map[json["watched"]]!,
        title: json["title"],
        rating: json["rating"],
        releaseDate: json["release_date"],
        review: json["review"],
    );

    Map<String, dynamic> toJson() => {
        "watched": watchedValues.reverse[watched],
        "title": title,
        "rating": rating,
        "release_date": releaseDate,
        "review": review,
    };
}

enum Watched { WATCHED, NOT_WATCHED }

final watchedValues = EnumValues({
    "not watched": Watched.NOT_WATCHED,
    "watched": Watched.WATCHED
});

enum Model { MYWATCHLIST_ITEM_MYWATCHLIST }

final modelValues = EnumValues({
    "mywatchlist.item_mywatchlist": Model.MYWATCHLIST_ITEM_MYWATCHLIST
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
