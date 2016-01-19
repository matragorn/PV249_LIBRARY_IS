json.array!(@borrowings) do |borrowing|
  json.extract! borrowing, :id, :user_id, :book_id, :due_date
  json.url borrowing_url(borrowing, format: :json)
end
