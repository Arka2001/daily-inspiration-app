class APOD {
  final String date;
  final String explanation;
  final String hdurl;
  final String mediaType;
  final String serviceVersion;
  final String title;
  final String url;

  APOD({
    required this.date,
    required this.explanation,
    required this.hdurl,
    required this.mediaType,
    required this.serviceVersion,
    required this.title,
    required this.url,
  });

  factory APOD.fromJSON({required Map<String, dynamic> jsonMap}) {
    return APOD(
      date: jsonMap['date'],
      explanation: jsonMap['explanation'],
      hdurl: jsonMap['hdurl'],
      mediaType: jsonMap['mdeiaType'],
      serviceVersion: jsonMap['serviceVersion'],
      title: jsonMap['title'],
      url: jsonMap['url'],
    );
  }

  Map<String, dynamic> get toJson => {
        'date': this.date,
        'explanation': this.explanation,
        'hdurl': this.hdurl,
        'mediaType': this.mediaType,
        'serviceVersion': this.serviceVersion,
        'title': this.title,
        'url': this.url,
      };
}
