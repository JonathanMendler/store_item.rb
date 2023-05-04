class TTY
  def table
    table = TTY::Table.new(["first_name", "last_name", "salary", "active"], [["Majora", "Carter", 80000, true], ["Danilo", "Campos", 70000, true]])
    puts table.render(:ascii)
  end
end
