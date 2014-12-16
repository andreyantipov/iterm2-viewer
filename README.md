<h1 align="center">💎 iterm2-viewer</h1>
<p align="center">
  <a href="//codeclimate.com/github/AndreyAntipov/iterm2-viewer"><img src='https://codeclimate.com/github/AndreyAntipov/iterm2-viewer/badges/gpa.svg' alt='Code Climate' /></a>
  <a href="//gemnasium.com/AndreyAntipov/iterm2-viewer"><img src='https//gemnasium.com/AndreyAntipov/iterm2-viewer.svg' alt='Dependency Status' /></a>
  <a href="//badge.fury.io/rb/iterm2-viewer"><img src='https://badge.fury.io/rb/iterm2-viewer.svg' alt='Gem version' /></a>
  <a href="//travis-ci.org/AndreyAntipov/iterm2-viewer"><img src='https://travis-ci.org/AndreyAntipov/iterm2-viewer.svg?branch=master' alt='Build Status' /></a>
  <a href="//codeclimate.com/github/AndreyAntipov/iterm2-viewer"><img src='https://codeclimate.com/github/AndreyAntipov/iterm2-viewer/badges/coverage.svg' alt='Test Coverage' /></a>
</p>

Utility for view images in the terminal

📎 Note: currently work only in mac iTerm2-nightly



## Supported types
    - png
    - jpeg
    - tiff
    - gif



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'iterm2-viewer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install iterm2-viewer



## Usage

```ruby
iterm2-viewer IMAGE_FILE_PATH
```
display multiple images
```ruby
iterm2-viewer IMAGE_FILE_1_PATH IMAGE_FILE_2_PATH
```

##### Options
| Key               |  Action                       |
|:------------------|:-----------------------------:|
| `-v` or `--version`   |  show current version         |


## How it look like
![How it look like 1](https://raw.githubusercontent.com/AndreyAntipov/iterm2-viewer/media/screenshot_1.png "How it look like 1")

![How it look like 2](https://raw.githubusercontent.com/AndreyAntipov/iterm2-viewer/media/screenshot_2.png "How it look like 2")

--- 



## License

The MIT License (MIT) 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions in [LICENSE.txt](https://github.com/AndreyAntipov/iterm2-viewer/blob/master/LICENSE.txt)



## Contributing

1. Fork it ( https://github.com/AndreyAntipov/iterm2-viewer/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
