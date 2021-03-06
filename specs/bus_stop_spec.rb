require("minitest/autorun")
require("minitest/reporters")

require_relative("../bus_stop.rb")
require_relative("../person.rb")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class BusStopTest < MiniTest::Test

    def setup()
        @bus_stop = BusStop.new("Stop 5")
        @passenger_1 = Person.new("Joe", 67)
        @passenger_2 = Person.new("Mary", 23)
    end

    def test_has_name()
        assert_equal("Stop 5", @bus_stop.name())
    end

    def test_starts_with_zero_passengers()
        assert_equal(0, @bus_stop.queue_length())
    end

    def test_add_person()
        @bus_stop.add_person(@passenger_1)
        assert_equal(1, @bus_stop.queue_length())
    end

    def test_empty_queue()
        @bus_stop.add_person(@passenger_1)
        @bus_stop.add_person(@passenger_2)
        @bus_stop.empty_queue()
        assert_equal(0, @bus_stop.queue_length())
    end
    
end