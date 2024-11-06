//
//  LoginView.swift
//  WA8_1
//
//  Created by user266918 on 11/4/24.
//

import UIKit

class LoginView: UIView {

    var name: UITextField!
    var email: UITextField!
    var password: UITextField!
    var login: UIButton!
    var register: UIButton!

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        setupName()
        setupEmail()
        setupPassword()
        setupRegister()
        
        initConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupRegister() {
        register = UIButton(type: .system)
        register.setTitle("Register", for: .normal)
        register.tintColor = .systemBlue
        register.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(register)
    }
    
    func setupName() {
        name = UITextField()
        name.placeholder = "Name"
        name.borderStyle = .roundedRect
        name.translatesAutoresizingMaskIntoConstraints = false
        addSubview(name)
    }
    
    func setupEmail() {
        email = UITextField()
        email.placeholder = "Email"
        email.borderStyle = .roundedRect
        email.translatesAutoresizingMaskIntoConstraints = false
        addSubview(email)
    }
    
    func setupPassword() {
        password = UITextField()
        password.placeholder = "Password"
        password.borderStyle = .roundedRect
        password.translatesAutoresizingMaskIntoConstraints = false
        addSubview(password)
    }
    
    func initConstraints() {
        NSLayoutConstraint.activate([
            name.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 64),
            name.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor, constant: 8),
            email.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 8),
            email.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor, constant: 8),
            password.topAnchor.constraint(equalTo: email.bottomAnchor, constant: 8),
            password.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor, constant: 8),
            register.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 8),
            register.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor, constant: 8)
        ])
    }

}
