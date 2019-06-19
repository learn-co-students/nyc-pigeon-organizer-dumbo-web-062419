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
  final = {}

  data.each do |first_level, all_other|
    all_other.each do |category, array|
      #binding.pry
      array.each do |name|
        final[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  x = final.keys
  #binding.pry
  data[:color].each do |bird_color, names|
    names.each do |bird_name|
      binding.pry
      x.each do |item|
        if bird_name === item
          final[item][:color] << bird_color.to_s
        end
      end
    end
  end
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][:gender] << gender.to_s
        end
      end
    end
  end
  data[:lives].each do |location, names|
    names.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][:lives] << location
        end
      end
    end
  end
  return final
end
