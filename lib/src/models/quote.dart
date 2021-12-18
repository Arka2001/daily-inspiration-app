class Quote {
  final String quote;
  final String author;

  Quote({
    required this.quote,
    required this.author,
  });

  factory Quote.fromJSON({required Map<String, dynamic> jsonMap}) {
    return Quote(
      quote: jsonMap['quote'],
      author: jsonMap['author'],
    );
  }

  Map<String, dynamic> get toJson => {
        'quote': this.quote,
        'author': this.author,
      };
}
