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
    
    @IBOutlet var textViewCollection: [UITextField]!
    @IBOutlet var quantityLabelCollection: [UILabel]!
    
    @IBOutlet weak var quantity1View: UILabel!
    @IBOutlet weak var quantity2View: UILabel!
    @IBOutlet weak var quantity3View: UILabel!
    @IBOutlet weak var quantity4View: UILabel!
    @IBOutlet weak var quantity5View: UILabel!
    
    var labels: Dictionary<Int, UILabel> = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadLabelsDictionary()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func loadLabelsDictionary() {
        labels = [
            1 : quantity1View,
            2 : quantity2View,
            3 : quantity3View,
            4 : quantity4View,
            5 : quantity5View,
        ]
    }
    
    func clearQuantityFields() {
        for field: UILabel in quantityLabelCollection {
            field.text = "0"
        }
    }
    
    func clearTextFields() {
        for field: UITextField in textViewCollection {
            field.text = ""
        }
    }
    
    func reset() {
        clearTextFields()
        clearQuantityFields()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func quantityButtonClicked(_ sender: UIButton) {
        let increase = sender.titleLabel?.text == "+"
        changeQuantity(button: sender, increase: increase)
    }
    
    @IBAction func saveClicked(_ sender: UIButton) {
    }
    
    @IBAction func cancelClicked(_ sender: UIButton) {
        reset()
    }
    
    func changeQuantity(button: UIButton, increase: Bool) {
        let label = labels[button.tag]!
        let operand = increase ? 1 : -1;
        var quantity = Int(label.text!)!
        quantity = quantity + operand
        if quantity >= 0 {
            label.text = String(quantity)
        }
    }
    
}

