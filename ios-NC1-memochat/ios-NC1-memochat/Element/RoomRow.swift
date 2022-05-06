//
//  RoomRow.swift
//  ios-NC1-memochat
//
//  Created by 심명진 on 2022/05/05.
//

import SwiftUI

struct RoomRow: View {
    var room: Room
    
    var body: some View {
        HStack{
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.blue)
                .frame(width: 42, height: 42)
            Text(room.name)
            
            Spacer()
            
            if room.isFavorite{
                Button(action: {}, label:{
                    Image(systemName: "star.fill")
                        .padding(.horizontal, 8)
                })
  
            }else{
                Button(action: {}, label:{
                    Image(systemName: "star")
                        .padding(.horizontal, 8)
                })
           
            }
        }
    }
}

//struct RoomRow_Previews: PreviewProvider {
//    static var previews: some View {
//        
//        RoomRow(room: Room(id: 1, name: "", isFavorite: true, memo: [Memo(id: 1, content: "", date: "", isFavorite: true)]))
//    }
//}
