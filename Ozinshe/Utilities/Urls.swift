//
//  Urls.swift
//  Ozinshe
//
//  Created by Asset Ryskul on 23.04.2022.
//

import Foundation

class Urls {
    static let BASE_URL = "http://api.ozinshe.com/core/V1/"

    static let SIGN_IN_URL = "http://api.ozinshe.com/auth/V1/signin"
    static let FAVORITE_URL = BASE_URL + "favorite/"
    static let CATEGORIES_URL = BASE_URL + "categories"
    static let MOVIES_BY_CATEGORY_URL = BASE_URL + "movies/page"
    static let SEARCH_MOVIES_URL = BASE_URL + "movies/search"
    static let MAIN_MOVIES_URL = BASE_URL + "movies/main"
    
}
