class TasaDeCambio

  def self.getTasa
    require 'net/http'
    require 'uri'

    def self.open(url)
      Net::HTTP.get(URI.parse(url))
    end

    page_content = open('http://www.interbanca.hn/INTERBANCA/INTERBANCA/BE_P_MOSTRARFACTOR?Pn_Empresa=1')

    text=page_content
    a = text.gsub!(/\r\n?/, "\n")

    array = []

    text.each_line do |line|
      if line.to_s.include?'Lps.'
        array.push(line.to_s.split('Lps.'))
      end
    end

    return array[1].to_s.delete('<font face="Verdana, Arial, Helvetica, sans-serif" size="">').to_s[7..13]
  end

end