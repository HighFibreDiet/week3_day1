def allergies(score)
  allergic_to = []
  allergies = {1 => 'eggs', 2 => 'peanuts', 4 => 'shellfish', 8 => 'strawberries', 16 => 'tomatoes', 32 => 'chocolate', 64 => 'pollen', 128 => 'cats'}

  score_remainder = score

  allergies.reverse_each do |value, allergy|
    unless score_remainder - value < 0
      score_remainder -= value
      allergic_to << allergy
    end
  end

  allergic_to
end
