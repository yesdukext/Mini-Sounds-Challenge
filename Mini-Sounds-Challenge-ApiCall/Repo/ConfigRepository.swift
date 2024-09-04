//
//
//  Created by Yves Dukuze on 04/09/2024.
//

import Foundation

protocol ConfigRepository {
    
    func fetchConfig() async throws -> ConfigResponse
    
}

class ConfigRepositoryImpl: ConfigRepository {
    
    private let networkService: NetworkService
    
    init(networkService: NetworkService) {
        self.networkService = networkService
    }
    
    func fetchConfig() async throws -> ConfigResponse {
        return try await networkService.fetchConfiguration()
    }
}
