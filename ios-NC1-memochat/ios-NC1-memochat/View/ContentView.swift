//
//  ContentView.swift
//  ios-NC1-memochat
//
//  Created by 심명진 on 2022/05/05.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        ForEach(self.viewModel.rooms) { room in
            ForEach(room.memo) { memo in
                Text(memo.content)
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
