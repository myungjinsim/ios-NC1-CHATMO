//
//  FavoriteRoomRow.swift
//  ios-NC1-memochat
//
//  Created by 심명진 on 2022/05/05.
//

import SwiftUI

struct FavoriteRoomRow: View {
    var room: Room
    
    var body: some View {
        
        VStack{
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.blue)
                .frame(width: 42, height: 42)
            
            Text(room.name)
                        
        }
    }
}

//struct FavoriteRoomRow_Previews: PreviewProvider {
//    static var previews: some View {
//        FavoriteRoomRow()
//    }
//}
