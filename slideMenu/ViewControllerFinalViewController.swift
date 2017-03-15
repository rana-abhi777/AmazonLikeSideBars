//
//  ViewControllerFinalViewController.swift
//  slideMenu
//
//  Created by Sierra 4 on 06/03/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import UIKit

class ViewControllerFinalViewController: UIViewController {
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnLeftSlide: UIButton!
    @IBOutlet weak var btnRightSlide: UIButton!
    var lblTitlevar = String()
    override func viewDidLoad() {
        super.viewDidLoad()
     lblTitle.text = lblTitlevar
    }
    
    @IBAction func btnLeftSlide(_ sender: UIButton) {
        sender.isEnabled = false
        Appearance.ShowPanel(obj: self,opr: .left,identifier: "ViewControllerLelfSlide"){_ in
               sender.isEnabled = true
        }
    }
    @IBAction func btnRightSlide(_ sender: UIButton) {
        sender.isEnabled = false
        Appearance.ShowPanel(obj: self,opr: .right,identifier: "ViewControllerRightSlide"){_ in
                    sender.isEnabled = true
        }
    }
    @IBAction func btnBack(_ sender: UIButton) {
    _ = navigationController?.popViewController(animated: true)
    }
}
