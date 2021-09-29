//
//  FilterController.swift
//  FashionDemo
//
//  Created by ZED on 25/4/21.
//

import UIKit
import WARangeSlider

class FliterController: UIViewController {
    
    @IBOutlet weak var BtnColor: UIButton!
    @IBOutlet weak var BtnColor1: UIButton!
    @IBOutlet weak var BtnColor2: UIButton!
    @IBOutlet weak var BtnColor3: UIButton!
    @IBOutlet weak var BtnColor4: UIButton!
    
    @IBOutlet weak var redColor: UIView!
    @IBOutlet weak var blackColor: UIView!
    @IBOutlet weak var pinkColor: UIView!
    @IBOutlet weak var color4: UIView!
    @IBOutlet weak var color5: UIView!
    
    @IBOutlet weak var lblSizeXS: UILabel!
    @IBOutlet weak var lblSizeS: UILabel!
    @IBOutlet weak var lblSizeM: UILabel!
    @IBOutlet weak var lblSizeL: UILabel!
    @IBOutlet weak var lblSizeXL: UILabel!
    
    @IBOutlet weak var formValue: UILabel!
    @IBOutlet weak var ToValue: UILabel!

    @IBOutlet weak var viewSliderRange: RangeSlider!
    // need
   // let rangeSlider1 = RangeSlider(frame: CGRect.zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // no need
       // view.addSubview(rangeSlider1)
        
