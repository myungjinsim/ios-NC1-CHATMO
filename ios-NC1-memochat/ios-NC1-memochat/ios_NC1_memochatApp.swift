//
//  ios_NC1_memochatApp.swift
//  ios-NC1-memochat
//
//  Created by 심명진 on 2022/05/05.
//

import SwiftUI

@main
struct ios_NC1_memochatApp: App {
    @StateObject var viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
//            ChatView()
            RoomList()
                .environmentObject(self.viewModel)
        }
    }
}
#imageLiteral(resourceName: "simulator_screenshot_8647AC85-5687-4B0B-8DD4-8E2B22674243.png")
