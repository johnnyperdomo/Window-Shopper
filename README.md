# Window-Shopper
Simple iOS app that calculates how many hours to purchase an item by your hourly wage written in Swift 4

## Preview
![Alt Text](https://media.giphy.com/media/3FbCHSKsfpRN7H0pyO/giphy.gif)

**Built with**
- Ios 10
- Xcode 8 

## Features:
- **Calculates working hours required to buy a certain item, depending on your hourly wage**
- **Shows number of minimum hours required by rounding up**
- **Perform tests to ensure calculations are correct**
  ```swift
   XCTAssert(Wage.getHours(forWage: 15.50, andPrice: 250.53) == 17) //It should be 17 cuz # rounds up
  ```

### Credits
Devslopes Tuts

## License
Standard MIT [License](https://github.com/johnnyperdomo/Window-Shopper/blob/master/LICENSE) 
