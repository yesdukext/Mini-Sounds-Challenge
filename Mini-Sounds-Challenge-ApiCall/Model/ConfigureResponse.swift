//
//  Created by Yves Dukuze on 04/09/2024.
//

import Foundation

struct ConfigResponse: Codable {
    let status: KillSwitch
    let rmsConfig: RMSConfig
    
    enum CodingKeys: String, CodingKey {
        case status
        case rmsConfig = "rmsConfig"
    }
}

struct KillSwitch: Codable {
    let isOn: Bool
    let title: String
    let message: String
    let linkTitle: String
    let appStoreUrl: String
}

struct RMSConfig: Codable {
    let apiKey: String
    let rootUrl: String
}


