//
//  LoginButton.swift
//  AllegoryApp
//
//  Created by Noman Ahmad on 1/26/22.
//

import UIKit

class LoginButton: UIButton {

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
    
    //common func to init our view
    private func setupView() {
        
        self.backgroundColor = UIColor.lilac
        self.setTitle("Login", for: .normal)
        self.setTitleColor(UIColor.navyBlue, for: .normal)
        self.layer.cornerRadius = 20
        self.clipsToBounds = true
        self.titleLabel?.textAlignment = .center
        self.translatesAutoresizingMaskIntoConstraints = false
    }

}
