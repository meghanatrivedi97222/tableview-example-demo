//
//  ViewController.swift
//  tableviewdemo
//
//  Created by Vaibhav on 09/05/18.
//  Copyright © 2018 Vaibhav. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var mytableview: UITableView!
    
    var array = ["a","b","c","d","e","f","g","h","i","j","etc.."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mytableview.delegate = self
        mytableview.dataSource = self
        self.mytableview.tableFooterView = UIView()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
         return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell : TableViewCell!
        
        cell = mytableview.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        let week = array[indexPath.row]
        cell.my_label?.text = week
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("didtapded\(indexPath.row)")
        let indexPath = tableView.indexPathForSelectedRow
        
        //getting the current cell from the index path
        let currentCell = mytableview.cellForRow(at: indexPath!)! as! TableViewCell
        
        //getting the text of that cell
        let currentItem = currentCell.my_label.text
        print("cutrrent cell .............",currentItem!)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

