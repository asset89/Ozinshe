//
//  AuthService.swift
//  Ozinshe
//
//  Created by Asset Ryskul on 23.04.2022.
//
import Foundation
import Moya

enum AuthService {
    case signIn(email: String, password: String)
}

extension AuthService: TargetType {
    var baseURL: URL {
        return URL(string: "http://api.ozinshe.com")!
    }
    
    var path: String {
        switch self {
        case .signIn:
            return "/auth/V1/signin"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .signIn:
            return .post
        }
    }

    var task: Task {
        switch self {
        case .signIn(let email, let password):
            return .requestParameters(parameters: ["email": email, "password": password], encoding: JSONEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        nil
    }
    
    
}
