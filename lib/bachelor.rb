require 'pry'

def get_first_name_of_season_winner(data, season)
  
    data.each do |seasons, contestants|
      if seasons == season
        contestants.each do |contestant|
          if contestant["status"] == "Winner"
            return contestant["name"].split.first 
          end 
      end 
    end 
    end
 
    return nil 
end

def get_contestant_name(data, occupation)
  
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end 
    end 
  end 

  return nil 

end

def count_contestants_by_hometown(data, hometown)

count = 0 

  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown 
        count += 1 
      end 
    end 
  end 

return count 

end

def get_occupation(data, hometown)

  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown 
        return contestant["occupation"]
      end 
    end 
  end 

  return nil 

end

def get_average_age_for_season(data, season)
  
  ages = [] 

  data.each do |seasons, contestants|
    if seasons == season 
    contestants.each do |contestant|
      ages.push (contestant["age"].to_f)
    end 
  end 
end 

sum_of_all_ages = ages.reduce(0) {|sum, age| sum + age }

average_age = (sum_of_all_ages / ages.length).round(0)
 

return average_age
# if average_age.class == Integer
#   return average_age
# else 
#   return average_age.to_f
# end 

end
