//
//  LoginViewController.swift
//  AllegoryApp
//
//  Created by Noman Ahmad on 1/26/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    let usernameField = UsernameInputView()
    let passwordField = PasswordInputView()
    let loginButton = LoginButton()
    let appleSignIn = AppleLoginButton()
    let createAccount = CreateAccountView()
    let logoTitle = LogoTitleLabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.navyBlue
        

        view.addSubview(usernameField)
        view.addSubview(passwordField)
        view.addSubview(loginButton)
        view.addSubview(appleSignIn)
        view.addSubview(createAccount)
        view.addSubview(logoTitle)
        self.setupConstraints()
        
    }
    
    private func setupConstraints() {
        
        
        passwordField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        passwordField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        passwordField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        
        usernameField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        usernameField.bottomAnchor.constraint(equalTo: passwordField.topAnchor, constant: -10).isActive = true
        usernameField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        usernameField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        loginButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 10).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        appleSignIn.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 50).isActive = true
        appleSignIn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        appleSignIn.widthAnchor.constraint(equalToConstant: 300).isActive = true
        appleSignIn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        createAccount.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        createAccount.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        logoTitle.bottomAnchor.constraint(equalTo: usernameField.topAnchor, constant: -50).isActive = true
        logoTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
}
