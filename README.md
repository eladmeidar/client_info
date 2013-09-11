# ClientInfo

ClientInfo is a Sinatra dual operation engine that holds an endpoint to "beacon" (Javascript driven) user/browser data from clients.

## Installation

Add this line to your application's Gemfile:

### Development

add this in your Gemfile development group:

    gem 'client_info', require: false

and add the following line at the end of your  `config/application.rb` file:

    require 'client_info'

The reason it needs to work this way is to boot this gem only when the entire rails environment is loaded, when bundler
loads the gems - not all rails' features are available (such as `Rails.root` and `Rails.env` that this gem requires)

Next, add this to your `config/routes.rb`

      unless Rails.env.production?
        mount ClientInfoService, at: "/"
      end

And then execute:

    $ bundle

### Production

  Clone this gem and deploy it as a standalone rack application (using the provided `config.ru` file in the gem's root)



## Usage

All usage information is provided in the project's [Wiki](https://github.com/eladmeidar/client_info/wiki)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
