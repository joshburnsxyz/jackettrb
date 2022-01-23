require "net/http"
require "open-uri"
require "rss"

module Jackettrb
  class Request
    attr_accessor :strict, :host, :key

    def initialize(host, key, strict: false)
      @key = key
      @host = host
      @strict = strict
    end

    def firehose
      url = parse_url(@host, nil)
      parse_rss(url, @strict)
    end

    def query(q)
      url = parse_url(@host, "&q=#{q}")
      parse_rss(url, @strict)
    end

    private

    def parse_url(host, params)
      URI.parse("#{host}/api/v2.0/indexers/all/results/torznab/api?apikey=#{@key}#{params}")
    end

    def parse_rss(url, strict)
      feed = nil
      URI.open(url) do |rss|
        feed = RSS::Parser.parse(rss, strict)
      end
      feed
    end
  end
end
