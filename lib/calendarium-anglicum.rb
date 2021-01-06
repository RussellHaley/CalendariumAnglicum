require 'calendarium-romanum'

module CalendariumAnglicum
  include CalendariumRomanum
end

#~ require 'calendarium-anglicum/i18n_setup'
require 'calendarium-anglicum/version'
require 'calendarium-anglicum/data'
require 'calendarium-anglicum/temporale/celebration_factory'
require 'calendarium-anglicum/temporale/dates'
require 'calendarium-anglicum/temporale'

# convenience shortcut
CA = CalendariumAnglicum
