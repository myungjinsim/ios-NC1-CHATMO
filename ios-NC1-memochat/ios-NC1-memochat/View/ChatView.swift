//
//  ChatView.swift
//  ios-NC1-memochat
//
//  Created by 심명진 on 2022/05/05.
//

import SwiftUI

struct ChatView: View {
    @EnvironmentObject var viewModel: ViewModel
    @Environment(\.presentationMode) var presentation

    @State var newMemo = ""
    var index: Int
    
    var body: some View {
        VStack{
            ScrollView{
                
                ForEach(viewModel.rooms[index].memo.reversed()) { memo in
                    VStack(alignment: .leading){
                        Text(memo.content)
                            .padding(.horizontal, 16)
                            .padding(.top, 8)
                            .foregroundColor(.white)
                        Button(action:{}, label:{
                            Image(systemName: "star")
                                .foregroundColor(.white)
                        })
                        .padding(.vertical, 8)
                        .padding(.horizontal, 10)
                        .padding()
                    }
                    .frame(width: 358, alignment: .leading)
                    .background(.gray)
                    .cornerRadius(10)
                    .rotationEffect(Angle(degrees:180))
                    
                }
            }
            
            
            .rotationEffect(Angle(degrees:180))
            
            // 메모 입력창
            HStack(){
                Button(action: {}, label:{
                    Image(systemName: "camera")
                        .font(.title2)
                        .foregroundColor(.gray)
                })
                
                HStack{
                    TextField("New Memo", text: $newMemo)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 10)
                    Button(action: {
                        
                        viewModel.rooms[index].memo.append(Memo(id: viewModel.rooms[index].memo.count + 1, content: newMemo, date: "2022.05.04" , isFavorite: false))
                        
                    }, label:{
                        Image(systemName: "arrow.up.circle.fill")
                            .font(.title2)
                            .foregroundColor(.gray)
                    })
                    .padding(2)
                }
                .frame(width: 320, height: 32)
                .background(Color.primary.opacity(0.06))
                .cornerRadius(14)
                
            }
            .frame(width: 394)
            .padding(8)
            .background(.white)
            
            
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Button(action: {self.presentation.wrappedValue.dismiss()}, label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.gray)
                })
            }
            ToolbarItem(placement: .principal){
                Text(viewModel.rooms[index].name)
                    .foregroundColor(.gray)
                    .font(.title3)
                
            }
            ToolbarItem(placement: .navigationBarTrailing){
                Button(action: {}, label:{
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    
                })
            }
            
            ToolbarItem(placement: .navigationBarTrailing){
                Button(action: {}, label:{
                    Image(systemName: "gearshape")
                        .foregroundColor(.gray)
                    
                })
            }
        }
    }
    
}

//struct ChatView_Previews: PreviewProvider {
//    static var rooms = ViewModel()
//
//    static var previews: some View {
//        ChatView(room: viewmodel.rooms[0])
//    }
//}
