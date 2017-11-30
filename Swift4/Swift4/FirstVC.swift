//
//  FirstVC.swift
//  Swift4
//
//  Created by Conan on 2017/11/29.
//  Copyright © 2017年 Conan. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {
    
    @IBOutlet weak var basisBtn: UIButton!
    @IBOutlet weak var basisTextField: UITextField!
    @IBOutlet weak var basisSwitch: UISwitch!
    @IBOutlet weak var basisTextView: UITextView!
    @IBOutlet weak var basisSliderView: UISlider!
    @IBOutlet weak var basisView: UIView!
    @IBOutlet weak var basisImageView: UIImageView!
    @IBOutlet weak var basisLab: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
       
    }


    @IBAction func basisBtnClick() {
        print("basisBtnClick")
    }
    
    @IBAction func basisSwitchClick(_ sender: UISwitch) {
        if (sender.isOn) {
            print("UISwitch on")
        }else{
            print("UISwitch off")
        }
        
    }
    
    @IBAction func basisSilderClick(_ sender: UISlider) {
//        print("basisSilderClick~%f",sender.value)
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.basisTextView.resignFirstResponder()
        self.basisTextField.resignFirstResponder()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
