include Math

class Neuron

  @@value = 0
  @@weights = []
  @@bias = 0

  def sigmoid(x)
    1/(1+Math::E**x)
  end

  def initialize(lastLayerCount)
    @@weights = Array.new(lastLayerCount) { rand(1..1000)/100.0 } 
    @@bias = rand(1.1000)/100.0
  end

  def update(lastLayer)
    @@value = sigmoid( (weights.zip(lastLayer).map { |weight, neuron| weight*neuron }).sum + @@bias )
  end

end
