//
//  ProductCell.swift
//  CoderSwag
//
//  Created by Noman Hussain on 31/01/2018.
//  Copyright © 2018 Noman Hussain. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage : UIImageView!
    @IBOutlet weak var productTitle : UILabel!
    @IBOutlet weak var productPrize : UILabel!

    func updateProduct(product : Product ){
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrize.text = product.price
    }
    
}
