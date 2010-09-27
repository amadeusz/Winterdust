def odczytaj(plik)
	dane = []
	f = File.open(plik, "r") 
	f.each_line { |linia| dane << Iconv.conv("UTF8", "IBM852", linia.strip) }
	return dane
end

def parser_vat(plik)
	dane = odczytaj(plik)
	
#	3.times { dane.delete_at(0) }
#	dane.each_with_index { |linia, i| dane[i] = linia.split("\t") }
#	
#	dane_new = []
#	dane.each { |linia|
#		dane_new << {
#			:id => linia[0].match('\$([0-9]*)')[1].to_i,
#			:nazwa => linia[1].to_s.strip,
#			:podatek => linia[2].to_i,
#			:grupa => linia[3].to_i,
#			:platnosc => linia[4].to_i,
#			:jednostka => linia[5].to_i,
#			:kod => linia[7].to_s,
#			:cena => linia[8].to_i,
#			:bl => linia[6].to_i,
#			:op => linia[9].to_i
#		}
#	}

	dane_new
end

def parser_danych(plik)
	dane = odczytaj(plik)
	
	3.times { dane.delete_at(0) }
	dane.each_with_index { |linia, i| dane[i] = linia.split("\t") }
	
	dane_new = []
	dane.each { |linia|
		dane_new << {
			:id => linia[0].match('\$([0-9]*)')[1].to_i,
			:nazwa => linia[1].to_s.strip,
			:podatek => linia[2].to_i,
			:grupa => linia[3].to_i,
			:platnosc => linia[4].to_i,
			:jednostka => linia[5].to_i,
			:kod => linia[7].to_s,
			:cena => linia[8].to_i,
			:bl => linia[6].to_i,
			:op => linia[9].to_i
		}
	}

	dane_new
end

def raport
	dane = odczytaj(Rails.root + 'RAPORT.TXT')
	dane[1].match('#([0-9]*)	; (.*)')
end

def wykonaj(polecenie)
	`#{Rails.root}/call/#{polecenie} #{Rails.root}/call/#{polecenie}.in #{Rails.root}/call/#{polecenie}.out`
	flash[:notice] = 'Elzab: '+ raport[2]
end

class CallController < ApplicationController

	def test
#		wykonaj 'RSTest'
	end
	
	def import
#		wykonaj 'OZegar'
#		wykonaj 'OGrupa'
#		wykonaj 'OJednost'
#		wykonaj 'OPlat'
#		wykonaj 'OZegar'
	
#		wykonaj 'OPodatek'
		@dane = parser_danych(Rails.root + 'call/OPodatek.out')
		@dane.each { |wiersz| 
			#puts wiersz.inspect
		}
	
#		wykonaj 'TowarMax'
		@dane = parser_danych(Rails.root + 'call/TowarMax.out')
		@dane.each { |wiersz| 
			ware = Ware.find_or_create_by_id(wiersz[:id])
			if !ware.nil?
				ware.update_attributes(wiersz)
			end
		}
	end

end
