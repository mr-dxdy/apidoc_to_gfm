# ApidocToGFM

ApidocToGFM is an template for [rspec_api_documentation](https://github.com/zipmark/rspec_api_documentation). The template supports [GitLab Flavored Markdown (GFM)](https://docs.gitlab.com/ee/user/markdown.html#gitlab-flavored-markdown-gfm).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apidoc_to_gfm'
```

## Usage

``` ruby
RspecApiDocumentation.configure do |config|
  config.format = :gfm
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mr-dxdy/apidoc_to_gfm.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
