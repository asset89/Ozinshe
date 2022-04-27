//
//  SignInViewController.swift
//  Ozinshe
//
//  Created by Asset Ryskul on 19.04.2022.
//

import UIKit

class SignInViewController: UIViewController {
    /*<--- textField outlets --->*/
    @IBOutlet weak var emailTextField: TextFieldWithPadding!
    @IBOutlet weak var passwordTextField: TextFieldWithPadding!
    
    /*<--- button outlet --->*/
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
    }
    
    // MARK: - configure textfields & button method
    func configureViews() {
        emailTextField.layer.cornerRadius = Constants.STANDART_CORNER_RADIUS
        emailTextField.layer.borderWidth = Constants.STANDART_BORDER_WIDTH
        emailTextField.layer.borderColor = Constants.TEXT_FIELD_BORDER_COLOR
        
        passwordTextField.layer.cornerRadius = Constants.STANDART_CORNER_RADIUS
        passwordTextField.layer.borderWidth = Constants.STANDART_BORDER_WIDTH
        passwordTextField.layer.borderColor = Constants.TEXT_FIELD_BORDER_COLOR
        
        signInButton.layer.cornerRadius = Constants.STANDART_CORNER_RADIUS
        signInButton.tintColor = Constants.STANDART_PURPLE_THEME_COLOR
    }
    
    // MARK: - textfield methods
    @IBAction func textFieldDidBegin(_ sender: TextFieldWithPadding) {
        sender.layer.borderColor = Constants.STANDART_PURPLE_BORDER_COLOR
    }
    
    @IBAction func textFieldDidEnd(_ sender: TextFieldWithPadding) {
        sender.layer.borderColor = Constants.TEXT_FIELD_BORDER_COLOR
    }
    
    // MARK: - show password button pressed
    @IBAction func showPassword(_ sender: UIButton) {
    }
    
    // MARK: - sign in button pressed
    @IBAction func signInButton_Pressed(_ sender: UIButton) {
        
    }
    


}
