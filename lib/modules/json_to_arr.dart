class JsonToArr {
    List<String> urls;

    JsonToArr({
        required this.urls,
    });

    factory JsonToArr.fromJson(Map<String, dynamic> json) => JsonToArr(
        urls: List<String>.from(json["urls"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "urls": List<dynamic>.from(urls.map((x) => x)),
    };
}