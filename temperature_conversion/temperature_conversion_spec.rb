require 'rspec'

describe TemperatureConversion do
    it 'converts between Fahrenheit and Celsius' do
      expect(TemperatureConversion.new(0).convert).to eql(32)
    end
end
