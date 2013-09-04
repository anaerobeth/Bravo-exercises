class HomePurchaseOption
  attr_reader :address, :property_value, :selling_price, :down_payment

  def initialize(attributes)
    @address = attributes[:address]
    @property_value = attributes[:property_value]
    @selling_price = attributes[:selling_price]
    @down_payment = attributes[:down_payment]
  end

  #the amount of cash value you have in the home
  #This would be difference in your property's value
  #and your mortgage balance
  def equity_after_sale
    @property_value - required_mortgage
  end

  #the amount of money you must borrow to purchase the home
  def required_mortgage
    @selling_price - @down_payment
  end

  #how much your insurance cost will cost over `years` years
  def insurance_cost(years)
    if pmi_required?
      required_mortgage * PMI_RATE * years
    else
      0
    end
  end

  REQUIRED_EQUITY = 0.2
  PMI_RATE = 0.005
  private
  #determine if the purchaser must pay insurance
  def pmi_required?
    required_mortgage > ((1 - REQUIRED_EQUITY) * equity_after_sale)
  end
end

[
  {
    address: '43 Fenmore Lane',
    property_value: 439000,
    selling_price: 419000,
    down_payment: 20000
  },
  {
    address: '58 Johnson Way',
    property_value: 512000,
    selling_price: 524000,
    down_payment: 105000
  }
].each do |attributes|
  purchase_option = HomePurchaseOption.new(attributes)

  puts "***#{purchase_option.address}***"
  puts "Mortgage Value: #{purchase_option.required_mortgage}"
  puts "2 Year: #{purchase_option.insurance_cost(2)}"
  puts "***"
  puts
end

# 32 Silver Lane, 485000, 490000, 97000
# 45 Fenway Drive, 465000, 460000, 93000
# 54 Denise Drive, 445000, 450000, 98000