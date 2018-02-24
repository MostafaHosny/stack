require './stack.rb'
class Extras < Stack
  
  def initialize
    super
  end

  def mean
    return nil if values.empty?
    (values.inject(:+).to_f / size)
  end
end