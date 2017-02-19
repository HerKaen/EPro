module FooddiariesHelper

	def rechnen_menge(food, fooddiary)
		
		menge=food.menge
		anzahl=fooddiary.anzahl

		i=menge*anzahl
	end

	def rechnen_eiweiß(food, fooddiary)
		
		eiweiß=food.eiweiß
		anzahl=fooddiary.anzahl

		i=eiweiß*anzahl
	end

	def rechnen_fett(food, fooddiary)
		
		fett=food.fett
		anzahl=fooddiary.anzahl

		i=fett*anzahl
	end

	def rechnen_kh(food, fooddiary)
		
		kh=food.kohlenhydrate
		anzahl=fooddiary.anzahl

		i=kh*anzahl
	end

	def rechnen_kalorien(food, fooddiary)
		
		kalorien=food.kalorien
		anzahl=fooddiary.anzahl

		i=kalorien*anzahl
	end

end
