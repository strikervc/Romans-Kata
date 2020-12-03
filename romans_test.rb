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

    def test_validate_only_I_can_rest
        #letter I only can rest a letter
        assert_equal "All right", validate_romans("IV")
        assert_equal "All right", validate_romans("IL")
        assert_equal "All right", validate_romans("ID")
        assert_equal "All right", validate_romans("IX")
    end

    def test_validate_I_rest_distance
        assert_equal "Syntax error", validate_romans("IVV")
        assert_equal "Syntax error", validate_romans("IXL")
        assert_equal "All right", validate_romans("ID")
        assert_equal "All right", validate_romans("IX")
    end

    def test_validate_roman
        assert_equal "All right", validate_romans("VIII")
        assert_equal "Syntax error", validate_romans("VD")
    end
end