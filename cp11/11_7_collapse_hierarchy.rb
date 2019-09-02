def statement
  result = "Rental Record for #{name}\n"
  @rentals.each do |rental|
    result << "\t#{rental.movie.title}\t#{rental.charge}\n"
  end

  result << "Amount owed is #{total_charge}\n"
  result << "You earned #{total_frequent_renter_points} frequent renter\points"
  result
end

def html_statement
  result = "<H1>Rentals for <EM>#{name}</EM></H1><P>\n"
  @rentals.each do |rental|
    # show figures for this rental
    result << "#{rental.movie.title}: \t#{rental.charge}<BR/>\n"
  end

  result << "<P>You owe <EM>#{total_charge}</EM></P>\n"
  result << "On this rental you earned <EM>#{total_frequent_renter_points}</\EM> frequent renter points</P>"
end
