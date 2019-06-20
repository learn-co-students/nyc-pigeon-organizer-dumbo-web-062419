# binding.pry
require 'pry'

# data
pigeon_data = {
  # color_gender_lives_key
  :color => {
    # col_gen_liv_description_key
    :purple => ["Theo", "Peter Jr.", "Lucky"], # names
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  # color_gender_lives_key
  :gender => {
    # col_gen_liv_description_key
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  # color_gender_lives_key
  :lives => {
    # col_gen_liv_description_key
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}


def nyc_pigeon_organizer(data)
  # write your code here!
  organized_pigeon_list = {}

  data.each do |color_gender_lives_key, color_gender_lives_values|
    color_gender_lives_values.each do |col_gen_liv_description_key, names|
      names.each do |name|
        if organized_pigeon_list[name] == nil
          organized_pigeon_list[name] = {}
          
          # ||= checks to see if organized_pigeon_list[name][color_gender_lives_key] is an array
          # If it is, skip this line
          # If not, set organized_pigeon_list[name][color_gender_lives_key] = []
          # organized_pigeon_list[name][color_gender_lives_key] ||= []
          organized_pigeon_list[name][color_gender_lives_key] = []

        elsif organized_pigeon_list[name].has_key?(color_gender_lives_key) == false
          organized_pigeon_list[name][color_gender_lives_key] = []
        end

          organized_pigeon_list[name][color_gender_lives_key] << col_gen_liv_description_key.to_s

      end

    end
  
  end

  organized_pigeon_list
end

# Expected result:
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
