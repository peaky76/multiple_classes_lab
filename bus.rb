class Bus

    attr_reader :route, :destination

    def initialize(route, destination)
        @route = route
        @destination = destination
        @passengers = []
    end

    def drive()
        return "Vroom vroom!"
    end

    def passenger_count()
        return @passengers.count()
    end

    def pick_up(passenger)
        @passengers << passenger
    end

    def drop_off(passenger)
        @passengers.delete(passenger)
    end

    def empty()
        @passengers.clear()
    end

    def pick_up_from_stop(stop)
        for person in stop.queue
            pick_up(person)
        end
        stop.empty_queue()
    end

    def breakdown()
        empty()
    end
    
end