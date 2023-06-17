//
//  ViewController.swift
//  START-HW11-Baqytzhanuly-Almaz
//
//  Created by allz on 6/18/23.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    private lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "background")
        
        return imageView
    }()
    
    private lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .white
        label.font = UIFont(name: "Blinker-SemiBold", size: 24)
        
        return label
    }()
    
    private lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.font = UIFont(name: "Blinker-Regular", size: 12)
        textField.textAlignment = .center
        textField.layer.cornerRadius = 20
        textField.backgroundColor = .white
        textField.textColor = .black
        
        return textField
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.font = UIFont(name: "Blinker-Regular", size: 12)
        textField.textAlignment = .center
        textField.layer.cornerRadius = 20
        textField.backgroundColor = .white
        textField.textColor = .black
    
        return textField
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        
        button.configuration = .filled()
        button.configuration?.cornerStyle = .capsule
        button.configuration?.title = "Login"
        button.configuration?.titleAlignment = .center
        button.configuration?.baseBackgroundColor = UIColor(red: 106/255, green: 116/255, blue: 207/255, alpha: 1)
        button.configuration?.attributedTitle?.font = UIFont(name: "Blinker-Regular", size: 12)
        
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        
        return button
    }()
    
    private lazy var forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Forgot your password?", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Blinker-Regular", size: 12)
        
        return button
    }()
    
    private lazy var leftSeparatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 122/255, green: 122/255, blue: 122/255, alpha: 1)
        view.layer.cornerRadius = 3
        
        return view
    }()
    
    private lazy var connectLabel: UILabel = {
        let label = UILabel()
        label.text = "or connect with"
        label.textColor = UIColor(red: 122/255, green: 122/255, blue: 122/255, alpha: 1)
        label.font = UIFont(name: "Blinker-Regular", size: 12)
        
        return label
    }()
    
    private lazy var rightSeparatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 122/255, green: 122/255, blue: 122/255, alpha: 1)
        view.layer.cornerRadius = 3
        
        return view
    }()
    
    private lazy var facebookButton: UIButton = {
        let button = UIButton()
        
        button.configuration = .filled()
        button.configuration?.cornerStyle = .capsule
        button.configuration?.title = "Facebook"
        button.configuration?.titleAlignment = .center
        button.configuration?.baseBackgroundColor = UIColor(red: 53/255, green: 166/255, blue: 239/255, alpha: 1)
        button.configuration?.image = UIImage(named: "facebook")
        button.configuration?.imagePlacement = .leading
        button.configuration?.imagePadding = 5
        button.configuration?.attributedTitle?.font = UIFont(name: "Blinker-Regular", size: 14)
        
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        
        return button
    }()
    
    private lazy var twitterButton: UIButton = {
        let button = UIButton()
        
        button.configuration = .filled()
        button.configuration?.cornerStyle = .capsule
        button.configuration?.title = "Twitter"
        button.configuration?.titleAlignment = .center
        button.configuration?.baseBackgroundColor = UIColor(red: 80/255, green: 115/255, blue: 181/255, alpha: 1)
        button.configuration?.image = UIImage(named: "twitter")
        button.configuration?.imagePlacement = .leading
        button.configuration?.imagePadding = 5
        button.configuration?.attributedTitle?.font = UIFont(name: "Blinker-Regular", size: 14)
        
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        
        return button
    }()
    
    private lazy var otherAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Don't have account?"
        label.tintColor = .black
        label.font = UIFont(name: "Blinker-Regular", size: 12)
        label.textColor = UIColor(red: 122/255, green: 122/255, blue: 122/255, alpha: 1)
        
        return label
    }()
    
    private lazy var otherSignUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign up", for: .normal)
        button.titleLabel?.font = UIFont(name: "Blinker-Regular", size: 12)
        button.setTitleColor(UIColor(red: 106/255, green: 116/255, blue: 207/255, alpha: 1), for: .normal)
        
        return button
    }()

    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    
    // MARK: - Setup
    
    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(backgroundImageView)
        view.addSubview(loginLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(forgotPasswordButton)
        view.addSubview(leftSeparatorView)
        view.addSubview(connectLabel)
        view.addSubview(rightSeparatorView)
        view.addSubview(facebookButton)
        view.addSubview(twitterButton)
        view.addSubview(otherAccountLabel)
        view.addSubview(otherSignUpButton)
    }
}
