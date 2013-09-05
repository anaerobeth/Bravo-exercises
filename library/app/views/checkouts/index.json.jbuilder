json.array!(@checkouts) do |checkout|
  json.extract! checkout, :reader, :date, :book_id
  json.url checkout_url(checkout, format: :json)
end
