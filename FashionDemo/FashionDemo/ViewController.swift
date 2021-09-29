//
//  ViewController.swift
//  FashionDemo
//
//  Created by ZED on 20/4/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var RegisterBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        RegisterBtn.layer.borderColor = UIColor.black.cgColor
        RegisterBtn.layer.borderWidth = 2
    }

 
    @IBAction func BtnSkip(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
        self.navigationController?.pushViewController(vc!, animated: true)
        
        // rootViewController
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(addTapped))
    }
    // objc for root controller of navigation
    @objc private func addTapped(){
        let rootVC = SecondViewController()
        let navVC = UINavigationController(rootViewController: rootVC)
        present(navVC, animated: true)
    }
}

