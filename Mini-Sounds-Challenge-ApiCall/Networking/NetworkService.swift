//
//
//  Created by Yves Dukuze on 04/09/2024.
//

import Foundation

protocol NetworkService {
    func fetchConfiguration() async throws -> ConfigResponse
}

class NetworkServiceImpl: NetworkService {
    
    private let session: URLSession
    
    init(session: URLSession = .shared) {
        self.session = session
    }
    
    func fetchConfiguration() async throws -> ConfigResponse {
        let url = URL(string: "https://sounds-mobile-config.files.bbci.co.uk/ios/2.3.0/config.json")!
        let (data, response) = try await session.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
            throw URLError(.badServerResponse)
        }
        return try JSONDecoder().decode(ConfigResponse.self, from: data)
    }
}
