//
//  ViewController.swift
//  IOSTest
//
//  Created by Rodrigo Silva on 2018-10-18.
//  Copyright © 2018 Rodrigo Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var listNameView: UITextField!
    
    @IBOutlet weak var item1View: UITextField!
    @IBOutlet weak var item2View: UITextField!
    @IBOutlet weak var item3View: UITextField!
    @IBOutlet weak var item4View: UITextField!
    @IBOutlet weak var item5View: UITextField!
    
    @IBOutlet weak var quantity1View: UILabel!
    @IBOutlet weak var quantity2View: UILabel!
    @IBOutlet weak var quantity3View: UILabel!
    @IBOutlet weak var quantity4View: UILabel!
    @IBOutlet weak var quantity5View: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func quantityButtonClicked(_ sender: UIButton) {
        if (sender.titleLabel?.text == "+") {
            changeQuantity(button: sender, increase: true)
        } else {
            changeQuantity(button: sender, increase: false)
        }
    }
    
    @IBAction func saveClicked(_ sender: UIButton) {
    }
    
    @IBAction func cancelClicked(_ sender: UIButton) {
    }
    
    func changeQuantity(button: UIButton, increase: Bool) {
        switch button.tag {
        case 1:
            if increase {
                var quantity = Int(quantity1View.text!)!
                quantity = quantity + 1
                quantity1View.text = String(quantity)
            }
        default:
            <#code#>
        }
    }
    
    func blabla(label: UILabel, increase: Bool) {
        var quantity = Int(label.text!)!
        quantity = quantity + 1
        label.text = String(quantity)

    }
    
}

