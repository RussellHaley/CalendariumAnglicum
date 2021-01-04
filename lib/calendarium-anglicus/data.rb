
module CalendariumAnglicus
  class Data
    extend CalendariumAnglicus::Enum

    class SanctoraleFile < CalendariumRomanum::Data::SanctoraleFile
      def initialize(base_name)
        super(base_name)

        @path = File.expand_path('../../data/' + base_name, File.dirname(__FILE__))
      end
    end

    CHAIR_ST_PETER = SanctoraleFile.new 'ordinariate-en.txt'
    #OUR_LADY_WALSHINGHAM = SanctoraleFile.new 'our-lady-of-walshingham.txt'
    #ROMAN_RITE_VII = SanctoraleFile.new 'en.txt'
    #~ PRAHA = SanctoraleFile.new 'praha.txt'
    #~ SUMPERK = SanctoraleFile.new 'sumperk.txt'

    values(index_by: :siglum) do
      [
        CHAIR_ST_PETER
      ]
    end
  end
end


#~ module CalendariumRomanum
  #~ # allows easy access to bundled data files
  #~ class Data < Enum

    #~ class SanctoraleFile
      #~ def initialize(base_name)
        #~ @siglum = base_name.sub(/\.txt$/, '')
        #~ @path = File.expand_path('../../data/' + base_name, File.dirname(__FILE__))
      #~ end

      #~ attr_reader :siglum, :path

      #~ def load
        #~ SanctoraleLoader.new.load_from_file(@path)
      #~ end
    #~ end

    #~ values(index_by: :siglum) do
      #~ # only calendars of broader interest have constants defined
      #~ [
        #~ GENERAL_ROMAN_LATIN = SanctoraleFile.new('universal-la.txt'),
        #~ GENERAL_ROMAN_ENGLISH = SanctoraleFile.new('universal-en.txt'),
        #~ GENERAL_ROMAN_FRENCH = SanctoraleFile.new('universal-fr.txt'),
        #~ GENERAL_ROMAN_ITALIAN = SanctoraleFile.new('universal-it.txt'),
        #~ GENERAL_ROMAN_SPANISH = SanctoraleFile.new('universal-es.txt'),
        #~ CZECH = SanctoraleFile.new('czech-cs.txt')
      #~ ] \
      #~ +
        #~ %w(
          #~ czech-brno-cs.txt
          #~ czech-budejovice-cs.txt
          #~ czech-cechy-cs.txt
          #~ czech-hradec-cs.txt
          #~ czech-litomerice-cs.txt
          #~ czech-morava-cs.txt
          #~ czech-olomouc-cs.txt
          #~ czech-ostrava-cs.txt
          #~ czech-plzen-cs.txt
          #~ czech-praha-cs.txt
        #~ ).collect {|basename| SanctoraleFile.new(basename) }
    #~ end
  #~ end
#~ end
