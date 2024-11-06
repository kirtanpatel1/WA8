//
//  RegisterController.swift
//  WA8_1
//
//  Created by user266918 on 11/6/24.
//

import UIKit

class RegisterController: UIViewController {
    
    let registerScreen = RegisterView()
    
    override func loadView() {
        view = registerScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        registerScreen.register.addTarget(self, action: #selector(onRegisterTapped), for: .touchUpInside)
    }
    
    @objc func onRegisterTapped() {
        self.dismiss(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
