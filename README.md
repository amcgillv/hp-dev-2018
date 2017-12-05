# README

Wizkids Overview
================

This application is part of the Code Sample that students provide as part of the Code2040 Fellows Application. Write the four methods below to gain access to the next step of the code sample (the collaboration repository).

Getting Started
---------------
The starter app is a very small Ruby app that is based on Harry Potter data. We're sorry that this year we only offer the app in Ruby--next year we'll offer the app in a variety of languages--but this year you're stuck with Ruby (actually a pretty great language).

This is what you need to do to get started:

- Install Ruby 2.4.1 <a href="https://www.ruby-lang.org/en/downloads/"  target="_blank">You can download it here</a>
- Install bundler (`gem install bundler`)
- Install the bundle (`bundle install`)

Getting Access to the Collaborative Repository
----------
- Copy your secret from step 1 of the Fellows application (fellows.code2040.org) and paste it into secret.json (`data/secret.json`).

- Open the spell.rb file (`models/spell.rb`) and write four methods (see details below). These are four short methods (1-10 lines each) that are each a little bit of basic array and string manipulation. Think of these as warm ups. They are not the most important part of the overall code sample, so don't hesitate to reach out with questions if you get stuck. We're here to help and we're rooting for you!

- As you write each of these four methods you can run this command to see your access tokens: `bundle exec ruby spell_checker.rb`. If your test suite for a spell is passing, the access token is correct and you can paste the token into your fellowship application to validate it. Once all four are validated you'll receive an invitation to the collaboration repository.

Detailed Information On Each Spell
-----------------------------------

- Reverse: The first one is straightforward. You’re going to reverse the name of a spell. That is, if the spell's name is “protego”, you’re going to return “ogetorp”. You'll find the method you need to write in the file 'spell.rb'. To get the token for this challenge run `bundle exec ruby spell_checker.rb -reverse`. To run the automated tests for this spell use `bundle exec rspec -t reverse .`

_Hint: There’s more than one way to skin a cat. However you reverse the string, all that matters is that it’s flipped around accurately. That said, you can do this work with very little code. There’s no shame in doing it the one-line way--if you can figure out how._

- Counter: The next one is a counter exercise where you're going to count how many times a spell was said. This is a little array exercise. You'll find the method you need to write in the file 'spell.rb'. To get the token for this challenge run `bundle exec ruby spell_checker.rb -counter`. To run the automated tests for this spell use `bundle exec rspec -t counter .`

- Letter: The next exercise asks you to find the names of all spells that start with the same letter as a given spell. For this one you'll need to combine a little array work and a little string work. You'll find the method you need to write in the file 'spell.rb'. To get the token for this challenge run `bundle exec ruby spell_checker.rb -letter`. To run the automated tests for this spell use `bundle exec rspec -t letter .`

_Hint: You’ll need a little string-fu to complete this challenge. But rest assured: comparing the beginnings of strings is a common task. Standard libraries might even have some code to help you do this._

- Lookup: In this last exercise you'll be given a mention (a time a spell was said in the books) and be asked to lookup the spell itself. You can do this by matching the spell to the mention using the name of the spell. You'll find the method you need to write in the file 'spell.rb'. To get the token for this challenge run `bundle exec ruby spell_checker.rb -lookup`. To run the automated tests for this spell use `bundle exec rspec -t lookup .`

A Few Tips
----------------

- Outside reference materials are encouraged—they’re a normal part of development. Don’t be shy to use Google.

- The Ruby docs for <a href="https://ruby-doc.org/core-2.4.1/String.html" target="_blank">String</a> and <a href="https://ruby-doc.org/core-2.4.1/Array.html" target="_blank">Array</a> are your friends!

- <a href="https://medium.com/@chrisrodz35/a-guide-to-picking-up-new-programming-skills-2f1ff142d17f" target="_blank">Here’s a great post on teaching yourself</a>, by 2014 Fellow Christian Rodriguez, to pump up your confidence.

- As you work you should continue to run the test suite (`bundle exec rspec .`) until it is all passing.

- Always use the class methods Spell.data and Mention.data to load the JSON. If you load the JSON a different way within your methods, the tests may not pass.

A Few More Tips From Other Students
----------------
- A good post on [getting setup](https://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/) on Mac

- If you have trouble getting the app setup on your computer, consider a cloud environment like [Cloud9](https://c9.io/). One student reported it cut the setup time from hours to five minutes.

Data
---------------
The challenge uses a data set from Tableau. You can find the raw data in the `/data` directory. The dataset we chose is lighthearted and hopefully fun to explore. It's the spells of Harry Potter and all the times a spell was said in the books. You can see a visualization of the data on the home page. Play around with it to get a sense for what's in the data and to come up with some fun ideas for what to do.
# hp-dev-2018
