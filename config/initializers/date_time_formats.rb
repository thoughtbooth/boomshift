Time::DATE_FORMATS[:long_ordinal_pm] = lambda { |time| time.strftime("%B #{time.day.ordinalize}, %Y %l:%M %p") } #Why isn't this working

#Once this is working, replace this:
#strftime("%B #{job.date.day.ordinalize}, %Y %l:%M %p")