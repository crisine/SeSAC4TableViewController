//
//  TodoListTableViewController.swift
//  SeSAC4TableViewController
//
//  Created by Minho on 1/8/24.
//

import UIKit

class TodoListTableViewController: UITableViewController {
    
    @IBOutlet weak var todoInputTextField: UITextField!
    @IBOutlet weak var addTodoButton: UIButton!
    
    let checkImageList: [UIImage] = [UIImage(systemName: "checkmark.square")!, UIImage(systemName: "checkmark.square.fill")!]
    
    let favoriteIconImageList: [UIImage] = [UIImage(systemName: "star")!, UIImage(systemName: "star.fill")!]
    
    var todoList: [Todo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addTodoButton.titleLabel?.text = "추가"
        addTodoButton.tintColor = .gray
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoListTableViewCell", for: indexPath) as! TodoListTableViewCell
        
        let todo = todoList[indexPath.row]
        
        cell.todoLabel.text = todo.text
        
        cell.leftTitleImage.image = todo.leftIcon
        cell.leftTitleImage.tintColor = .black
        
        cell.rightTitleImage.image = todo.rightIcon
        cell.rightTitleImage.tintColor = .black
        
        
        
        cell.backgroundColor = .systemGray6
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    
    @IBAction func didAddTodoButtonTapped(_ sender: UIButton) {
        if let newTodoText = todoInputTextField.text {
            let newTodo = Todo(leftIcon: checkImageList.randomElement()!, rightIcon: favoriteIconImageList.randomElement()!, text: newTodoText)
        
            todoList.append(newTodo)
            todoInputTextField.text = ""
            
            tableView.reloadData()
        }
    }
}
