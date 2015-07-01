# Convert time to seconds
#
# Input: Any time format, 'Time' should recognize it.
# Example: {{ input | time_seconds }}
# Ref: http://stackoverflow.com/questions/3824369/ruby-convert-time-to-seconds

module Jekyll
  module TimeSecondsFilter
    def time_seconds(time)
      t = Time.parse(time)
      s = t.hour * 3600 + t.min * 60 + t.sec
    end
  end
end

Liquid::Template.register_filter(Jekyll::TimeSecondsFilter)