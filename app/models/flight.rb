class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'
  has_many :passengers
  def self.search(params)
    flights = all
    flights = flights.where(departure_airport_id: params[:departure_airport_id]) if params[:departure_airport_id].present?
    flights = flights.where(arrival_airport_id: params[:arrival_airport_id]) if params[:arrival_airport_id].present?
    # flights = flights.where("passenger_count >= ?", params[:passenger_count]) if params[:passenger_count].present?
    flights = flights.where("DATE(start_datetime) = ?", params[:flight_date]) if params[:flight_date].present?
    flights
  end
end