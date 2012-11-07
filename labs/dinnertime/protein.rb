class Protein < Food
  attr_accessor :animal_type, :calories_per_serving, :number_of_servings, :prep_time

  def initialize (t, c, s, p)
  	@animal_type = t
  	@calories_per_serving = c
  	@number_of_servings = s
  	@prep_time = p
  end
end