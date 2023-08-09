class FlightsController < ApplicationController

  def index
    @airports = Airport.all
    @dates_with_flights = Flight.pluck(:start_datetime).map { |datetime| datetime.to_date }.uniq
  
    @flights = Flight.all
    @flights = @flights.where(departure_airport_id: params[:departure_airport_id]) if params[:departure_airport_id].present?
    @flights = @flights.where(arrival_airport_id: params[:arrival_airport_id]) if params[:arrival_airport_id].present?
    # @flights = @flights.where("passenger_count >= ?", params[:passenger_count].to_i) if params[:passenger_count].present?
    @flights = @flights.where("DATE(start_datetime) = ?", params[:flight_date]) if params[:flight_date].present?
  end
end
