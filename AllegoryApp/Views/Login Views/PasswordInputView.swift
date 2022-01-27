//
//  PasswordInputView.swift
//  AllegoryApp
//
//  Created by Noman Ahmad on 1/26/22.
//

import UIKit

class PasswordInputView: UIView {

    
    let passwordTextField = PasswordTextField()
    let passwordImage = UIImageView()
    
    //initWithFrame to init view from code
    override init(frame: CGRect) {
      super.init(frame: frame)
      setupView()
    }
    
    //initWithCode to init view from xib or storyboard
    required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
      setupView()
    }
    
    private func setupView() {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        passwordImage.translatesAutoresizingMaskIntoConstraints = false
        
        passwordImage.image = UIImage(systemName: "lock.circle.fill")
        passwordImage.tintColor = UIColor.lilac
        
        self.backgroundColor = .secondarySystemBackground
        self.layer.cornerRadius = 20
        self.clipsToBounds = true
        self.addSubview(passwordTextField)
        self.addSubview(passwordImage)
        self.setupConstraints()
        
    }
    
    private func setupConstraints() {
        passwordImage.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        passwordImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        passwordImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        passwordImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        passwordTextField.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -5).isActive = true
    }
}
