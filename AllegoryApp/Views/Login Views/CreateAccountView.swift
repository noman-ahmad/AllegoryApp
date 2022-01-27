//
//  CreateAccountView.swift
//  AllegoryApp
//
//  Created by Noman Ahmad on 1/26/22.
//

import UIKit

class CreateAccountView: UIView {
    let button = UIButton()

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
        button.translatesAutoresizingMaskIntoConstraints = false
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.backgroundColor = UIColor.clear
        
        self.addSubview(button)
        
        button.setTitle("Don't Have an Account? Create One", for: .normal)
        button.setTitleColor(UIColor.lilac, for: .normal)
        
        button.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true

    }

}
