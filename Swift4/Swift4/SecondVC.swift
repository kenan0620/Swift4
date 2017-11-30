//
//  SecondVC.swift
//  Swift4
//
//  Created by Conan on 2017/11/29.
//  Copyright © 2017年 Conan. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    var dateStr  = Date.init()
    
    @IBOutlet weak var basisSegmentControl: UISegmentedControl!
    @IBOutlet weak var basisPageControl: UIPageControl!
    @IBOutlet weak var basisStrpper: UIStepper!
    @IBOutlet weak var basisStepperLab: UILabel!
    @IBOutlet weak var basisProgressView: UIProgressView!
    @IBOutlet weak var basisDatePickerBgView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.basisDatePickerBgView.isHidden = true;
    }

    @IBAction func basisSegmentControlClick(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
    }
    
    @IBAction func basisPageControlValueChange(_ sender: UIPageControl) {
    }

    @IBAction func basisStepperChange(_ sender: UIStepper) {
        
        let numStr = String(format:"%0.0f",sender.value)
        
        self.basisStepperLab.text = numStr + "个"
/*
         相互转化
         let num:Double = sender.value
         let numInt = Int(num)
         let numStr = String(format:"%d",numInt)
         
         self.basisStepperLab.text = numStr + "个"
         
         */

    }
    
    @IBAction func timeChooseBtnClick() {
        self.basisDatePickerBgView.isHidden = false;
    }
    
    @IBAction func cancelChooseDateBtnClick() {
        self.basisDatePickerBgView.isHidden = true
    }
    
    @IBAction func entetChooseDateBtnClick() {
        self.basisDatePickerBgView.isHidden = true;
        print(self.dateStr)

    }
    
    @IBAction func datePickerChoose(_ sender: UIDatePicker) {
        self.dateStr = sender.date
        print(self.dateStr)
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
