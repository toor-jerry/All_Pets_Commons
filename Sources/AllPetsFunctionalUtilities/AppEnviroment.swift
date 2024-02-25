//  AppEnviroment.swift
//  All_Pets
//
//  Created by Gerardo Bautista Castañeda on 09/08/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

public enum AppEnvironment {
    case Development
    case Production
}

public struct AppConfig {

    static var environment : AppEnvironment {
        #if DEVELOPMENT
          return .Development
        #elseif PRODUCTION
        return .Production
        #else
        return .Development
        #endif
    }
}
