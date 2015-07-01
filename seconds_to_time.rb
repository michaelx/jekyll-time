# Convert seconds to time
#
# Example: {{ 82800 | seconds_time }}  => 11:00PM
# Ref: http://stackoverflow.com/questions/3963930/ruby-rails-how-to-convert-seconds-to-time

module Jekyll
  module SecondsTimeFilter
    def seconds_time(seconds)
      Time.at(seconds).utc.strftime("%I:%M%p")
    end
  end
end

Liquid::Template.register_filter(Jekyll::SecondsTimeFilter)