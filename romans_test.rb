require_relative "romans"
require "test/unit"

class RomansTest < Test::Unit::TestCase
    def test_cannot_repeat_DLV
        assert_equal "All right", validate_non_repetitions_DLV("LVI")
        assert_equal "All right", validate_non_repetitions_DLV("DLV")
        assert_equal "All right", validate_non_repetitions_DLV("VI")
        assert_equal "Syntax error: 'D' letter cannot be repeated", validate_non_repetitions_DLV("DLD")
    end
end