class Money
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def convert
    {
      'Dollar' => 1,
      'Euro' => 0.75792,
      'British Pound' => 0.64345,
      'Canadian Dollar' => 1.05458,
      'Japanese Yen' =>99.3463
    }.each do |currency, rate|
      conversion = (amount * rate).round(2)
      if conversion > 1 && currency != 'Japanese Yen'
        currency += 's'
      end
      # output conversions
      print "You have #{conversion} #{currency}"
      puts
    end
  end
end

# Ask for dollar input
puts "How much money in US Dollars do you have?"
print "> "
input = gets.chomp.to_f
money = Money.new(input)

# call method to convert to different currencies
money.convert

## choose originating currency
class CurrencyChooser
  attr_accessor :currencies, :originating_currency, :desired_currency, :amount

  def initialize(currencies)
    @currencies = currencies
  end

  def prompt
    conversion_array = []
    puts
    ## ask for input
    puts "Choose Your Originating Currency"

    currencies.each_with_index do |currency, index|
      print "#{index + 1}. #{currency}"
      puts
    end
    print "> "
    input = gets.chomp.to_i
    originating_currency = currencies[input - 1]
    currencies.delete(originating_currency)

    ## choose desired currency
    puts "Choose Your Desired Currency"

    currencies.each_with_index do |currency, index|
      print "#{index + 1}. #{currency}"
      puts
    end
    print "> "
    input = gets.chomp.to_i
    desired_currency = currencies[input - 1]
    puts "How much money in it do you have?"
    print "> "
    amount = gets.chomp.to_f
    conversion_array = [originating_currency, desired_currency, amount]
    return conversion_array
  end

  def convert(conversion_array)
    originating_currency = conversion_array[0]
    desired_currency = conversion_array[1]
    amount = conversion_array[2]
    amount_in_usd = 0
    rates =
      {
        'Dollar' => 1,
        'Euro' => 0.75792,
        'British Pound' => 0.64345,
        'Canadian Dollar' => 1.05458,
        'Japanese Yen' =>99.3463
      }

    rates.each do |currency, rate|
      if currency == originating_currency
        print currency, originating_currency
        puts
        amount_in_usd = amount * 1/rate
      end
    end

    rates.each do |currency, rate|
      if currency == desired_currency
        print currency, desired_currency
        puts
        conversion = (amount_in_usd * rate).round(2)
        puts "You have exchanged #{amount} #{originating_currency} for #{conversion} in #{desired_currency}."
      end
    end

  end

end

currencies = ['Dollar', 'Euro', 'British Pound', 'Canadian Dollar',
'Japanese Yen']
chooser = CurrencyChooser.new(currencies)
conversion_array = chooser.prompt
#puts conversion_array
chooser.convert(conversion_array)

