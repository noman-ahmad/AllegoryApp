//
//  UsernameInputView.swift
//  AllegoryApp
//
//  Created by Noman Ahmad on 1/26/22.
//

import UIKit

class UsernameInputView: UIView {
    
    let usernameTextField = UsernameTextField()
    let emailImage = UIImageView()
    
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
        emailImage.translatesAutoresizingMaskIntoConstraints = false
        
        emailImage.image = UIImage(systemName: "envelope.circle.fill")
        emailImage.tintColor = UIColor.lilac
        
        self.backgroundColor = .secondarySystemBackground
        self.layer.cornerRadius = 20
        self.clipsToBounds = true
        self.addSubview(usernameTextField)
        self.addSubview(emailImage)
        self.setupConstraints()
        
    }
    
    private func setupConstraints() {
        
        usernameTextField.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        usernameTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45).isActive = true
        usernameTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -5).isActive = true
        
        emailImage.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        emailImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        emailImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        emailImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    

}
