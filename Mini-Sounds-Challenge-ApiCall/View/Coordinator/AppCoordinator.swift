//
//  Created by Yves Dukuze on 04/09/2024.
//

import SwiftUI

class AppCoordinator {
    
    func start() -> some View {
        let networkService = NetworkServiceImpl()
        let repository = ConfigRepositoryImpl(networkService: networkService)
        let fetchConfigUseCase = FetchConfigUseCaseImpl(repository: repository)
        let present = ConfigPresenterImpl(fetchConfigUseCase: fetchConfigUseCase)
        
        return ConfigView(presenter: present)
        
    }
}
