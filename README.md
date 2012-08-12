# Excerpt

Extracts portion of some input content like String, file, URI, ...

## Usage
    
    > puts Excerpt.new('application.html').around_line(12, radius: 2)

      = csrf_meta_tags
    %body
      #navigation
        = render '/layouts/application/nav'
      .container-fixed

You can also request a excerpt from URI:

    > # radius is omitted here, default value is 4
    > puts Excerpt.new('https://raw.github.com/rails/rails/master/railties/lib/rails.rb').around_line(26)

    module Rails
      autoload :Info, 'rails/info'
      autoload :InfoController, 'rails/info_controller'
      autoload :Queueing, 'rails/queueing'

      class << self
        def application
        @application ||= nil
      end

## Installation

Add this line to your application's Gemfile:

    gem 'excerpt'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install excerpt

## Licence

Copyright (c) 2012 Dejan Simic

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
