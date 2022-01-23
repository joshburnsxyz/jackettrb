# frozen_string_literal: true

require "test_helper"

class JackettrbTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Jackettrb::VERSION
  end

  def test_request_class_exists
    refute_nil ::Jackettrb::Request.new("127.0.0.1:9117", "thisisanapikeyipromise", false)
  end

  def test_request_class_has_default_value_for_strict
    refute_nil ::Jackettrb::Request.new("127.0.0.1:9117", "thisisanapikeyipromise")
  end

  def test_default_value_for_strict_is_false
    r = ::Jackettrb::Request.new("127.0.0.1:9117", "thisisanapikeyipromise")
    assert_equal false, r.strict
  end
end
