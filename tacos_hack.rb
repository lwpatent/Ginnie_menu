def build_tacos
	section_name = "Tacos"
	section_items = []

	item = {
				 name: "AL PASTOR",
			   description: "pork, achiote, pineapple",
				 price: "3.50"
				 }
	section_items << item

	item = {
				 name: "CARNITAS",
				 description: "pork, orange, cinnamon",
				 price: "3.50"
				 }
	section_items << item

	item = {
					name: "CHORIZO",
					description: "pork, paprika, cumin, garlic",
					price: "3.50"
					}
	section_items << item

	item = {
				 name: "ASADA",
				 description: "steak, citrus, chile de arbol",
				 price: "5.00"
				 }
	section_items << item

	item = {
					 name: "BARBACOA",
					 description: "beef, cumin, pasilla negra",
					 price: "3.50"
					}
	section_items << item

	item = {
					name: "LENGUA",
					description: "beef tongue, cerveza victoria",
					price: "3.50"
					}
	section_items << item

	item = {
					name: "POLLO",
					description: "chicken, scallion, cilantro",
					price: "3.50"
					}
	section_items << item

	item = {
					name: "CAMARON",
					description: "shrimp, red 'mole', slaw",
					price: "5.00"
					}
	section_items << item

	item = {
					name: "HUITLACOCHE",
					description: "corn 'truffle', corn, scallion",
					price: "3.50"
					}
	section_items << item

	item = {
					name: "RAJAS",
					description: "poblano, onion, crema, cotija",
					price: "3.50"
					}
	section_items << item

	item = {
					name: "CHAPULINES",
					description: "grasshoppers, avocado, tajin",
					price: "3.50"
					}
	section_items << item

	section_hash = { name: section_name, items: section_items }

	return section_hash
end

def build_sides
	section_name = "SIDES/ANTOJITOS"
	section_items = []

	item = {
					name: "TOTPOS",
					description: "hand torn blue masa chips",
					extras: [{addition: "guac", price: "2.00"},{addition: "frijoles", price: "2.00"},{addition: "salsa", price: "1.50"}],
					price: "5.00"
				}
	section_items << item

	item = {
					name: "ELOTE",
					description: "charred corn, cilantro-jalapeno crema, cotija",
					price: "5.00"
				}
	section_items << item

	item = {
					name: "QUINOA",
					description: "jicama, corn, scallion, chile, nopal dressing",
					price: "6.50"
				}
  section_items << item

	section_hash = { name: section_name, items: section_items }

	return section_hash
end

def build_beers
	section_name = "BEER/CERVEZA"
	section_items = []

	item = {
          name: "CORNONA EXTRA",
          price: "7.00"
          }
	section_items << item

	item = {
          name: "CORONA LIGHT",
          price: "6.00"
          }
	section_items << item

	item = {
          name: "NEGRA MODELO",
          price: "6.00"
          }
	section_items << item

	item = {
          name: "PACIFICO",
          price: "6.00"
          }
	section_items << item

	item = {
          name: "TACATE",
          price: "5.00"
          }
	section_items << item

	item = {
            name: "VICTORIA",
            price: "6.00"
            }
	section_items << item

	item = {
           name: "ROTATING CRAFT SELECTION",
           price: "8.00"
           }
  section_items << item

	section_hash = { name: section_name, items: section_items }
return section_hash
end


def build_coffees
	section_name = "COFFEE & TEA"
	section_items = []

	item = {
          name: "ESPRESSO",
          type: [{kind: "shot", price: "3.00"},{kind: "cortado", price: "4.00"},{kind: "latte", price: "5.00"}]
          }
	section_items << item

	item = {
          name: "LA ENDULZADA",
          description: "espresso, condensed milk, ice, shaken",
          price: "5.00"
          }
	section_items << item

	item = {
          name: "GREEN TEA",
          description: "Jasmine Cloud by JoJo Tea",
          price: "3.00"
          }
	section_items << item

	item = {
          name: "ORANGE JUICE",
          description: "Fresh Squeezed Florida OJ",
          price: "5.00"
          }
	section_items << item

	section_hash = { name: section_name, items: section_items }
	return section_hash
end

def build_breakfast
	section_name = "Breakfast"
	section_items = []

	item = {
          name: "HUEVOS A LA MEXICANA",
          description: "scrambled eggs, pico, frijoles, crema, torillas",
          price: "5.00"
          }
	section_items << item

	item = {
          name: "QUESADILLAS DE EPAZOTE",
          description: "queso chihuahua, cotija, epazote, pico, frijoles",
          price: "5.00"
          }
	section_items << item

	item = {
          name: "TOSTADA DE AGUACATE",
          description: "avocado, egg, frijoles, cabbage, cotija",
          price: "6.00"
          }
	section_items << item

	item = {
          name: "CHILAQUILES",
          description: "crispy masa, pollo, salsa roja, eggs, crema",
          price: "6.00"
          }
	section_items << item

	item = {
          name: "TORTILLA DE AGUACATE",
          description: "avocado, queso, chihuahua, cotija, frijoles",
          price: "3.50"
          }
	section_items << item

	section_hash = { name: section_name, items: section_items }
	return section_hash
end

def build_menu
	menu = [ build_tacos(), build_sides(),
	         build_beers(), build_breakfast(),
				 build_coffees()
			  ]
	return menu
end

menu = { sections: build_menu() }
puts  menu[:sections][0][:name] # should output "Tacos"
puts menu[:sections][1][:name] # should output "Sides / Antojitos"
puts menu[:sections][0][:items][0][:name] # should output "Al Pastor"
puts menu[:sections][0][:items][0][:description] # should output "pork, achiote, pineapple"
puts menu[:sections][0][:items][0][:price] # should output 3.50
