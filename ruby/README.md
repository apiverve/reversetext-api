# Reverse Text API - Ruby Gem

Reverse Text transforms text by reversing characters, words, or lines with multiple reversal modes for different use cases.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_reversetext'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_reversetext
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_reversetext'

# Initialize the client
client = APIVerve::Reversetext::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  text: "Hello World",
  mode: "characters"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ text: "Hello World", mode: "characters" })
  puts response["data"]
rescue APIVerve::Reversetext::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Reversetext::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Reversetext::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/reversetext?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/reversetext?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/reversetext?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
