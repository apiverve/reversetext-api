# Reverse Text API - Dart/Flutter Client

Reverse Text transforms text by reversing characters, words, or lines with multiple reversal modes for different use cases.

[![pub package](https://img.shields.io/pub/v/apiverve_reversetext.svg)](https://pub.dev/packages/apiverve_reversetext)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Reverse Text API](https://apiverve.com/marketplace/reversetext?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_reversetext: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_reversetext/apiverve_reversetext.dart';

void main() async {
  final client = ReversetextClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'text': 'Hello World',
      'mode': 'characters'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "reversed": "dlroW olleH",
    "original": "Hello World",
    "mode": "characters",
    "length": 11
  }
}
```

## API Reference

- **API Home:** [Reverse Text API](https://apiverve.com/marketplace/reversetext?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/reversetext](https://docs.apiverve.com/ref/reversetext?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
