//
//  ShoesviewController.swift
//  FashionDemo
//
//  Created by ZED on 23/4/21.
//

import UIKit

struct itemList {
    var image: UIImage!
    var price : String!
    var titleItem: String!
    
    init(image: UIImage,price: String,titleItem: String) {
        self.image = image
        self.price = price
        self.titleItem = titleItem
    }
    
}


class ShoesviewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
   
    
    @IBOutlet weak var collection: UICollectionView!
   
    var listItem = [itemList]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        let lble1 = UILabel()
        lble1.text = "Shoes"
        lble1.font = UIFont(name: "Georgia", size: 20)
        navigationItem.titleView = lble1
        
        collection.delegate = self
        collection.dataSource = self
        collection.collectionViewLayout = UICollectionViewFlowLayout()
        
        
//        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: ., target: self, action: #selector(addTapped))
        
        listItem = [itemList(image: #imageLiteral(resourceName: "shoes3.png"), price: "39.00 $", titleItem: "Apricot faux suede lace up Rubber Sole low "),itemList(image: #imageLiteral(resourceName: "shoes1.png"), price: "59.90 $", titleItem: "Apricot faux suede lace up Rubber Sole low "),itemList(image: #imageLiteral(resourceName: "shoes1.png"), price: "29.90 $", titleItem: "Apricot faux suede lace up Rubber Sole low "),itemList(image: #imageLiteral(resourceName: "shoes1.png"), price: "69.90 $", titleItem: "Apricot faux suede lace up Rubber Sole low ")]
        
        
    }
    
    @objc private func addTapped(){
        let rootVC = FliterController()
        let navVC = UINavigationController(rootViewController: rootVC)
        present(navVC, animated: true)
    }
   
    // collection func
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listItem.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell

        
        cell.imageCollection.image = listItem[indexPath.row].image
        cell.priceLable.text = listItem[indexPath.row].price
        cell.titleLable.text = listItem[indexPath.row].titleItem
        return cell
    }
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        print(listItem[indexPath.row].titleItem)
//    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let lay = collectionViewLayout as! UICollectionViewFlowLayout
        let widthPerItem = collectionView.frame.width / 2 - lay.minimumInteritemSpacing
        
        return CGSize(width:widthPerItem , height: 318)
    }
    // did select from cell to anthor controller
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let VC = storyboard?.instantiateViewController(withIdentifier: "FliterController"){
            self.navigationController?.pushViewController(VC, animated: true)
        }
    }
    
    @IBAction func FilterBtn(_ sender: Any) {
        
        let VC = storyboard?.instantiateViewController(withIdentifier: "FliterController")
        self.navigationController?.pushViewController(VC!, animated: true)
        
    }
}
