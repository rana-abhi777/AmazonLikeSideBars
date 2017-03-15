//
//  TableViewCellLeftSlide.swift
//  slideMenu
//
//  Created by Sierra 4 on 03/03/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import UIKit

class TableViewCellLeftSlide: UITableViewCell {


    @IBOutlet weak var lblOptionLeft: UILabel!

    @IBOutlet weak var imgImage1: UIImageView!
    @IBOutlet weak var imgImage2: UIImageView!
    
    var Objects : objects? {
        
        didSet{
            updateUI()
        }
        
    }
    func updateUI(){
        
        lblOptionLeft?.text = Objects?.name
        imgImage1?.image = UIImage(named: (Objects?.image1)!)
        imgImage2?.image = UIImage(named: (Objects?.image2)!)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
