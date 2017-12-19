//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Johnny Perdomo on 12/16/17.
//  Copyright © 2017 Johnny Perdomo. All rights reserved.
//

import UIKit

@IBDesignable //to make the changes here, appear on the interface builder simultaneously

class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.768901825, green: 0.7661039233, blue: 0.7718240619, alpha: 0.800862069)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true //to clip the currencyLbl to boundary
        let currencyFormatter = NumberFormatter() //Numberformatter formats the numbers
        currencyFormatter.numberStyle = .currency //type of format
        currencyFormatter.locale = .current //location of the currency
        currencyLbl.text = currencyFormatter.currencySymbol //for the currency symbol
        addSubview(currencyLbl) //to add the subview
        
        
    }

    override func prepareForInterfaceBuilder() { //runs code to make changes on interface builder simultaneously
        customizeView() //all the bottom code runs in here
    }
    
    override func awakeFromNib() {  //to ensure this code runs when the app wakes up
        super.awakeFromNib()
        customizeView() //all the bottom code runs in here
    }
        
        
    
    func customizeView() { //this code needs to run inside the two upper functions for (simultaneous interface builder to work)
        
        backgroundColor = #colorLiteral(red: 0.9962956309, green: 0.9927255511, blue: 1, alpha: 0.2487607759) //background color
        layer.cornerRadius = 5.0 //to make the corners round
        textAlignment = .center //to center text automatically
        
        clipsToBounds = true
        
        if let p = placeholder { //this is for the placeholder
            let place = NSAttributedString(string: p, attributes: [NSForegroundColorAttributeName: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)]) //attributed string = string with attributes in it.
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) //text color
        }
    }
}
