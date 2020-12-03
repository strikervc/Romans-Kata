require_relative "romans"
require "test/unit"

class RomansTest < Test::Unit::TestCase
    def test_cannot_repeat_DLV
        assert_equal "All right", validate_non_repetitions_DLV("LVI")
        assert_equal "All right", validate_non_repetitions_DLV("DLV")
        assert_equal "All right", validate_non_repetitions_DLV("VI")
        assert_equal "Syntax error: 'D' letter cannot be repeated", validate_non_repetitions_DLV("DLD")
    end

    def test_roman_range
        assert_equal "Syntax error: Range must be 500 or less (but no minus than 0)", range_0_to_500("M")
        assert_equal "All right", range_0_to_500("XX")
        assert_equal "All right", range_0_to_500("D")
        assert_equal "All right", range_0_to_500("LVII")
    end
end