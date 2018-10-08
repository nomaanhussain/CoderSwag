//
//  CategpryCell.swift
//  CoderSwag
//
//  Created by Noman Hussain on 24/01/2018.
//  Copyright © 2018 Noman Hussain. All rights reserved.
//

import UIKit

class CategpryCell: UITableViewCell {
    @IBOutlet weak var CategpryCell : UIImageView!
    @IBOutlet weak var CategpryTitle : UILabel!

    func updateView (category : Category){
        CategpryCell.image = UIImage(named: category.imageName)
        CategpryTitle.text = category.title
    }
  
        


}
