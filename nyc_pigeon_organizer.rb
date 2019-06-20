require "pry"

def nyc_pigeon_organizer(data)

  new_hash = {}

  data.each do |att, att_data|
    att_data.each do |info, names_array|
      names_array.each do |name|
        new_hash[name] = {:color => [], :gender => [], :lives => []}
      end
    end  
  end

  # passing in [name] with new_hash added the names too, so the current hash doesnt only have :color :gender and :lives, the hash at this point actually has the names included as well because of that name bit. it currently looks like this -->    new_hash = {name = {color => [], gender => [] and so on.}}

  #but does it deal with duplicates? wouldn't that mean that it would be "Theo", "Peter Jr.", "Lucky", "Theo", "Peter Jr.", "Ms. K", "Queenie", "Andrew", "Ms. K", "Alex", "Queenie", "Alex"...etc? taking all the names as unique items and adding those key value pairs?(color gender lives)

  #question resolved - hashes cannot have duplicate keys. so when the loop comes around to set the name key to theo for the second time, it skips theo because it would be a duplicate key. 



  hash_keys = new_hash.keys

  data[:color].each do |color, names|
    names.each do |each_name|
      hash_keys.each do |thing|
        if each_name == thing 
          new_hash[thing][:color] << color.to_s
        end
      end
    end
  end

  data[:gender].each do |gender, names|
    names.each do |each_name|
      hash_keys.each do |thing|
        if each_name == thing
          new_hash[thing][:gender] << gender.to_s
        end
      end
    end
  end

  data[:lives].each do |hood, names|
    names.each do |each_name|
      hash_keys.each do |thing|
        if each_name == thing
          new_hash[thing][:lives] << hood.to_s
        end
      end
    end
  end
  return new_hash
end


  

=begin
pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

----
pigeon_list = {
  "Theo" => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Subway"]
  },
  "Peter Jr." => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Library"]
  },
  "Lucky" => {
    :color => ["purple"],
    :gender => ["male"],
    :lives => ["Central Park"]
  },
  "Ms. K" => {
    :color => ["grey", "white"],
    :gender => ["female"],
    :lives => ["Central Park"]
  },
  "Queenie" => {
    :color => ["white", "brown"],
    :gender => ["female"],
    :lives => ["Subway"]
  },
  "Andrew" => {
    :color => ["white"],
    :gender => ["male"],
    :lives => ["City Hall"]
  },
  "Alex" => {
    :color => ["white", "brown"],
    :gender => ["male"],
    :lives => ["Central Park"]
  }
}

=end