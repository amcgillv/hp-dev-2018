#!/usr/bin/env ruby

require 'json'
require './models/spell.rb'
require './models/mention.rb'
require 'digest'

class SpellChecker

  def self.load_secret
    path = './data/secret.json'
    file = File.read(path)
    JSON.parse(file) rescue {}
  end

  def self.check
    secret = load_secret.freeze
    secret_spells = secret["spells"].freeze
    secret_mentions = secret["mentions"].freeze

    check1 = Digest::SHA1.hexdigest(secret_spells.map{ |el| Spell.new(el).reverse_name }.join) rescue nil
    check2 = Digest::SHA1.hexdigest(secret_spells.map{ |el| Spell.new(el).mention_count }.reduce(:+).to_s) rescue nil
    check3 = Digest::SHA1.hexdigest(secret_spells.map{ |el| Spell.new(el).names_with_same_first_letter.count }.reduce(:+).to_s) rescue nil
    check4 = Digest::SHA1.hexdigest(secret_mentions.map{ |el| Spell.find_by_mention(Mention.new(el)).effect }.join) rescue nil

    # Return nil for default state (20 spells & 20 mentions)
    check1 = nil if '17a994c615667ed355e32c486d7313e3d277f93b' == check1
    check2 = nil if '17a994c615667ed355e32c486d7313e3d277f93b' == check2
    check3 = nil if '91032ad7bbcb6cf72875e8e8207dcfba80173f7c' == check3
    check4 = nil if '17a994c615667ed355e32c486d7313e3d277f93b' == check4

    [check1, check2, check3, check4]
  end

end

if ARGV.include?("-reverse")
  puts SpellChecker.check[0]
elsif ARGV.include?("-counter")
  puts SpellChecker.check[1]
elsif ARGV.include?("-letter")
  puts SpellChecker.check[2]
elsif ARGV.include?("-lookup")
  puts SpellChecker.check[3]
else
  (0..3).each { |i| puts "Challenge #{i+1}:", SpellChecker.check[i] }
end
