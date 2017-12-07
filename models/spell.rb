require 'json'
require_relative 'mention'

class Spell

  def initialize(params)
    @classification = params["Classification"]
    @effect = params["Effect"]
    @name = params["Spell(Lower)"]
    @formatted_name = params["Spell"]
  end

  attr_reader :classification, :effect, :name, :formatted_name

  def self.data
    path = 'data/spells.json'
    file = File.read(path)
    JSON.parse(file)
  end

  def self.random
    new(data.sample)
  end

  def self.effects
    data.map{|el| el["Effect"]}
  end

  # These two methods are used to validate answers
  def self.is_spell_name?(str)
    data.index { |el| el["Spell(Lower)"] == (str.downcase) }
  end

  def self.is_spell_name_for_effect?(name, effect)
    data.index { |el| el["Spell(Lower)"] == name && el["Effect"] == effect }
  end

  # To get access to the collaborative repository, complete the methods below.

  # Spell 1: Reverse
  # This instance method should return the reversed name of a spell
  # Tests: `bundle exec rspec -t reverse .`
  def reverse_name
    toReturn = String.new
    for element in @name.chars
      toReturn.insert(0, element)
    end
    toReturn
  end

  # Spell 2: Counter
  # This instance method should return the number
  # (integer) of mentions of the spell.
  # Tests: `bundle exec rspec -t counter .`
  def mention_count
    count = 0
    for m in Mention.data
      if m["Spell"].eql?(@name)
        count += 1
      end
    end
    count
  end

  # Spell 3: Letter
  # This instance method should return an array of all spell names
  # which start with the same first letter as the spell's name
  # Tests: `bundle exec rspec -t letter .`
  def names_with_same_first_letter
    
    toReturn = Array.new []
    if @name.length > 0
      for s in Spell.data
        if s["Spell(Lower)"].start_with?(@name.chars[0])
         
          toReturn.push(s["Spell(Lower)"])
        end
      end
    end
    toReturn
  end

  # Spell 4: Lookup
  # This class method takes a Mention object and
  # returns a Spell object with the same name.
  # If none are found it should return nil.
  # Tests: `bundle exec rspec -t lookup .`
  def self.find_by_mention(mention)
    for s in Spell.data
      if s["Spell(Lower)"].eql?(mention.name)
        return Spell.new({"Classification" => s["Classification"],
              "Effect" => s["Effect"],
              "Spell(Lower)" => s["Spell(Lower)"],
              "Spell" => s["Spell"]})
      end
    end
    nil
  end

end
