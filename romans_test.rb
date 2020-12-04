require_relative "romans"
require "test/unit"

class Tests < Test::Unit::TestCase
    def test_roman_range
        asser_equal "In range", validate_range("")
    end
end