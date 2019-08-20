//
//  FontSizeViewController.swift
//  MVC+Delegation-Review-Lab
//
//  Created by Liana Norman on 8/20/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class FontSizeViewController: UIViewController {
    
    @IBOutlet weak var fontSlider: UISlider!
    @IBOutlet weak var fontStepper: UIStepper!
    
    
    @IBAction func fontChanged(_ sender: Any) {
        if sender is UISlider {
          fontStepper.value = Double(fontSlider.value)
            print(fontStepper.value)
            print(fontSlider.value)
        } else {
            fontSlider.value = Float(fontStepper.value)
            print(fontStepper.value)
            print(fontSlider.value)
        }
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
