require 'calendarium-romanum'
require 'i18n'

module CalendariumAnglicum
  include CalendariumRomanum
end

I18n.config.load_path += Dir[File.expand_path('../config/locales/*.yml', File.dirname(__FILE__))]

require 'calendarium-anglicum/version'
require 'calendarium-anglicum/data'
require 'calendarium-anglicum/temporale/celebration_factory'
require 'calendarium-anglicum/temporale/dates'
require 'calendarium-anglicum/temporale'

# convenience shortcut
CA = CalendariumAnglicum
