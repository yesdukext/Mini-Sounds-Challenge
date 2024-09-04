//
//  Created by Yves Dukuze on 04/09/2024.
//

import Foundation

protocol FetchConfigUseCase {
    
    func execute() async -> Result<ConfigResponse, Error>
    
}

class FetchConfigUseCaseImpl: FetchConfigUseCase {
    
    private let repository: ConfigRepository
    
    init(repository: ConfigRepository) {
        self.repository = repository
    }
    
    func execute() async -> Result<ConfigResponse, Error> {
        do {
            let response = try await repository.fetchConfig()
            return .success(response)
        } catch {
            return .failure(error)
        }
    }
    
}
