//
//  FavoriteRoomList.swift
//  ios-NC1-memochat
//
//  Created by 심명진 on 2022/05/05.
//

import SwiftUI

struct FavoriteRoomList: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var filteredRooms: [Room]{
        viewModel.rooms.filter{ room in
            (room.isFavorite)
        }
    }
    
    var body: some View {
        HStack{
            
            List(filteredRooms.indices){ index in
                NavigationLink{
                    ChatView(index: index)
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarBackButtonHidden(true)
                } label: {
                    FavoriteRoomRow(room: viewModel.rooms[index])
                }
                
            }
        }
    }
}
//struct FavoriteRoomList_Previews: PreviewProvider {
//    static var previews: some View {
//        FavoriteRoomList()
//    }
//}
