module Type
  NORMAL = 0
  FIRE = 1
  WATER = 2
  GRASS = 3
  FLYING = 4
  PSYCHIC = 5
  POISONOUS = 6
  MYTHICAL = 7
  PREHISTORIC = 8
  CANNIBAL = 9

  def self.list
    Hash[self.constants.sort.collect { |constant| [constant.to_s.titleize, const_get(constant)] }]
  end

  def self.name(val)
    constants.find { |constant| const_get(constant) == val }.to_s.titleize
  end
end
