//: Playground - noun: a place where people can play

import UIKit


//instance of the date object
var today = Date()

print(today)

//formatting dates
var dayFormatter = DateFormatter()
dayFormatter.dateFormat = "EEEE"
print(dayFormatter.string(from: today))

var monthFormatter = DateFormatter()
monthFormatter.dateFormat = "MMM"
print(monthFormatter.string(from: today))

var yearFormatter = DateFormatter()
yearFormatter.dateFormat = "yyyy"
print(yearFormatter.string(from: today))

var dateFormatter = DateFormatter()
dateFormatter.dateFormat = "EEEE, MMM dd"
print(dateFormatter.string(from: today))


//Working with timestamps
//need to convert the Date() object to a NSDate object

var NSDateOfToday = today as NSDate
//get a timestamp, seconds since 1970
print(NSDateOfToday.timeIntervalSince1970)
//get a timestamp refrencing 2001, aka seconds since 2001
print(NSDateOfToday.timeIntervalSinceReferenceDate)

//working with calendars

var calendar = Calendar.current

//create a date from a calendar
var dateComponents = DateComponents()
dateComponents.day = 1
dateComponents.year = 2018
dateComponents.month = 5

print(calendar.date(from: dateComponents)!)

//get date by adding or subtracting days
print(calendar.date(byAdding: .day, value: 7, to: today)!)
print(calendar.date(byAdding: .day, value: -7, to: today)!)

//get a range of days in a month
let daysInMay = calendar.range(of: .day, in: .month, for: today)!
let maxDay = daysInMay.count
let days: [Int] = Array(1...maxDay)
print(days)


//comparing dates

let tuesday = Date()

//changing datecomponents from above
dateComponents.day = 29
dateComponents.year = 2018
dateComponents.month = 5

let wednesday = calendar.date(from: dateComponents)!
print(calendar.isDateInToday(wednesday))
print(calendar.isDate(tuesday, inSameDayAs: wednesday))
print(calendar.isDate(tuesday, equalTo: wednesday, toGranularity: .weekOfYear))

//playground is having issues compiling, these functions will return a boolean

//the first one would be false since it is looking for the two days to match
//the second one would also be false but instead of using today we use our tuesday variable
//the last one would be true because both dates are in the same week
























