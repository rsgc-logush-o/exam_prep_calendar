import Foundation

/*
 
 ORGANIZING YOUR SOLUTION
 
 A good way to orgaize your code is to separate your code into the three sections - input, process, output – as much as possible.
 
 The start of a solution is implemented below. Consider all the possible inputs. Can you finish the solution?
 
 */

/*
 
 INPUT
 
 Be sure that your implementation of this section discards all the possible bad inputs the user could provide.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

struct Day
{
    var dayNumber : Int
    var numberOfChars : Int
}
func logBase(val: Double, base: Double) -> Double
{
    return log(val)/log(base)
}

var inputToProcess : String = ""
var week : Int? = nil
var numberOfDays : Int? = nil
var specialDay : Int? = nil
var calendar : [String] = ["Sun ", "Mon ", "Tue ", "Wed ", "Thr ", "Fri ", "Sat\n"]
var days = [Day]()

// Loop until valid input is received
while week == nil {
    
    // Show the prompt
    print("Enter day:", terminator: "\n")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = Int(input!) {
        
        if notNilInput > 0 && notNilInput < 8
        {
            week = notNilInput
        }
        
        // You probably need to add additional checks to be sure the
        // input received is valid
        // Add checks as needed...
        
        // Save the input given, as we are certain it's what we are looking for now
        
        
    }
    
}

while numberOfDays == nil {
    
    // Show the prompt
    print("Enter the number of days in the month:", terminator: "\n")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = Int(input!) {
        
        if notNilInput > 27 && notNilInput < 32
        {
            numberOfDays = notNilInput
        }
        
        // You probably need to add additional checks to be sure the
        // input received is valid
        // Add checks as needed...
        
        // Save the input given, as we are certain it's what we are looking for now
        
        
    }
    
}

while specialDay == nil {
    
    // Show the prompt
    print("Enter the special day:", terminator: "\n")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = Int(input!) {
        
        if notNilInput > 0 && notNilInput <= numberOfDays!
        {
            specialDay = notNilInput
        }
        
        // You probably need to add additional checks to be sure the
        // input received is valid
        // Add checks as needed...
        
        // Save the input given, as we are certain it's what we are looking for now
        
        
    }
    
}

var startSpacing : String = ""

//for i in 1...(week!)
//{
//    
//    startSpacing = startSpacing + "    "
//}
var i : Int = 1
while i < week!
{
    startSpacing = startSpacing + "    "
    i = i + 1
}

//while i < numberOfDays!
//{
//    if i == specialDay
//    {
//        
//        days.append(Day(dayNumber: i, numberOfChars: Int(logBase(val: Double(i), base: 10)) + 2))
//    }else{
//        days.append(Day(dayNumber: i, numberOfChars: Int(logBase(val: Double(i), base: 10)) + 1))
//    }
//    i = i + 1
//}
for i in 1...numberOfDays!
{
    if i == specialDay
    {
    
    days.append(Day(dayNumber: i, numberOfChars: Int(logBase(val: Double(i), base: 10)) + 2))
    }else{
        days.append(Day(dayNumber: i, numberOfChars: Int(logBase(val: Double(i), base: 10)) + 1))
    }
}

calendar.append(startSpacing)

for i in days
{
    var bufferString : String = ""
    
    var x : Int = 0
    
//    for x in 1...(3 - i.numberOfChars)
//    {
//        bufferString = bufferString + " "
//    }
    while x < 3 - i.numberOfChars
    {
        bufferString = bufferString + " "
        x = x + 1
    }
    
    if i.dayNumber == specialDay
    {
        bufferString = bufferString + "*"
    }
    bufferString = bufferString + String(i.dayNumber)
    if((week! + i.dayNumber - 1) % 7 == 0)
    {
        bufferString = bufferString + "\n"
    }else
    {
        bufferString = bufferString + " "
    }
    
    calendar.append(bufferString)
    
}

for i in calendar
{
    print(i, terminator: "")
}



/*
 
 PROCESS
 
 Here is where you implement the logic that solves the problem at hand.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'process' code below....


/*
 
 OUTPUT
 
 Here is where you report the results of the 'process' section above.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'output' code below... replace what is here as needed.

