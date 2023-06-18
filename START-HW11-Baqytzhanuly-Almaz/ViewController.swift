//
//  ViewController.swift
//  START-HW11-Baqytzhanuly-Almaz
//
//  Created by allz on 6/18/23.
//

import UIKit
import SnapKit

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
        textField.setLeftIcon(UIImage(named: "emailIcon")!)
        textField.setRightIcon(UIImage(named: "emailCheckMark")!)
        
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
        textField.setLeftIcon(UIImage(named: "passwordIcon")!)
    
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
        setupConstraints()
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
    
    private func setupConstraints() {
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        
        backgroundImageView.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(screenHeight * 0.63)
        }
        
        loginLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(screenHeight * 0.1)
            make.centerX.equalToSuperview()
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(37)
            make.leading.equalTo(68)
            make.trailing.equalTo(-69)
            make.height.equalTo(40)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(18)
            make.leading.equalTo(68)
            make.trailing.equalTo(-69)
            make.height.equalTo(40)
        }
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(48)
            make.leading.equalTo(68)
            make.trailing.equalTo(-69)
            make.height.equalTo(35)
        }
        
        forgotPasswordButton.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(24)
            make.centerX.equalToSuperview()
            make.width.equalTo(240)
            make.height.equalTo(35)
        }
        
        leftSeparatorView.snp.makeConstraints { make in
            make.trailing.equalTo(connectLabel.snp.leading).offset(-12)
            make.centerY.equalTo(connectLabel.snp.centerY)
            make.width.equalTo(85)
            make.height.equalTo(1)
        }
        
        connectLabel.snp.makeConstraints { make in
            make.bottom.equalTo(facebookButton.snp.top).offset(-25)
            make.centerX.equalToSuperview()
        }
        
        rightSeparatorView.snp.makeConstraints { make in
            make.leading.equalTo(connectLabel.snp.trailing).offset(12)
            make.centerY.equalTo(connectLabel.snp.centerY)
            make.width.equalTo(85)
            make.height.equalTo(1)
        }
        
        facebookButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-(screenHeight * 0.18))
            make.leading.equalTo(screenWidth * 0.072)
            make.trailing.equalTo(-(screenWidth * 0.53))
            make.height.equalTo(35)
        }
        
        twitterButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-(screenHeight * 0.18))
            make.leading.equalTo(facebookButton.snp.trailing).offset(21)
            make.trailing.equalTo(-(screenWidth * 0.072))
            make.height.equalTo(35)
        }
        
        otherAccountLabel.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-(screenHeight * 0.1))
            make.trailing.equalTo(otherSignUpButton.snp.leading).offset(-12)
            make.centerY.equalTo(otherSignUpButton.snp.centerY)
        }
        
        otherSignUpButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-(screenHeight * 0.1))
            make.trailing.equalToSuperview().offset(-(screenWidth * 0.3))
        }
    }
}

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
            let iconView = UIImageView(frame: CGRect(x: 35, y: 4, width: 11, height: 12))
            iconView.image = image
            let iconContainerView: UIView = UIView(frame: CGRect(x: 0, y: 20, width: 20, height: 20))
            iconContainerView.addSubview(iconView)
            leftView = iconContainerView
            leftViewMode = .always
        }
    
    func setRightIcon(_ image: UIImage) {
            let iconView = UIImageView(frame: CGRect(x: -15, y: 4, width: 12, height: 12))
            iconView.image = image
            let iconContainerView: UIView = UIView(frame: CGRect(x: 0, y: 20, width: 20, height: 20))
            iconContainerView.addSubview(iconView)
            rightView = iconContainerView
            rightViewMode = .always
        }
}
