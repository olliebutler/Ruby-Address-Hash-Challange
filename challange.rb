# Test address hash

address_hash1 = {
  "subpremise" => "Apt 6",
  "house_number" => "22",
  "house_name" => nil,
  "street_line_1" => "Bailey Rd",
  "street_line_2" => nil,
  "town_or_city" => "Sale",
  "region" => "Greater Manchester",
  "postcode" => "M33 1AX"
}



# Takes an address hash and returns a string of the formatted address. 
def return_string(hash)
    
    hash.each {|key, value| if value.to_s.strip == ''
                                hash.delete(key)
                            elsif (key != 'postcode') 
                                value.concat(",")
                            end}

ml_string = %(#{hash['subpremise']} #{hash['house_name']}
#{hash['house_number']} #{hash['street_line_1']}
#{hash['street_line_2']}
#{hash['town_or_city']}
#{hash['region']}
#{hash['postcode']}
)

    return ml_string.gsub /^$\n/, ''
end


# Print test address string
puts return_string(address_hash1)


