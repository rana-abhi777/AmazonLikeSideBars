//
//  ViewControllerLelfSlide.swift
//  slideMenu
//
//  Created by Sierra 4 on 03/03/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import UIKit
var array = [[objects(name:"Home",image1:"",image2:""),
              objects(name:"Shop by category",image1:"",image2:""),
              objects(name:"Today's deal",image1:"",image2:"")],
             
             [objects(name:"Your Order",image1:"",image2:""),
              objects(name:"Your Wish List",image1:"",image2:""),
              objects(name:"Your Account",image1:"",image2:""),
              objects(name:"Amazon Pay",image1:"",image2:""),
              objects(name:"Sell On Amazon",image1:"",image2:"")],
             
             [objects(name:"Settings",image1:"IndianFlag",image2:"arrow_right")
                ,objects(name:"Customer Services",image1:"",image2:"")
    ]]
var name : String = "Nitin soni"
class ViewControllerLelfSlide: UIViewController {
    var selected : String?
    @IBOutlet weak var lblName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblName.text = "Hello, " + name
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        Back.backPanel(obj: self,opr: .left)
    }
}

extension ViewControllerLelfSlide: UITableViewDelegate,UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return array.count
        }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionView:UIView = UIView.init(frame: CGRect.init(x: 16, y: 0, width: tableView.frame.size.width, height: 1))
        sectionView.backgroundColor = UIColor.gray
            return sectionView
        }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if(section != 0 ){
           return 1
        }
        else{
            return 0
        }
        }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return array[section].count
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        guard let cell:TableViewCellLeftSlide = tableView.dequeueReusableCell(withIdentifier: "identifierTableCellLeftPanel", for: indexPath) as? TableViewCellLeftSlide else{ return TableViewCellLeftSlide()}
          cell.Objects = array[indexPath.section][indexPath.row]
        return cell
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        selected = array[indexPath.section][indexPath.row].name
        performSegue(withIdentifier: "identifierLeft", sender: self)
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destViewController = segue.destination as?
            ViewControllerFinalViewController{
            guard let item : String = selected else {return }
            destViewController.lblTitlevar = item
        }
    }
}
