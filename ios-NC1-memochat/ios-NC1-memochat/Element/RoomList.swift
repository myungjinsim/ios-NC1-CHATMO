//
//  RoomList.swift
//  ios-NC1-memochat
//
//  Created by 심명진 on 2022/05/05.
//

import SwiftUI

struct RoomList: View {
    @EnvironmentObject var viewModel: ViewModel
    

    
    var body: some View {
        
        NavigationView{
            
            VStack {
                List(self.viewModel.rooms.indices) { index in
                    NavigationLink{
                        ChatView(index: index)
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        RoomRow(room: viewModel.rooms[index])
                    }
                    
                }
              
            }
        }
        .navigationTitle("메모방")
        
    }
}

//struct RoomList_Previews: PreviewProvider {
//    static var previews: some View {
//        RoomList()
//    }
//}


