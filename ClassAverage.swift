/* This program generates random marks
   and calculates the average of them.

   Sean McLeod
   2021/05/03
*/

import Foundation

func averageCalculator(studentAssignment: [[Int]]) -> Float {
    // This function calculates the average
    var sum:Int = 0
    var numberOfMarks:Float = 0.0
    let average:Float

    for column in studentAssignment {
        for item in column {
            // calculate sum
            sum += item
            numberOfMarks += 1
        }
    }
    // calculate average
    average = Float(sum) / numberOfMarks
    // return parameter
    return average
}


let studentNum:Int = 4
let assignmentNum:Int = 6
let low:Int = 0
let high:Int = 100
// create array
var studentAssignment = [[Int]](repeating: [Int](repeating: 0, count: 6), count: 4)

print("These are the marks: ")
for row in 0..<studentAssignment.count {
    print("\n")
    for column in 0..<studentAssignment[row].count {
        // generate random number
        let randomNumber = Int.random(in: low..<high + 1)
        // append values into array
        studentAssignment[row][column] = randomNumber
        // print marks
        print("\(studentAssignment[row][column])", terminator:" ")
    }
}

// pass & accept parameters
let average = averageCalculator(studentAssignment: studentAssignment)
// output
print(String(format: "\n\nThe average of the class is: %.2f", average))
