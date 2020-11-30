//
//  ViewController.swift
//  PickerView
//
//  Created by stam on 2020/11/30.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let MAX_ARRAY_NUM = 11
    let PICKER_VIEW_COLUMN = 1
    var imageArray = [UIImage?]()
    var imageFileNames = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg", "11.jpg"]
    
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var lblImageFileName: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0 ..< MAX_ARRAY_NUM {
            let image = UIImage(named: imageFileNames[i])
            imageArray.append(image)
        }
        
        lblImageFileName.text = imageFileNames[0]
        imageView.image = imageArray[0]
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileNames.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imageFileNames[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblImageFileName.text = imageFileNames[row]
        imageView.image = imageArray[row]
    }
}