        //add target for set func of @objc
        viewSliderRange.addTarget(self, action: #selector(self.rangeSliderValueChanged(_:)), for: .valueChanged)
        
        
        
        navigationController?.isNavigationBarHidden = false
        let lble1 = UILabel()
        lble1.text = "Fliter"
        lble1.font = UIFont(name: "Georgia", size: 20)
        navigationItem.titleView = lble1
        
        redColor.layer.cornerRadius = 15
        blackColor.layer.cornerRadius = 15
        pinkColor.layer.cornerRadius = 15
        color5.layer.cornerRadius = 15
        color4.layer.cornerRadius = 15
        // lable style
        lblSize()
       
        
        // TapGestureReconizer
        let tapColor1 = UITapGestureRecognizer(target: self, action: #selector(getTap(_:)))
        tapColor1.numberOfTapsRequired = 1
        tapColor1.numberOfTouchesRequired = 1
        lblSizeXS.addGestureRecognizer(tapColor1)
        lblSizeXS.isUserInteractionEnabled = true
        
        let tapColor2 = UITapGestureRecognizer(target: self, action: #selector(getTap1(_:)))
        tapColor2.numberOfTapsRequired = 1
        tapColor2.numberOfTouchesRequired = 1
        lblSizeS.addGestureRecognizer(tapColor2)
        lblSizeS.isUserInteractionEnabled = true

        let tapColor3 = UITapGestureRecognizer(target: self, action: #selector(getTap2(_:)))
        tapColor3.numberOfTapsRequired = 1
        tapColor3.numberOfTouchesRequired = 1
        lblSizeM.addGestureRecognizer(tapColor3)
        lblSizeM.isUserInteractionEnabled = true
        
        let tapColor4 = UITapGestureRecognizer(target: self, action: #selector(getTap3(_:)))
        tapColor4.numberOfTapsRequired = 1
        tapColor4.numberOfTouchesRequired = 1
        lblSizeL.addGestureRecognizer(tapColor4)
        lblSizeL.isUserInteractionEnabled = true

        let tapColor5 = UITapGestureRecognizer(target: self, action: #selector(getTap4(_:)))
        tapColor5.numberOfTapsRequired = 1
        tapColor5.numberOfTouchesRequired = 1
        lblSizeXL.addGestureRecognizer(tapColor5)
        lblSizeXL.isUserInteractionEnabled = true
        
    }
    //MARK: func for create @objc
    @objc func rangeSliderValueChanged(_ rangeSlider: RangeSlider) {
       // print("Range slider value changed: (\(rangeSlider.lowerValue) , \(rangeSlider.upperValue))")
        
//        formValue.text = String (Int(round(rangeSlider.lowerValue)))
//        ToValue.text = String(Int(round(rangeSlider.upperValue)))
//
        let value = Int(round(rangeSlider.lowerValue))
        formValue.text = "\(value)"
        let value1 = Int(round(rangeSlider.upperValue))
        ToValue.text = "\(value1)"
        
       
        
    }
    
    // MARK: GetTap
    @objc func getTap(_ gesture: UITapGestureRecognizer){
        clearColor()
        self.lblSizeXS.layer.backgroundColor = UIColor.black.cgColor
        lblSizeXS.textColor = .white
       
    }
    @objc func getTap1(_ gesture: UITapGestureRecognizer){
        clearColor()
        self.lblSizeS.layer.backgroundColor = UIColor.black.cgColor
            lblSizeS.textColor = .white
           
    }
    @objc func getTap2(_ gesture: UITapGestureRecognizer){
        clearColor()
        self.lblSizeM.layer.backgroundColor = UIColor.black.cgColor
        lblSizeM.textColor = .white
        
    }
    @objc func getTap3(_ gesture: UITapGestureRecognizer){
        clearColor()
        self.lblSizeL.layer.backgroundColor = UIColor.black.cgColor
        lblSizeL.textColor = .white
     
        
    }
    @objc func getTap4(_ gesture: UITapGestureRecognizer){
        clearColor()
        self.lblSizeXL.layer.backgroundColor = UIColor.black.cgColor
        lblSizeXL.textColor = .white
        
    }
    
    @objc private func addTapped(){
        let rootVC = FliterController()
        let navVC = UINavigationController(rootViewController: rootVC)
        present(navVC, animated: true)
    }
    
    @IBAction func ApplyBtn(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    //MARK: BtnColor
    @IBAction func BtnColor1(_ sender: Any) {
    clearImage()
    BtnColor.setImage(UIImage(named: "icons8-checkmark-96"), for: .normal)
    
    }
    @IBAction func btnColor2(_ sender: Any) {
        clearImage()
        BtnColor1.setImage(UIImage(named: "icons8-checkmark-96"), for: .normal)

        
    }
    @IBAction func btnColor3(_ sender: Any) {
        clearImage()
        BtnColor2.setImage(UIImage(named: "icons8-checkmark-96"), for: .normal)

        
    }
    @IBAction func btnColor4(_ sender: Any) {
        clearImage()
        BtnColor3.setImage(UIImage(named: "icons8-checkmark-96"), for: .normal)

    }
    @IBAction func btnColor5(_ sender: Any) {
        clearImage()
        BtnColor4.setImage(UIImage(named: "icons8-checkmark-96"), for: .normal)

    }
    
    func lblSize(){
        lblSizeXS.layer.borderWidth = 1
        lblSizeXS.layer.cornerRadius = 15
        lblSizeXS.layer.borderColor = UIColor.darkGray.cgColor
        
        lblSizeS.layer.borderWidth = 1
        lblSizeS.layer.cornerRadius = 15
        lblSizeS.layer.borderColor = UIColor.darkGray.cgColor
        
        lblSizeM.layer.borderWidth = 1
        lblSizeM.layer.cornerRadius = 15
        lblSizeM.layer.borderColor = UIColor.darkGray.cgColor
        
        lblSizeL.layer.borderWidth = 1
        lblSizeL.layer.cornerRadius = 15
        lblSizeL.layer.borderColor = UIColor.darkGray.cgColor
        
        lblSizeXL.layer.borderWidth = 1
        lblSizeXL.layer.cornerRadius = 15
        lblSizeXL.layer.borderColor = UIColor.darkGray.cgColor
    }
 
    func clearColor(){
        lblSizeL.layer.backgroundColor = nil
        lblSizeXL.layer.backgroundColor = nil
        lblSizeM.layer.backgroundColor = nil
        lblSizeS.layer.backgroundColor = nil
        lblSizeXS.layer.backgroundColor = nil
        
        lblSizeL.textColor = nil
        lblSizeXL.textColor = nil
        lblSizeM.textColor = nil
        lblSizeS.textColor = nil
        lblSizeXS.textColor = nil
        
        
    }
    func clearImage(){
        BtnColor.setImage(UIImage(named: ""), for: .normal)
        BtnColor1.setImage(UIImage(named: ""), for: .normal)
        BtnColor2.setImage(UIImage(named: ""), for: .normal)
        BtnColor3.setImage(UIImage(named: ""), for: .normal)
        BtnColor4.setImage(UIImage(named: ""), for: .normal)
    }
    
}


