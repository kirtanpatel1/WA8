//
//  MainView.swift
//  WA8_1
//
//  Created by user266918 on 11/4/24.
//

import UIKit

class MainView: UIView {
    
    var tableViewChats: UITableView!
    var logout: UIButton!
    var login: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        setupLogin()
        setupLogout()
        setupTableViewChats()
        initConstraints()
    }
    
    func setupLogin() {
        login = UIButton()
        login.setTitle("Log in", for: .normal)
        login.tintColor = .systemBlue
        login.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(login)
    }
    
    func setupLogout() {
        logout = UIButton()
        logout.setTitle("Logout", for: .normal)
        logout.tintColor = .systemBlue
        logout.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(logout)
    }
    
    func setupTableViewChats(){
        tableViewChats = UITableView()
        tableViewChats.register(ChatCell.self, forCellReuseIdentifier: "chats")
        tableViewChats.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(tableViewChats)
    }
    
    //MARK: setting the constraints...
    func initConstraints(){
        NSLayoutConstraint.activate([
            login.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 8),
            login.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            logout.topAnchor.constraint(equalTo: login.bottomAnchor, constant: 8),
            logout.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            tableViewChats.topAnchor.constraint(equalTo: logout.bottomAnchor, constant: 8),
            tableViewChats.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            tableViewChats.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            tableViewChats.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -8),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
