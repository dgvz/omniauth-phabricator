# Omniauth::Phabricator

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-phabricator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-phabricator

## Usage

### Roda
```ruby
require "omniauth/phabricator"

class MyRackApp
  use OmniAuth::Builder do
    provider :phabricator, "<My-Phabricator-Client-Id>", "<My-Phabricator-Client-Secret>",
      :client_options => {:site => 'https://phabricator.example.com', :authorize_url => 'https://phabricator.example.com/oauthserver/auth/'}
  end
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/omniauth-phabricator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
