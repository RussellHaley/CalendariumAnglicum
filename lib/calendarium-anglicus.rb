require 'calendarium-romanum'

module CalendariumAnglicus
  include CalendariumRomanum
end

require 'calendarium-anglicus/version'
require 'calendarium-anglicus/data'
require 'calendarium-anglicus/temporale/celebration_factory'
require 'calendarium-anglicus/temporale/dates'
require 'calendarium-anglicus/temporale'

# convenience shortcut
CA = CalendariumAnglicus
