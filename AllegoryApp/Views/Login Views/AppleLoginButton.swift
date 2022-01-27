//
//  AppleLoginButton.swift
//  AllegoryApp
//
//  Created by Noman Ahmad on 1/26/22.
//

import UIKit

class AppleLoginButton: UIButton {
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
        
        self.setImage(UIImage(named: "apple_logo_black3x"), for: .normal)
        self.layer.cornerRadius = 20
        self.clipsToBounds = true
        self.backgroundColor = UIColor.black
        
        self.translatesAutoresizingMaskIntoConstraints = false
    }

}
