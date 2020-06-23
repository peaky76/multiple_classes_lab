require("minitest/autorun")
require("minitest/reporters")

require_relative("../bus.rb")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class BusTest < MiniTest::Test

    def setup()
        @bus = Bus.new(22, "Ocean Terminal")
    end

    def test_has_route()
        assert_equal(22, @bus.route)
    end

    def test_has_destination()
        assert_equal("Ocean Terminal", @bus.destination)
    end

end