class PairingOrderChooser
  def self.choose_order(students)
    students.shuffle!
  end
end

students = [
  "Ben",
  "Beth",
  "Kyle",
  "Liz",
  "Louise",
  "Mike M.",
  "Mike S.",
  "Omar",
  "Phin"
]

order = PairingOrderChooser.choose_order(students)

puts "The order will be: "
order.each_with_index do |student, index|
  puts "#{index+1}. #{student}"
end