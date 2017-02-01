module TagebuchesHelper

	def rechnen_menge(lebensmittel, tagebuch)
		
		menge=lebensmittel.menge
		anzahl=tagebuch.anzahl

		i=menge*anzahl
	end

	def rechnen_eiweiß(lebensmittel, tagebuch)
		
		eiweiß=@lebensmittel.eiweiß
		anzahl=tagebuch.anzahl

		i=eiweiß*anzahl
	end

	def rechnen_fett(lebensmittel, tagebuch)
		
		fett=lebensmittel.fett
		anzahl=tagebuch.anzahl

		i=fett*anzahl
	end

	def rechnen_kh(lebensmittel, tagebuch)
		
		kh=lebensmittel.kohlenhydrate
		anzahl=tagebuch.anzahl

		i=kh*anzahl
	end

	def rechnen_kalorien(lebensmittel, tagebuch)
		
		kalorien=lebensmittel.kalorien
		anzahl=tagebuch.anzahl

		i=kalorien*anzahl
	end



end
