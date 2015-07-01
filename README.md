# Jekyll Time Plugins

A collection of plugins to calculate time based data. Developed for [My Morning Routine - Interview Statistics](http://mymorningroutine.com/statistics/), available for anyone.

## Installation

Copy the `.rb` plugin files into the `/_plugins/` directory of your Jekyll project.

## The Plugins

### Time to Seconds

Convert any time (12h/24h) to seconds for further calculations.

`{{ '11:00PM' | time_seconds }}` => 82800

### Seconds to Time

Convert seconds to any time format for the final output.

`{{ 82800 | seconds_time }}` => 11:00PM

### Time Difference

Calculate the time difference of two time values.

`{{ '9:00AM' | time_diff:'11:30AM' }}` => 2:30h

You can also mix time formats.

`{{ '2:00PM' | time_diff:'18:00' }}` => 4:00h

**Note:** Switch to a date object, if you’d like to calculate differences of over 24 hours.

## Combine Them

As always, you can use multiple Liquid filters at once. They are applied from left to right.

`{% assign sleep_seconds = post.data.wakeup | time_diff:post.data.bedtime | time_seconds %}`

