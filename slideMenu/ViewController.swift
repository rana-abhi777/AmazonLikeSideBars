//
//  ViewController.swift
//  slideMenu
//
//  Created by Sierra 4 on 02/03/17.
//  Copyright © 2017 codebrew. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
            var flag : Int = 0
    
    @IBOutlet weak var btnLeftSlide: UIButton!
    @IBOutlet weak var btnRightSlide: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(handlePan))
        view.addGestureRecognizer(gestureRecognizer)
    }
    func handlePan(_ gestureRecognizer: UIPanGestureRecognizer)
    {    var difference : CGFloat
        let translation = gestureRecognizer.location(in: self.view)
        if( gestureRecognizer.state == .ended){
            let translation1 = view.frame.width/2
            difference = translation.x - translation1
            if(difference >= 0.0)
            {   if (flag == 0){
                Appearance.ShowPanel(obj: self,opr: .left,identifier: "ViewControllerLelfSlide"){_ in
                            self.flag = 1
                }
                }}
            else{   if(flag == 1){
                Appearance.ShowPanel(obj: self,opr: .right,identifier: "ViewControllerRightSlide"){_ in
                    self.flag = 0
                }
                }
            }
        }
    }
    @IBAction func btnRightSide(_ sender: UIButton) {
         self.btnRightSlide.isEnabled = false
        Appearance.ShowPanel(obj: self,opr: .right,identifier: "ViewControllerRightSlide"){_ in
                self.btnRightSlide.isEnabled = true
            }
    }
    @IBAction func btnLeftSlide(_ sender: UIButton) {
         self.btnLeftSlide.isEnabled = false
        Appearance.ShowPanel(obj: self,opr: .left,identifier: "ViewControllerLelfSlide"){_ in
               self.btnLeftSlide.isEnabled = true
    }
}
}
