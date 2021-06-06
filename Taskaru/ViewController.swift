//
//  ViewController.swift
//  Taskaru
//
//  Created by 千葉雄太 on 2021/06/05.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet weak var taskTableView: UITableView!
    @IBOutlet weak var taskTextField: UITextField!
    
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
        let cell = taskTableView.dequeueReusableCell(withIdentifier: "CellID", for: indexPath)
        cell.textLabel?.text = taskArray[indexPath.row]
        
        return cell
    }
    
    @IBAction func taskCreate(_ sender: Any) {
        if taskTextField.text?.isEmpty == true{
            return
        }
        
        taskArray.append(taskTextField.text!)
        taskTextField.text = ""
        
        print(taskArray)
        taskTableView.reloadData()
        
    }
    
    
}

