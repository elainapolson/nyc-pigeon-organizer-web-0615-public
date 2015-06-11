def nyc_pigeon_organizer(data)
  new_hash = {}
  pull_names(new_hash, data)
  add_trait_categories(new_hash, data)
  add_details(new_hash, data)

  new_hash
end

def pull_names(new_hash, data)
  data.each do |color_gender_lives, hash|
    hash.each do |traits, names_array|
      names_array.each do |name|
        new_hash[name] = {} 
      end
    end
  end
  new_hash
end

def add_trait_categories(new_hash, data)
  new_hash.each do |name, categories|
    data.each do |categories, details|
      new_hash[name][categories] = []
    end
  end
  new_hash 
end

def add_details(new_hash, data)
  data.each do |categories, hash|
    hash.each do |traits, name_array|
      name_array.each do |name|
        new_hash.each do |names, value|
          if names == name
            new_hash[names][categories] << traits.to_s
          end
        end
      end
    end
  end
end

