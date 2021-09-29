//
//  SecondViewController.swift
//  FashionDemo
//
//  Created by ZED on 23/4/21.
//

import UIKit
struct MyProdouct {
    var name: String!
    var image: UIImage!
    var item: String!

init(name: String,image: UIImage,item:String){
    self.name = name
    self.item = item
    self.image = image
    }
}


class SecondViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
   
    
    @IBOutlet weak var tableView: UITableView!
  
    var prodouctList = [MyProdouct]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.isNavigationBarHidden = false
        // Lable costome font titile navigationbar
        let lble1 = UILabel()
        lble1.text = "Category"
        lble1.font = UIFont(name: "Georgia", size: 20)
        navigationItem.titleView = lble1
        
        let nib = UINib(nibName: "SecondTableViewCellController", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "SecondTableViewCellController")
        tableView.delegate = self
        tableView.dataSource = self
        prodouctList = [MyProdouct(name: "TOP", image: #imageLiteral(resourceName: "shrit"), item: "93 Items"),
        MyProdouct(name: "Bottoms", image: #imageLiteral(resourceName: "skirt"), item: "101 Items"),
        MyProdouct(name: "Accessories", image: #imageLiteral(resourceName: "Sunglasses"), item: "23 Items"),
        MyProdouct(name: "Bags", image: #imageLiteral(resourceName: "unnamed"), item: "14 items")]
        
        
    }
    // func tableViewCell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prodouctList.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCellController", for: indexPath) as! SecondTableViewCellController
//        cell.textTime.text = myDataList[indexPath.section].nameMathce[indexPath.row].textTime
        cell.itemStock?.text = prodouctList[indexPath.row].item
        cell.imageItem?.image = prodouctList[indexPath.row].image
        cell.nameItem?.text = prodouctList[indexPath.row].name
        
        return cell
    }
    // did select from cell to anthor controller
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let VC = storyboard?.instantiateViewController(withIdentifier: "ShoesviewController"){
            self.navigationController?.pushViewController(VC, animated: true)
        }
    }
    
    
    
    
    
}
