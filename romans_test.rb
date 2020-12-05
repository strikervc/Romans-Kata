require_relative "romans"
require "test/unit"

class Romans < Test::Unit::TestCase
    def test_romans_range
        assert_equal "Ok", validate_range("")
    end
end