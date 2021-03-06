require 'yaml'
require 'pp'

raw_data = File.read('../data/amusement_parks.yml')
hash = YAML.load(raw_data)
parks = hash

result = {}

  parks.each do |park|
    result[park[:id]] ||= {}
    result[park[:id]].merge!(park)
  end

pp result
