module Status
  NONE = 0
  BURN = 1
  FREEZE = 2
  PARALYSIS = 3
  POISON = 4
  SLEEP = 5
  CONFUSION = 6

  def self.list
    Hash[self.constants.sort.collect { |constant| [constant.to_s.titleize, const_get(constant)] }]
  end

  def self.name(val)
    constants.find { |constant| const_get(constant) == val }.to_s.titleize
  end
end
