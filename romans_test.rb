require_relative "romans"
require "test/unit"

class TestCase < Test::Unit::TestCase
    def cannot_repeat_DLV
        assert_equal "All right", validate_non_repetitions_DLV("VI")
    end
end