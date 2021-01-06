module CalendariumAnglicum
  class Temporale < CalendariumRomanum::Temporale
    class << self
      # TODO this is basically copy-pasted piece of CalendariumRomanum::Temporale.
      #   CalendariumRomanum should really provide a better way to override the list of
      #   movable feasts.
      #
      # @api private
      def celebrations
        @celebrations ||=
          begin
            [
              :nativity,
              :holy_family,
              :mother_of_god,
              :epiphany,
              :baptism_of_lord,
              :septuagesima,
              :sexagesima,
              :quinquagesima,
              :ash_wednesday,
              :good_friday,
              :holy_saturday,
              :passion_sunday,
              :palm_sunday,
              :easter_sunday,
              :rogation_sunday,
              :ascension,
              :pentecost,
              :holy_trinity,
              :corpus_christi,
              :mother_of_church,
              :sacred_heart,
              :christ_king,
              :immaculate_heart
            ].collect do |symbol|
              date_method = symbol
              C.new(
                date_method,
                CalendariumAnglicum::Temporale::CelebrationFactory.public_send(symbol)
              )
            end
          end
      end
    end

    # TODO again, copy-pasted piece of CalendariumRomanum::Temporale.
    #   CalendariumRomanum should really provide a better way to generate the date methods
    #   when adding custom temporale solemnities.
    (celebrations.collect(&:date_method) + [:first_advent_sunday])
      .each do |feast|
      if SUNDAY_TRANSFERABLE_SOLEMNITIES.include? feast
        define_method feast do
          Dates.public_send feast, year, sunday: transferred_to_sunday?(feast)
        end
      elsif feast == :baptism_of_lord
        define_method feast do
          Dates.public_send feast, year, epiphany_on_sunday: transferred_to_sunday?(:epiphany)
        end
      else
        define_method feast do
          Dates.public_send feast, year
        end
      end
    end
  end
end
