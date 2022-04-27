//
//  Storage.swift
//  Ozinshe
//
//  Created by Asset Ryskul on 23.04.2022.
//

import Foundation
import UIKit

struct Token {
    let accessToken: String
}

extension Token: Codable {
    enum CodingKeys: String, CodingKey {
        case accessToken
    }
}
                    


class Storage: Codable {
    public var accessToken: String = ""
    
    static let sharedInstance = Storage()

}
