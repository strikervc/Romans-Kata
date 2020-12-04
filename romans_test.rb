require_relative "romans"
require "test/unit"

class Tests < Test::Unit::TestCase
    def test_roman_range
        assert_equal "Out of range", validate_range("MC")
    end
end