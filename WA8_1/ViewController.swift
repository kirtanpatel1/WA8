//
//  ViewController.swift
//  WA8_1
//
//  Created by user266918 on 11/4/24.
//

import UIKit

class ViewController: UIViewController {

    let firstScreen = MainView()
    var chatNames = [String]()
    
    let notificationCenter = NotificationCenter.default
        
    override func loadView() {
        view = firstScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My Chats"
        firstScreen.tableViewChats.delegate = self
        firstScreen.tableViewChats.dataSource = self
        
        // MARK: setting the add button to the navigation controller...
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem(
            barButtonSystemItem: .compose, target: self,
            action: #selector(onNewTapped)
        )]
        
        navigationItem.leftBarButtonItems = [
            UIBarButtonItem(
                barButtonSystemItem: .add, target: self,
                action: #selector(onLoginTapped)
            ),UIBarButtonItem(
                barButtonSystemItem: .close, target: self,
                action: #selector(onLogoutTapped)
            )
        ]
        
        
//        getAllChats()
    }
    
    @objc func onNewTapped() {
        let alertController = UIAlertController(title: "New Chat", message: nil, preferredStyle: .alert)
        
        alertController.addTextField { (emailField) in
                emailField.placeholder = "Email"
                emailField.keyboardType = .emailAddress
                emailField.autocapitalizationType = .none
            }
        
        let createAction = UIAlertAction(title: "Create", style: .default) { _ in
                let email = alertController.textFields?[0].text ?? ""
                
                // TODO
            }
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .default) { _ in
                self.dismiss(animated: true)
            }
        
        alertController.addAction(createAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: false)
    }
    
    @objc func onLogoutTapped() {
        
    }
    
    @objc func onLoginTapped() {
        let alertController = UIAlertController(title: "Log in", message: nil, preferredStyle: .alert)
        
        alertController.addTextField { (emailField) in
                emailField.placeholder = "Email"
                emailField.keyboardType = .emailAddress
                emailField.autocapitalizationType = .none
            }
            
        alertController.addTextField { (passwordField) in
                passwordField.placeholder = "Password"
                passwordField.isSecureTextEntry = true
            }
        
        let loginAction = UIAlertAction(title: "Log In", style: .default) { _ in
                let email = alertController.textFields?[0].text ?? ""
                let password = alertController.textFields?[1].text ?? ""
                
                // TODO
            }
            
            let registerAction = UIAlertAction(title: "Register", style: .default) { _ in
                let registerController = RegisterController()
                self.present(registerController, animated: true)
            }
        
        alertController.addAction(loginAction)
            alertController.addAction(registerAction)
        
        self.present(alertController, animated: false)
    }
    
    @objc func onAddBarTapped() {
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chats", for: indexPath) as! ChatCell
        cell.labelName.text = chatNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//            getChatDetails(name: self.chatNames[indexPath.row])
        }
    
    
}

