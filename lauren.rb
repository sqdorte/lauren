include Math

class Neuron

  def sigmoid(x)
    1/(1+Math::E**x)
  end

  def initialize(lastLayerCount=0)
    if lastLayerCount != 0
      @weights = Array.new(lastLayerCount) { rand(1..1000)/100.0 } 
      @bias = rand(1.1000)/100.0
    end
  end

  def update(lastLayer)
   @value = sigmoid((@weights.zip(lastLayer).map { |weight, neuron| weight*neuron }).sum + @bias)
  end

end
