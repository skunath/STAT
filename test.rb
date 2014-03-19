require 'rubygems'
require 'neography'


@neo = Neography::Rest.new

node1 = @neo.create_node("character" => "ː")