//
//  UsernameTextField.swift
//  AllegoryApp
//
//  Created by Noman Ahmad on 1/26/22.
//

import UIKit

class UsernameTextField: UITextField {

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

                
        self.autocapitalizationType = .none
        self.placeholder = "Email"
        self.textColor = UIColor.navyBlue
        self.translatesAutoresizingMaskIntoConstraints = false
    }

}
