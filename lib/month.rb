class Month
  attr_reader :month, :year

  def initialize( month, year)
    @month = month
    @year = year
  end

  def month_names
      names_of_months = {1 => 'January', 2 => 'February', 3 => 'March', 4 => 'April', 5 => 'May', 6 => 'June', 7 => 'July', 8 => 'August', 9 => 'September', 10 => 'October', 11 => 'November', 12 => 'December'}
      return names_of_months[@month]
  end

    def length
      days_of_months  = {1 => 31, 2 => 28, 3 => 31, 4 => 30, 5 => 31, 6 => 30, 7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31}

      return days_of_months[@month]
  end


  def to_s
    weekdays = "Su Mo Tu We Th Fr Sa" <<"\n"
    month    = "#{month_names} #{year}"

    output   =[
      month.center(weekdays.size),
      weekdays
      ].join("\n")
      (1..length).each_slice(7) do |week|
      output << week.join
      output << "\n"
    end
    output
  end

end

