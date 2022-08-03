module Week
  FIRST_DAY = "Sunday"
  def Week.current_week(day)
    return (day / 7).round()
  end
  def Week.current_day(index)
    day_arr = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    return day_arr[index]
  end
end
