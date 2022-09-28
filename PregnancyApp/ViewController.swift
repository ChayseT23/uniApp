//
//  ViewController.swift
//  PregnancyApp
//
//  Created by Veton Jonuzi on 28/9/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var todaysDate: UILabel!

    @IBOutlet weak var pregnancyHeading: UILabel!
    
    @IBOutlet weak var trimestersLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let date = Date()
        
        let formatter = DateFormatter()
        formatter.timeZone = .current
        formatter.locale = .current
        formatter.dateFormat = "EEEE, d MMMM"
        
        todaysDate.text = formatter.string(from: date)
        todaysDate.numberOfLines = 0
        todaysDate.sizeToFit()
        todaysDate.adjustsFontSizeToFitWidth = true
        todaysDate.minimumScaleFactor = 0.5
        
        pregnancyHeading.numberOfLines = 0
        pregnancyHeading.sizeToFit()
        pregnancyHeading.adjustsFontSizeToFitWidth = true
        
        trimestersLabel.adjustsFontSizeToFitWidth = true
        
    }
}

