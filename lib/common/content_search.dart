class ContentSearch {
  static final List<String> search_c = [
    'apple',
    'banana',
    'orange',
    'mango',
    'lichi',
    'pine apple',
    'banana',
    'orange',
    'mango',
    'lichi',
    'banana',
    'orange',
    'mango',
    'lichi',
  ];

  static List<String> getSuggestion(String query) {
    List<String> matches = [];
    matches.addAll(search_c);
    matches.retainWhere(
      (element) => element.toLowerCase().contains(query.toLowerCase()),
    );
    return matches;
  }
}
