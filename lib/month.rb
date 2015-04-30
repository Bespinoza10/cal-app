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
    weekdays = "Su Mo Tu We Th Fr Sa" << "\n"
    month    = "#{month_names} #{year}"
    self.zellers =
      space == " "
      if zellers = 0
        space * 6
      elsif zellers = 1
        space * 0
      elsif zellers = 2
        space * 1
      elsif zellers = 3
        space * 2
      elsif zellers = 4
        space * 3
      elsif zellers = 5
        space * 4
      elsif zellers = 6
        space * 5
      end
    output   =[
      month.center(weekdays.size).rstrip,
      weekdays
      ].join("\n")
      (1..length).each_slice(7) do |week|
      output << week.map { |day| day.to_s.rjust(3) }.join[1..-1]
      output << "\n"
    end
    output << "\n"
    output
  end

  def zellers
    q = 1
    m = @month
    if @month == 1 or @month == 2
      y = @year -1
    else
      y = @year
    end

    h = (q + ((m+1) * 26/10).floor + y + (y/4).floor + 6 * (y/100).floor + (y/400).floor) %7
  end

end

