module ExperienceFunction
  FAST = 0
  MEDIUM_FAST = 1
  MEDIUM_SLOW = 2
  SLOW = 3

  def self.list
    Hash[self.constants.sort.collect { |constant| [constant.to_s.titleize, const_get(constant)] }]
  end

  def self.name(val)
    constants.find { |constant| const_get(constant) == val }.to_s.titleize
  end
end
