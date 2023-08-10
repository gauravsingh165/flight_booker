class BookingsController < ApplicationController
    def new
        @selected_flight = Flight.find(params[:selected_flight_id])
        @num_tickets = params[:num_tickets]
      end
end
