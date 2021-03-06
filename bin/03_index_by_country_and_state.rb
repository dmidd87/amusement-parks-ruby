require 'yaml'
require 'pp'

raw_data = File.read('../data/amusement_parks.yml')
hash = YAML.load(raw_data)
parks = hash

result = {}

parks.each do | park |
  result["#{park[:state]}, #{park[:country]}"] ||= []
  result["#{park[:state]}, #{park[:country]}"] << park
end

pp result
