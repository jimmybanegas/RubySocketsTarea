class TasaDeCambio
  require 'net/http'
  require 'uri'

  def self.open(url)
    Net::HTTP.get(URI.parse(url))
  end

  page_content = open('http://www.interbanca.hn/INTERBANCA/INTERBANCA/BE_P_MOSTRARFACTOR?Pn_Empresa=1')

  text=page_content
  text.gsub!(/\r\n?/, "\n")
  text.each_line do |line|
    if line.to_s.include?'Lps.'
      puts line.to_s.split('Lps.')
    end
  end

end