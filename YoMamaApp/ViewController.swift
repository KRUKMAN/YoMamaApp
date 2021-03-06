//
//  ViewController.swift
//  YoMamaApp
//
//  Created by Jakub Krukowski on 14/05/2017.
//  Copyright © 2017 CHUJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var diss = ["Yo mama is so fat that her bellybutton gets home 15 minutes before she does!","]
    
    @IBOutlet weak var yoMamaLabel: UILabel!
    @IBOutlet weak var yoMamaButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red:1.00, green:0.15, blue:0.05, alpha:1.0)
        configureView()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var previousNumber: Int?
    
    func generateRandomNumber() -> Int {
        var randomNumber = Int(arc4random_uniform(UInt32(diss.count)))
        if previousNumber != nil {
            while randomNumber == previousNumber! {
                randomNumber = Int(arc4random_uniform(UInt32(diss.count)))
            }
        }
        previousNumber = randomNumber
        return randomNumber
    }
    
    @IBAction func dissButtonPushed(_ sender: UIButton) {
        let number = generateRandomNumber()
        yoMamaLabel.isHidden = false
        yoMamaLabel.text = "Yo mama \(diss[number])"
    }
    
    
    func configureView() {
        yoMamaButton.layer.cornerRadius = 5
        yoMamaButton.backgroundColor = UIColor.white
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
