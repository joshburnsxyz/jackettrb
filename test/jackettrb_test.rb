# frozen_string_literal: true

require "test_helper"

class JackettrbTest < Minitest::Test
  @r = ::Jackettrb::Request.new("127.0.0.1:9117", "thisisanapikeyipromise", false)

  def test_that_it_has_a_version_number
    refute_nil ::Jackettrb::VERSION
  end

  def test_request_class_exists
    @r = ::Jackettrb::Request.new("127.0.0.1:9117", "thisisanapikeyipromise", false)
    refute_nil @r
  end

  def test_request_class_has_default_value_for_strict
    refute_nil ::Jackettrb::Request.new("127.0.0.1:9117", "thisisanapikeyipromise")
  end

  def test_default_value_for_strict_is_false
    @r = ::Jackettrb::Request.new("127.0.0.1:9117", "thisisanapikeyipromise", false)
    assert_equal false, @r.strict
  end

  def test_host_value_is_accessible
    @r = ::Jackettrb::Request.new("127.0.0.1:9117", "thisisanapikeyipromise", false)
    assert_equal "127.0.0.1:9117", @r.host
  end

  def test_key_value_is_accessible
    @r = ::Jackettrb::Request.new("127.0.0.1:9117", "thisisanapikeyipromise", false)
    assert_equal "thisisanapikeyipromise", @r.key
  end
end
