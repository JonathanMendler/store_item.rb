class TTY
  table = TTY::Table.new(["first_name", "last_name", "salary", "active"])
  puts table.render(:ascii)
end
