//
//  DiaryView.swift
//  Qute
//
//  Created by Davide Biancardi on 17/11/21.
//

import SwiftUI

struct DiaryView: View {
    @State var cani: [[UIImage]] = [
        [UIImage(imageLiteralResourceName: "cane 2"), UIImage(imageLiteralResourceName: "cane 3"), UIImage(imageLiteralResourceName: "cane 4")],
        [UIImage(imageLiteralResourceName: "cane 5"), UIImage(imageLiteralResourceName: "cane 6"), UIImage(imageLiteralResourceName: "cane 7")],
        [UIImage(imageLiteralResourceName: "cane 8"), UIImage(imageLiteralResourceName: "cane 9"), UIImage(imageLiteralResourceName: "cane 10")]
    ]
    
    @State var isRaised: Bool = false
    @State var caneRaised: UIImage = UIImage(imageLiteralResourceName: "cane 2")
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @ObservedObject var diary = DiaryDog.shared
    @State private var imagee: Image? = Image("")
    @State private var image: UIImage?
    @State private var isPresented: Bool = false
    
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
                    
                    Text ("Memories")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                        .frame(width: 358, height: 40, alignment: .leading)
                    
                    Image("cane 1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 370, height: 180)
                        .cornerRadius(25)
                        .padding()
                        .overlay (
                            Rectangle()
                                .foregroundColor(.black)
                                .cornerRadius(10)
                                .opacity(0)
                        )
                        .onTapGesture {
                           isRaised=true
                            caneRaised = UIImage(imageLiteralResourceName: "cane 1")
                        }
                    VStack(alignment: .leading) {
                        ForEach(cani, id: \.self) { cols in
                            HStack {
                                ForEach(cols, id: \.self) { cane in
                                    Image(uiImage: cane)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: (UIScreen.main.bounds.width - 32) / 3, height: 115)
                                        .cornerRadius(5)
                                        .onTapGesture {
                                            caneRaised = cane
                                            isRaised = true
                                        }
//                                    imagee?
//                                        .resizable()
//                                        .aspectRatio(contentMode: .fill)
//                                        .frame(width: (UIScreen.main.bounds.width - 32) / 3, height: 115)
//                                        .cornerRadius(5)
//
                                }
                            }
                        }
                    }
                }.navigationBarItems(trailing:
                                        HStack {
                    Button(action: {
                        self.isPresented = true
                        
                    }) {
                        Image(systemName: "plus.circle")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(Color(red: 143/255, green: 149/255, blue: 211/255))
                    }
                    .sheet(isPresented: $isPresented, onDismiss: {
                        self.isPresented = false
                        if let img = self.image {
//                            self.imagee = Image(uiImage: img)
                            if cani[cani.count - 1].count % 3 == 0 {
                                cani.append([img])
                            } else {
                                cani[cani.count - 1].append(img)
                            }
                        }
                        
                    }) {
                        ImagePicker(image: self.$image, pickerType: UIImagePickerController.SourceType.photoLibrary)
                    }
                    
                    .navigationBarItems(trailing: EditButton())
                    
                }).navigationTitle("Diary")
                    .sheet(isPresented: $isRaised, onDismiss: {}) {
                        Image(uiImage: caneRaised)
                            .resizable()
                            .scaledToFit()
                        
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



