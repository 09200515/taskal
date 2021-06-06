//
//  ViewController.swift
//  Taskaru
//
//  Created by 千葉雄太 on 2021/06/05.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {

    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var taskTableView: UITableView!
    

    
    var taskArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        taskTableView.delegate = self
        taskTableView.dataSource = self
        
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskArray.count
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        
        let cellLabel = cell.contentView.viewWithTag(2) as! UILabel
        
        cellLabel.text = taskArray[indexPath.row]
        return cell
    }
    
    @IBAction func taskCreate(_ sender: Any) {
        if taskTextField.text?.isEmpty == true{
            return
        }
        
        taskArray.append(taskTextField.text!)
        taskTextField.text = ""
        
    }
    
}

