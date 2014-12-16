require 'yaml'
require 'pp'

raw_data = File.read('../data/amusement_parks.yml')
hash = YAML.load(raw_data)

pp hash
