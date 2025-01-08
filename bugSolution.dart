```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body);
        // Handle successful response
      } on FormatException catch (e) {
        print('Error: Invalid JSON format - $e');
        // Handle the specific JSON formatting error appropriately
      }
    } else {
      // Handle error response
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow; // Re-throw to allow upper levels to handle
  }
}
```