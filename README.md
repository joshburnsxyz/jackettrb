# Jackettrb

Lightweight interaction layer for Jackett API servers.

## Installation

``` ruby
gem "jackettrb"
```

``` ruby
$ gem install jackettrb
```


## Usage

First you need to make an instance of `Jackettrb::Request`, the constructor will take
2 to 3 arguments. The URL to your Target Jackett instance, The API key, and you can optionally
pass in `true` as the third argument to turn on _strict RSS parsing_ this will generate more errors
and is off by default as a result.

``` ruby
require 'jackettrb'

req = Jackettrb::Request.new("https://127.0.0.1:9117", "MyApiKey123123")

```

From here we can ask Jackett to query the indexers for a given search term like so

``` ruby
req.query("Spiderman")
```

You can also get a feed of all results with the aptly named `firehose`.

``` ruby
req.firehose
```
