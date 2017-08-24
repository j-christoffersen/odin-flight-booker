class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |a| [a.code, a.id] }
    @dates = Flight.select(:depart_time).distinct.uniq { |f| f.depart_time.to_date } .map { |f| [format_date(f.depart_time), f.depart_time.to_date] }
    if params[:commit] == "Search"
      @flights = Flight.where("depart_airport_id = ? AND arrive_airport_id = ? AND depart_time BETWEEN ? AND ?",
                               params[:depart_airport_id],
                               params[:arrive_airport_id],
                               params[:date].to_datetime,
                               params[:date].to_datetime + 1 - 1/(24.0 * 60 * 60))
      @passengers = params[:passengers]
    end
  end
  
  private
  
    def format_date date
      date.strftime("%m/%d/%Y")
    end
  
end
