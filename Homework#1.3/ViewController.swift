//
//  ViewController.swift
//  Homework#1.3
//
//  Created by Эмир Кармышев on 6/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    var screenNum:Int = 0;
    var firstNum:Int = 0;
    var oper:Int = 0;
    var math:Bool = false
    
    
    @IBOutlet weak var login: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func text(_ sender: UITextField) {
        print(login.text)
        print(password.text)
    }
    
    
    
    
    

    @IBOutlet weak var result: UILabel!
    
    @IBAction func funcButtons(_ sender: UIButton) {
        if result.text != "" && sender.tag != 10 && sender.tag != 14 {
            firstNum = Int(result.text!)!
            
            if sender.tag == 11 {
                result.text = "+"
            }else if sender.tag == 12 {
                result.text = "-"
            }else if sender.tag == 13 {
                result.text = "x"
            }
            oper = sender.tag
            math = true;
            
        }
        else if sender.tag == 14 {
            if oper == 11 {
                result.text = String(firstNum + screenNum)
            }
            else if oper == 12 {
                result.text = String(firstNum - screenNum)
            }
            else if oper == 13 {
                result.text = String(firstNum * screenNum)
            }
        } else if sender.tag == 10 {
            result.text = ""
            firstNum = 0
            screenNum = 0
        }
            
    }
    @IBAction func Digitals(_ sender: UIButton) {
        if math == true {
            result.text = String(sender.tag)
            math = false
        } else {
            result.text = result.text! + String(sender.tag)
        }
        screenNum = Int(result.text!)!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

