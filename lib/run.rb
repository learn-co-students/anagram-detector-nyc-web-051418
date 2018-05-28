require "pry"
require_relative "anagram.rb"

  listen = Anagram.new("listen")
  listen.match(%w(enlists google inlets banana))
  #
  #  => ["inlets"]

pry.Start
