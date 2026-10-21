# Reverse Text API - PHP Package

Reverse Text transforms text by reversing characters, words, or lines with multiple reversal modes for different use cases.

## Installation

Install via Composer:

```bash
composer require apiverve/reversetext
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Reversetext\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'text' => 'Hello World',
    'mode' => 'characters'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Reversetext\Client;
use APIVerve\Reversetext\Exceptions\APIException;
use APIVerve\Reversetext\Exceptions\ValidationException;

try {
    $response = $client->execute(['text' => 'Hello World', 'mode' => 'characters']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/reversetext?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/reversetext?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/reversetext?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
