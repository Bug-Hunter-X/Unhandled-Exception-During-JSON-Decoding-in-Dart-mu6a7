# Unhandled Exception During JSON Decoding in Dart

This repository demonstrates a common error in Dart: improperly handling exceptions that can be thrown during JSON decoding.  The `bug.dart` file contains the problematic code, while `bugSolution.dart` provides a corrected version.

**Problem:** The original code fails to catch `FormatException` which can arise if the JSON response is malformed. This results in an unhandled exception that crashes the application.

**Solution:** The solution adds a `try-catch` block specifically to handle `FormatException` during `jsonDecode`, providing more robust error handling and preventing app crashes.