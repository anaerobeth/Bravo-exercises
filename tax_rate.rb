require 'pry'
tax_summary =
[
  {
    first_name: 'Johnny',
    last_name: 'Smith',
    annual_income: 120000
  },
  {
    first_name: 'Liz',
    last_name: 'Lemon',
    annual_income: 95000
  },
  {
    first_name: 'Jane',
    last_name: 'Doe',
    annual_income: 140000
  },
  {
    first_name: 'Mike',
    last_name: 'Orsillio',
    annual_income: 40000
  }
]

# loop through to get names
TAX_RATE = 0.22
 tax_summary.each do | info |
  #binding.pry
  liability = info[:annual_income].to_i * TAX_RATE
  # output liability
  puts "#{info[:first_name]} #{info[:last_name]} has a tax liability of #{liability.round(0)}"
 end
