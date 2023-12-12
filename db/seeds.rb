10.times do |n|
  title = "example-#{n+1}"
  Todo.create!(title: title)
end