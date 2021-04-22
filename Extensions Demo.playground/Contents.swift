import UIKit

// Swift contains the .round() method that rounds to the nearest whole number. E.g. 3 below
var myDouble1 = 3.14159

myDouble1.round()


// Suppose that I would like to specify how many places I would like to round to. E.g. myDouble.round(to: 3), to round to 3 places. We can create an extension method thusly:

extension Double {
  func round(to places: Int) -> Double {
    let precisionNumber = pow(10, Double(places))
    var n = self
    n = n * precisionNumber
    n.round()
    n = n / precisionNumber
    return n
  }
}

var myDouble2 = 3.14159
myDouble2.round(to: 3)

var myDouble3 = 1.3145
myDouble3.round(to: 1)

// Swift classes/structs are not the only types that can be extended. Apple's UIKit objects can also be extended. E.g.:

// Here is a standard, square-shaped, UIButton (Hit square preview button on right pane to see ->):
let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.backgroundColor = .red

// Suppose I wanted to be able to create circular buttons like this one instead:
button.layer.cornerRadius = 25
button.clipsToBounds = true

// We can create an extension method for creating circular buttons thusly:
extension UIButton {
  func makeCircular() {
    self.clipsToBounds = true
    self.layer.cornerRadius = self.frame.size.width/2
  }
}

let blueButton = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
blueButton.backgroundColor = .blue
blueButton.makeCircular()
