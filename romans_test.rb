require_relative "romans"
require "test/unit"

class Tests < Test::Unit::TestCase
    def test_roman_range
        assert_equal "Ok", validate_range("II")
        assert_equal "Ok", validate_range("XL")
        assert_equal "Ok", validate_range("L")
        assert_equal "Ok", validate_range("XIII")
    end

    def test_non_repetitions_LV
        assert_equal "Syntax error", validate_non_repetitions("XVV")
    end
end