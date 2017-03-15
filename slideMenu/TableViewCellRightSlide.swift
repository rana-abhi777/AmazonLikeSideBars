//
//  TableViewCellRightSlide.swift
//  slideMenu
//
//  Created by Sierra 4 on 03/03/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import UIKit

class TableViewCellRightSlide: UITableViewCell {
    @IBOutlet weak var imgImage1: UIImageView!
    @IBOutlet weak var imgimage2: UIImageView!

    @IBOutlet weak var lblOptionRight: UILabel!
    var Objects : objects? {
        
        didSet{
            updateUI()
        }
        
    }
          func updateUI(){
        
            lblOptionRight?.text = Objects?.name
            imgImage1?.image = UIImage(named:(Objects?.image1)!)
            imgimage2?.image = UIImage(named:(Objects?.image2)!)
    }

    override func awakeFromNib() {
        super.awakeFromNib()


    }

}
