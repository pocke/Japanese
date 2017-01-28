# Japanese

[![Gem Version](https://badge.fury.io/rb/Japanese.svg)](https://badge.fury.io/rb/Japanese)
[![Build Status](https://travis-ci.org/pocke/Japanese.svg?branch=master)](https://travis-ci.org/pocke/Japanese)

グローバル変数に日本語の別名をつけます。

## Installation

`Gemfile`に次の行を追加します。


```ruby
gem 'Japanese'
```

そして、以下を実行します。

    $ bundle

もしくは、`gem`コマンドを使用してインストールして下さい。

    $ gem install Japanese

## Usage

```ruby
require 'Japanese'

/h.*,/ =~ 'hello, world!'
p $&
# => "hello,"
p $最後にマッチした文字列
# => "hello,"
```

より詳しい情報は [Japanese/Japanese.rb](https://github.com/pocke/Japanese/blob/master/lib/Japanese.rb) を参照して下さい。

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pocke/Japanese.

