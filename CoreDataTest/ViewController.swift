//
//  ViewController.swift
//  CoreDataTest
//
//  Created by Harry Shen on 21/12/19.
//  Copyright © 2019 Harry Shen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let loginContentView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let unameTxtField: UITextField = {
        let txtField = UITextField()
        txtField.backgroundColor = .white
        txtField.borderStyle = .roundedRect
        return txtField
    }()
    
    private let pwordTxtField: UITextField = {
        let txtField = UITextField()
        txtField.borderStyle = .roundedRect
        return txtField
    }()
    
    let btnLogin: UIButton = {
        let btn = UIButton(type:.system)
        btn.backgroundColor = .black
        btn.setTitle("Button", for: .normal)
        btn.tintColor = .white
        btn.layer.cornerRadius = 5
        btn.clipsToBounds = true
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        loginContentView.addSubview(unameTxtField)
        loginContentView.addSubview(pwordTxtField)
        loginContentView.addSubview(btnLogin)
        view.addSubview(loginContentView)
        
        loginContentView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        loginContentView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        loginContentView.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        
        loginContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        //Constraints of Username Text Field
        unameTxtField.topAnchor.constraint(equalTo: loginContentView.topAnchor).isActive = true
        unameTxtField.topAnchor.constraint(equalTo: loginContentView.topAnchor, constant: 40).isActive = true
        unameTxtField.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 20).isActive = true
        unameTxtField.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -20).isActive = true
        unameTxtField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //Constraints of Password Text Field
        pwordTxtField.topAnchor.constraint(equalTo: unameTxtField.bottomAnchor, constant: 20).isActive = true
        pwordTxtField.topAnchor.constraint(equalTo: loginContentView.topAnchor, constant: 40).isActive = true
        pwordTxtField.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 20).isActive = true
        pwordTxtField.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -20).isActive = true
        pwordTxtField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //Constraints of Login Button
        btnLogin.topAnchor.constraint(equalTo: pwordTxtField.bottomAnchor, constant: 20).isActive = true
        btnLogin.topAnchor.constraint(equalTo: loginContentView.topAnchor, constant: 40).isActive = true
        btnLogin.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 20).isActive = true
        btnLogin.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -20).isActive = true
        btnLogin.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }


}

