import UIKit

// Example 1:
// #Method 1:
// ##Long form version
func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
  return operation(n1, n2)
}

func add (no1: Int, no2: Int) -> Int {
  return no1 + no2
}

func multiply (no1: Int, no2: Int) -> Int {
  return no1 * no2
}

calculator(n1: 2, n2: 3, operation: multiply(no1:no2:))

// #Method 2:
// ##Shortened version using closures
calculator(n1: 2, n2: 3) {$0 + $1}

// Example 2:
// #Method 1:
// ##Long form version
let array = [6,2,3,9,4,1]

func addOne (n1: Int) -> Int {
  return n1 + 1
}

array.map(addOne(n1:))

// #Method 2:
// ##Shortened version using closures (array.map takes in a method as a parameter)
print(array.map{$0 + 1})

// Closure Expression Syntax:
{ (<#parameters#>) -> <#return type#> in
  <#statements#>
}
