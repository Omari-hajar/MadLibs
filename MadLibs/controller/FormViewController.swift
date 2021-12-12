//
//  FormViewController.swift
//  MadLibs
//
//  Created by Hajar Alomari on 11/12/2021.
//

import UIKit

class FormViewController: UIViewController {
    @IBOutlet weak var adjTextField: UITextField!
    
    @IBOutlet weak var verb1TextField: UITextField!
    @IBOutlet weak var verb2TextField: UITextField!
    @IBOutlet weak var nounTextField: UITextField!
    
    var adj = ""
    var verb1 = ""
    var verb2 = ""
    var noun = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ViewController
        let sentence = setUpSentance()
        destinationVC.sentenceLabel.text = sentence
        
        
    }
    
    func setUpSentance() -> String {
        if adjTextField.text != "" && adjTextField != nil {
            adj = adjTextField.text!
        }
        if verb1TextField.text != "" && verb1TextField != nil {
            verb1 = verb1TextField.text!
        }
        if verb2TextField.text != "" && verb2TextField != nil {
            verb2 = verb2TextField.text!
        }
       
        if nounTextField.text != "" && nounTextField != nil {
            noun = nounTextField.text!
        }
        let sentence = "We are having a perfectly \(adj) right now. Later we will \(verb1) and \(verb2) in the \(noun)"
        return sentence
       
    }
    

}
