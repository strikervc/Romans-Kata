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
        assert_equal "Syntax error", validate_non_repetitions("LL")
        assert_equal "Ok", validate_non_repetitions("IL")
        assert_equal "Ok", validate_non_repetitions("VIII")
        assert_equal "Syntax error", validate_non_repetitions("VVI")
    end

    def test_validate_romans
        assert_equal "Ok", validate_romans("VI")
        assert_equal "Ok", validate_romans("XXV")
        assert_equal "Syntax error", validate_romans("LLV")
        assert_equal "Syntax error", validate_romans("LMV")
    end
end