require_relative "romans"
require "test/unit"

class Romans < Test::Unit::TestCase
    def test_romans_range
        assert_equal "Ok", validate_range("II")
        assert_equal "Ok", validate_range("III")
        assert_equal "Ok", validate_range("IV")
        assert_equal "Syntax error", validate_range("XV")
    end
end