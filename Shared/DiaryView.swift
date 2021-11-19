//
//  DiaryView.swift
//  Qute
//
//  Created by Davide Biancardi on 17/11/21.
//

import SwiftUI

struct DiaryView: View {
    var cani: [[String]] = [
        ["cane 2", "cane 3", "cane 4"],
        ["cane 5", "cane 6", "cane 7"],
        ["cane 8", "cane 9", "cane 10"]
    ]
    
    @State var isRaised: Bool = false
    @State var caneRaised: String = "cane 2"
    
    init(){
        
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.init(Color(red: 143/255, green: 149/255, blue: 211/255))]
    }
    
    var body: some View {
        
        
        
        NavigationView{
            
            
            VStack {
                ScrollView (.vertical, showsIndicators: false){
                    Text("Take trace of your emotions, feelings and progress.")
                        .font(.system(size: 28, weight: .light, design: .rounded))
                        .frame(width: 358, height: 70, alignment: .leading)
                    Spacer()
                    Text ("Memories")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                        .frame(width: 358, height: 70, alignment: .leading)
                    
                    Image("cane 1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 370, height: 180)
                        .cornerRadius(25)
                        .padding()
                        .overlay (
                            Rectangle()
                                .foregroundColor(.black)
                                .cornerRadius(10)
                                .opacity(0)
                        )
                    VStack(alignment: .leading) {
                        ForEach(cani, id: \.self) { cols in
                            HStack {
                                ForEach(cols, id: \.self) { cane in
                                    Image(cane)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: (UIScreen.main.bounds.width - 32) / 3, height: 115)
                                        .cornerRadius(25)
                                        .onTapGesture {
                                            caneRaised = cane
                                            isRaised = true
                                        }
                                }
                            }
                        }
                    }
                }.navigationBarItems(trailing:
                                        HStack {
//                    NavigationLink(destination: HomeView()){
                        Image(systemName: "plus.circle")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(Color(red: 143/255, green: 149/255, blue: 211/255))
                            .onTapGesture {
            
                            }
//                    }
                    .navigationBarItems(trailing: EditButton())
                    
                }).navigationTitle("Diary")
                    .sheet(isPresented: $isRaised, onDismiss: {}) {
                        Image(caneRaised)
                    }
            }
        }
    }
}
    
    struct DiaryView_Previews: PreviewProvider {
        static var previews: some View {
            DiaryView()
        }
    }
    
    
