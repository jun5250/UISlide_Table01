//
//  ViewController.swift
//  UISlide_Table01
//
//  Created by D7703_22 on 2018. 5. 3..
//  Copyright © 2018년 jun5250. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var mytableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mytableview.dataSource=self
        mytableview.delegate=self
    }

    @IBAction func slideMoved(_ sender: Any) {
        print("slider value = \(Int(mySlider.value * 100))")
        
        //tableview 값을 reload
        mytableview.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "RE"
        let cell = mytableview.dequeueReusableCell(withIdentifier: identifier, for:indexPath)
        
        let tableValue = String(indexPath.row+Int(mySlider.value * 100))
        cell.textLabel?.text = tableValue
        return cell
    }
    
}

