player_emotions = {fear: rand(1..3), anger: rand(1..3), sadness: rand(1..3), joy: rand(1..3), disgust: rand(1..3), surprise: rand(1..3), trust: rand(1..3), anticipation: rand(1..3)}

class Person

  def initialize(name, emotions)
    @name = name
    @emotions = emotions
  end

  def emotions
    @emotions
  end

  def feelings
    @emotions.each do |key, value|
      puts "#{@name} is feeling a #{level(value)} amount of #{key}."
    end
  end


end

puts "What's your person's name?"
name = gets.chomp
person = Person.new(name, player_emotions)

def level(emotion)
  if emotion == 1
    return "low"
  elsif emotion == 2
    return "medium"
  elsif emotion == 3
    return "high"
  end
end

person.feelings
