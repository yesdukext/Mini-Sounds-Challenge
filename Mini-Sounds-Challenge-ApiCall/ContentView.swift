//
//  Created by Yves Dukuze on 04/09/2024.
//

import SwiftUI

struct ContentView: View {
    
    private let coordinator = AppCoordinator()
    
    var body: some View {
        coordinator.start()
    }
}

#Preview {
    ContentView()
}
