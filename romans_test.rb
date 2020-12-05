require_relative "romans"
require "test/unit"

class Romans < Test::Unit::TestCase
    def test_romans_range
        assert_equal "Ok", validate_range("II")
        assert_equal "Ok", validate_range("III")
        assert_equal "Ok", validate_range("IV")
        assert_equal "Syntax error", validate_range("XV")
    end

    def test_non_repetitions_V
        assert_equal "Syntax error", validate_non_repetitions_V("VV")
        assert_equal "Ok", validate_non_repetitions_V("VI")
        assert_equal "Ok",validate_non_repetitions_V("IV")
        assert_equal "Ok", validate_non_repetitions_V("VII")
    end

    def test_validate_roman 
        assert_equal "Syntax error", validate_roman("VX")
        assert_equal "Ok", validate_roman("VII")
        assert_equal "Ok", validate_roman("VIII")
        assert_equal "Ok", validate_roman("VI")
    end
end