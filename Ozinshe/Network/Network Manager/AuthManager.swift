//
//  AuthManager.swift
//  Ozinshe
//
//  Created by Asset Ryskul on 23.04.2022.
//

import Foundation
import RxSwift
import Moya

struct AuthManager {
    let provider = MoyaProvider<AuthService>()
    
    func signIn(with credentials: Credentials, completion: @escaping (Result<Token, Error>) -> Observable<Storage> ) {
        provider.request(.signIn(email: credentials.username, password: credentials.password)) { result in
            switch result {
                case let .success(moyaResponse):
                let data = moyaResponse.data
                let statusCode = moyaResponse.statusCode
                if statusCode == 200 {
                    do {
                        let response = try JSONDecoder().decode(Token.self, from: data)
                        completion(.success(response))
                    } catch {
                        completion(.failure(error))
                    }
                }
                case let .failure(error):
                    debugPrint(error)
                    break
            }
        }
    }
}
