//
//  ProductVC.swift
//  CoderSwag
//
//  Created by Noman Hussain on 31/01/2018.
//  Copyright © 2018 Noman Hussain. All rights reserved.
//

import UIKit

class ProductVC: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource{
  
    
    
    @IBOutlet weak var productCollection:UICollectionView!
    private(set) public var product = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()

        productCollection.dataSource = self
        productCollection.delegate = self
    }

    func initialzeProducts (category : Category){
        product = DataService.instance.getProducts(forCategoryTitle: category.title)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return product.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            let product = self.product[indexPath.row]
            cell.updateProduct(product: product)
            return cell
        }
        else{
            return ProductCell()
        }
    }

}
