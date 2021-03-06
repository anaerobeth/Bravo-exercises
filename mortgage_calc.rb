require 'CSV'

class HomePurchaseOption
  attr_reader :address, :property_value, :selling_price, :down_payment

  MORTGAGE_INSURANCE_RATE = 0.005
  MORTGAGE_INSURANCE-THRESHOLD = 0.2

 def initialize(address, property_value, selling_price, down_payment)
    @address = address
    @property_value = property_value
    @selling_price = selling_price
    @down_payment = down_payment
  end

  # The amount of cash value you have in the home
  # This would be difference in your property's value
  # and your mortgage balance
  def equity_after_sale
    property_value - (selling_price - down_payment)
  end

  # the amount of money you must borrow to purchase the home
  def required_mortgage
    selling_price - down_payment
  end

  # How much your insurance cost will cost over `years` years
  # Mortgage insurance is 0.5% per year of the total mortgage.
  def insurance_cost(years)
    years * MORTGAGE_INSURANCE_RATE * required_mortgage
  end

  # Determine if the purchaser must pay insurance
  # If you have less than 20% of your property's value in equity,
  # you typically have to pay mortgage insurance
  def pmi_required?
    equity_after_sale < property_value * MORTGAGE_INSURANCE-THRESHOLD
  end
end

CSV.foreach('property_details.csv', headers: true) do |row|

  address = row[0]
  property_value = row[1].to_f
  selling_price = row[2].to_f
  down_payment = row[3].to_f

  home = HomePurchaseOption.new(address, property_value, selling_price, down_payment)
  puts ''
  puts "***#{address}***"
  puts "Mortgage: #{home.required_mortgage}"
  if home.pmi_required?
    puts "2 Years of insurance: #{home.insurance_cost(2)}"
  end
end

# Sample output
# ***43 Fenmore Lane***
# Mortgage: 399000
# 2 Years of Insurance: 3990

# *** 58 Johnson Way ***
# Mortgage: 419000
# 2 Years of Insurance: 0
