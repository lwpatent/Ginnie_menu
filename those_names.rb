def capitalize_each( name_arr )
  name_arr.map do | name |
    name.capitalize!
  end
end



names = ['romeo', 'oedipus', 'hansel', 'gretel']
names = capitalize_each( names )
p names
#=> ['Romeo', 'Oedipus', 'Hansel', 'Gretel']


# Below, we have an array of lowercase names.
# Write a method, capitalize_each that takes an array as an argument,
# and returns a new array with
# each name correctly capitalized.

#  USE .MAP
