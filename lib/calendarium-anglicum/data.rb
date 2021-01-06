
module CalendariumAnglicum
  class Data
    extend CalendariumAnglicum::Enum

    class SanctoraleFile < CalendariumRomanum::Data::SanctoraleFile
      def initialize(base_name)
        super(base_name)

        @path = File.expand_path('../../data/' + base_name, File.dirname(__FILE__))
      end
    end

    CHAIR_ST_PETER = SanctoraleFile.new 'ordinariate-en.txt'
    #OUR_LADY_WALSHINGHAM = SanctoraleFile.new 'our-lady-of-walshingham.txt'
    #ROMAN_RITE_VII = SanctoraleFile.new 'en.txt'
    values(index_by: :siglum) do
      [
        CHAIR_ST_PETER
      ]
    end
  end
end
