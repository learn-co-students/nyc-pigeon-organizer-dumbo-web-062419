=begin
# collect names
# create hash with names(strings) as keys, "Theo"
# their value is a symbol, :color
# whose value is an array of strings ["purple", "grey"]

1. create new empty hash
2. first layer of hash: data = {}, k = pigeon_data, h = []
3. second layer: h = [], f = :color, :gender, a = []
4. third layer: a = [], n = "Theo", "Peter Jr."
5. if a name (n) hasnt been added, add it as key pointing to new empty hash in new_data
6. if a key (k) hasnt been added, add it as value pointing to an array
7. if a feature (f) hasnt been added, add it to the array and convert symbol to string
8. return new hash
=end
require 'pry'


def nyc_pigeon_organizer(data)

new_data = {}
  data.each do |k, h|
    h.each do |f, a|
      a.each do |n|
        if !new_data.has_key?(n)
          new_data[n] = {}
        end

        if !new_data[n].has_key?(k)
          new_data[n][k] = []
        end

        if !new_data[n][k].include?(f)
          new_data[n][k] << f.to_s
        end
      end
    end
  end
  new_data
end
