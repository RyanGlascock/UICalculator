//
//  ConverterViewController.swift
//  UICalculator
//
//  Created by Ryan Glascock on 4/8/19.
//  Copyright © 2019 Ryan Glascock. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Converter(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Choose", message: "Converter", preferredStyle: UIAlertController.Style.actionSheet)
        alert.addAction(UIAlertAction(title: "fahrenheit to celcius", style: UIAlertAction.Style.default, handler: {
            (UIAlertAction) -> Void in
            self.inputDisplay.text = "°F"
            self.outputDisplay.text = "°C"
        }))
        alert.addAction(UIAlertAction(title: "celcius to fahrenheit", style: UIAlertAction.Style.default, handler: {
            (UIAlertAction) -> Void in
            self.inputDisplay.text = "°C"
            self.outputDisplay.text = "°F"
        }))
        alert.addAction(UIAlertAction(title: "miles to kilometers", style: UIAlertAction.Style.default, handler: {
            (UIAlertAction) -> Void in
            self.inputDisplay.text = "mi"
            self.outputDisplay.text = "km"
        }))
        alert.addAction(UIAlertAction(title: "kilometers to miles", style: UIAlertAction.Style.default, handler: {
            (UIAlertAction) -> Void in
            self.inputDisplay.text = "km"
            self.outputDisplay.text = "mi"
        }))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
