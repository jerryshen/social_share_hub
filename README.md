# SocialShareHub

SocialShareHub is a gem that can easy your share process without authenticating. It support Sina Weibo, QQ Weibo, Renren, Douban.

## Screenshorts

![img][1]

## Installation

Add this line to your application's Gemfile:

    gem 'social_share_hub', '~> 0.0.2'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install social_share_hub


Then you need to run a generate script to add the SocialShareHub configuration file by:

	$ rails g social_share_hub:install

The configuration file will be this:

``` ruby
SocialShareHub.configure do |config|
  config.allowed_sites = %w(weibo douban qq renren)
end
```

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[1]: https://github.com/jerryshen/social_share_hub/blob/master/screenshorts/social_share_hub.png "screenshort"