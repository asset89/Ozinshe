//
//  SignInViewModel.swift
//  Ozinshe
//
//  Created by Asset Ryskul on 19.04.2022.
//

import Foundation
import UIKit
import RxSwift

class SigInViewModel {
    
    private let authManager = AuthManager()
    
    struct Input {
        let username: AnyObserver<String>
        let password: AnyObserver<String>
        let signInDidTap: AnyObserver<Void>
    }
    struct Output {
        let loginResultObservable: Observable<Storage>
        let errorsObservable: Observable<Error>
    }
    
    let input: Input
    let output: Output
    
    init() {
        input = Input(username: emailSubject.asObserver(),
                      password: passwordSubject.asObserver(),
                      signInDidTap: signInDidTapSubject.asObserver())
        output = Output(loginResultObservable: loginResultSubject.asObservable(),
                        errorsObservable: errorsSubject.asObservable())
    }
    
    private let emailSubject = PublishSubject<String>()
    private let passwordSubject = PublishSubject<String>()
    private let signInDidTapSubject = PublishSubject<Void>()
    private let loginResultSubject = PublishSubject<Storage>()
    private let errorsSubject = PublishSubject<Error>()
    
    func signIn() {
        authManager.signIn(with: credentials) { result in
            switch result {
                case .success(let token):
                    Storage.sharedInstance.accessToken = token.accessToken
                    UserDefaults.standard.set(token.accessToken, forKey: "accessToken")
                case .failure(let error):
                    print(error)
            }
        }
    }
}
