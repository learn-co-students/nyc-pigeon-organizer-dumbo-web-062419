require 'pry'

def nyc_pigeon_organizer(data)
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
end

def nyc_pigeon_organizer (data)
  new_hash = {}

  data.each do |descriptor_keys, descriptor_values|
    descriptor_values.each do |options, array|
      #binding.pry
      array.each do |name|
        new_hash[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  new_keys = new_hash.keys
  #binding.pry
  data[:color].each do |bird_color, names|
    names.each do |bird_name|
      #binding.pry
      new_keys.each do |item|
        #binding.pry
        if bird_name === item
          new_hash[item][:color] << bird_color.to_s
        end
      end
    end
  end
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      new_hash.each do |item|
        if bird_name === item
          new_hash[item][:gender] << gender.to_s
        end
      end
    end
  end
  data[:lives].each do |location, names|
    names.each do |bird_name|
      new_keys.each do |item|
        if bird_name === item
          new_hash[item][:lives] << location
        end
      end
    end
  end
  return new_hash
end
