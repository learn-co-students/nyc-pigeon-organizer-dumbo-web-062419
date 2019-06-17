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

def nyc_pigeon_organizer(data)
pigeon_list = {}
data.each do |key, value|
    value.each do |attributes, pigeons|
          #binding.pry
      pigeons.each do |name|
        #binding.pry
        if pigeon_list[name]

        else
          pigeon_list[name] = {}
          if pigeons.include?(name)
            pigeon_list[name][:key] = attributes
          else
      end
    end
  end
end
