//
//  ViewController.swift
//  window-shopper
//
//  Created by Johnny Perdomo on 12/16/17.
//  Copyright © 2017 Johnny Perdomo. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField! //outlet of hourly wage
    @IBOutlet weak var priceTxt: CurrencyTxtField! //outlet of Item price
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60)) //calculate button, frame is the size of the UIButton
        calcBtn.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal) //normal is just the state the button is in currently...Ex: pressed, higlighted,normal..etc
        calcBtn.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside) //when it calculates it notifies it(self), and call the "calculate func" in 'MainVC' using #selector
        
        wageTxt.inputAccessoryView = calcBtn //inputaccessoryview is adding the area above the keyboard when txtfield is pressed
       priceTxt.inputAccessoryView = calcBtn //in this case, were adding the calcBtn on top of keyboard
        
        resultLbl.isHidden = true //hides the result in the beginning of program if you put it in the viewdidload()
        hoursLbl.isHidden = true
    }

    func calculate() {
        if let wageTxtCalc = wageTxt.text, let priceTxtCalc = priceTxt.text{
            if let wage = Double(wageTxtCalc), let price = Double(priceTxtCalc) {
                view.endEditing(true) //to dismiss the keyboard
                resultLbl.isHidden = false //to make the numbers visible again
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLbl.isHidden = true //to hide the result when Btn is pressed
        hoursLbl.isHidden = true
        wageTxt.text = " " //to clear out the text when Btn is pressed
        priceTxt.text = " "
    }

}

