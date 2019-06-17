def nyc_pigeon_organizer(data)
  # write your code here!
  new_pig = {}

  data.each do |meta, d_point|
  	d_point.each do |adjnoun, names|
  		names.each do |name|

  			unless new_pig.has_key? name
	  			new_pig[name] = {}
  			end
  			unless new_pig[name].has_key? meta
  				new_pig[name][meta] = []
  			end
  				new_pig[name][meta] << adjnoun.to_s
  		end
  	end
  end
  new_pig
end