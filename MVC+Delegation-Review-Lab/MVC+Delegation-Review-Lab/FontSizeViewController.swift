//
//  FontSizeViewController.swift
//  MVC+Delegation-Review-Lab
//
//  Created by Liana Norman on 8/20/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class FontSizeViewController: UIViewController {
    var oldFontSize: CGFloat!
    var model = FontSizeModel()
    var delegate: fontDelegate?
    var keepFontSize: Float!
    
    @IBOutlet weak var fontSlider: UISlider!
    @IBOutlet weak var fontStepper: UIStepper!
    
    
    
    @IBAction func fontChanged(_ sender: Any) {
        if sender is UISlider {
            let slider = sender as! UISlider
          fontStepper.value = Double(fontSlider.value)
            model.updateFontSize(number: CGFloat(slider.value))
            delegate?.updateFont(number: model.currentSize)
            oldFontSize = model.currentSize
        } else {
            let stepper = sender as! UIStepper
            fontSlider.value = Float(fontStepper.value)
             model.updateFontSize(number: CGFloat(stepper.value))
            delegate?.updateFont(number: model.currentSize)
            oldFontSize = model.currentSize
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fontStepper.value = Double(oldFontSize ?? 17)
        fontSlider.value = Float(oldFontSize ?? 17)
        fontSlider.value = keepFontSize
        fontStepper.value = Double(keepFontSize)

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
