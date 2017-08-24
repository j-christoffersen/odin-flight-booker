module FlightsHelper
  def format_duration duration
    duration_hours = duration/3600
    duration_minutes = duration/60 - duration_hours*60
    "#{duration_hours}:#{'%02d' % duration_minutes}"
  end
end
