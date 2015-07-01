# Calculate time difference
#
# Input: Any time format, 'Time' should recognize it.
# Example: {{ time_a | time_diff:time_b }}

module Jekyll
  module TimeDiffFilter
    def time_diff(a, b)

      a_time = Time.parse(a)
      b_time = Time.parse(b)

      diff = a_time - b_time
      Time.at(diff).utc.strftime("%I:%M")
    end
  end
end

Liquid::Template.register_filter(Jekyll::TimeDiffFilter)