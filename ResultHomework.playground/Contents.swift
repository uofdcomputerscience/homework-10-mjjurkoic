import Foundation

// Implement an Error type. Make sure it has at least two values.
enum JamboreeError: Error {
    case incorrectSound
    case incorrerctOrder
}

// Implement a function that returns a Result of string or your error type
enum JamboreeAttendee {
    case honker
    case duckie
    case dinger
}

enum JamboreeSound {
    case honk
    case squeak
    case ding
}

func jamboree(attendee: JamboreeAttendee, sound: JamboreeSound) -> Result<String, Error> {
    if attendee == .honker && sound == .honk {
        return .success("honk")
    } else if attendee == .duckie && sound == .squeak {
        return .success("squeak")
    } else if attendee == .dinger && sound == .ding {
        return .success("ding")
    } else {
        return .failure(JamboreeError.incorrectSound)
    }
}

// Call your function in a way that will return an error result, and handle that error.
let successResult = jamboree(attendee: JamboreeAttendee.honker, sound: JamboreeSound.ding)
switch successResult {
case .success (let string):
    print("Sound: \(string)")
case .failure (let error):
    print("Error: \(error)")
}

// Call your function in a way that will return a success result, and handle the value.
let failResult = jamboree(attendee: JamboreeAttendee.honker, sound: JamboreeSound.honk)
switch failResult {
case .success (let string):
    print("Sound: \(string)")
case .failure (let error):
    print("Error: \(error)")
}

