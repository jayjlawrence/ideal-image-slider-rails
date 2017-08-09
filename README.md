# Ideal::Image::Slider::Rails

Convenient packaging of the Ideal Image Slider as a rails-friendly gem plus helper
scripts to make updating to the latest version a bit easier.

## Installation

Add this line to your rails application's Gemfile:

```ruby
gem 'ideal-image-slider-rails'
```

And then execute:

    $ bundle

Then add something like this to your app/assets/javascripts/application.js:

```javascript
//= require 'jquery'
//= require 'ideal-image-slider'

$(document).on('turbolinks:load', function (e) {
 var slider = new IdealImageSlider.Slider({
    selector: '#slider',
    height: 400, // Required but can be set by CSS
    interval: 4000
  });
  slider.start();
});
```

Note that the code above assumes you are using both jQuery and Turbolinks.

Finally add this to your app/assets/stylesheets/application.css:

```css
 *= require 'ideal-image-slider'
 *= require 'ideal-image-slider/default'
```

## Development

After checking out the repo, run `./bin/setup` to install dependencies. This will check out
the source for  Ideal-Image-Slider-JS.

To update/build the gem run `./bin/build`. This will update the version.rb and copy the dependent
files to their correct location.

Run `./bin/test` to test the package quickly. This script also shows the typical changes like above. This assumes 
Rails 5.1. Your mileage may vary with other rails versions etc.

To install this gem onto your local machine, run `bundle exec rake install`. 

To release a new version run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jayjlawrence/ideal-image-slider-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Code of Conduct

Everyone interacting in the Ideal::Image::Slider::Rails project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/ideal-image-slider-rails/blob/master/CODE_OF_CONDUCT.md).
