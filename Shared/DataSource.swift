//
//  DataSource.swift
//  Qute
//
//  Created by Alessia Parnoffi on 20/11/21.
//

import SwiftUI

struct DataSource: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DataSource_Previews: PreviewProvider {
    static var previews: some View {
        DataSource()
    }
}
struct Dog: Identifiable, Codable {
    var id = UUID()
    var image: String
    
    static func getImageViewWith(dog profile: Dog) -> Image {
        let uiImage = profile.image.toUIImage()
        if let image = uiImage {
            return Image(uiImage: image)
        } else {
            return Image(profile.image)
        }
    }
}

class DiaryDog: ObservableObject {
    static let shared = DiaryDog()
    
    private init() {}
    
    @Published var diary: [Dog] = DiaryDog.initProfileData()
    
    func appendAndSave(dog: Dog) {
        diary.append(dog)
        let jsonData = try! JSONEncoder().encode(diary)
        UserDefaults.standard.set(jsonData, forKey: "diaries")
    }
    
    static func initProfileData() -> [Dog] {
        let jsonData = UserDefaults.standard.data(forKey: "diaries")
        if let data = jsonData {
            let previewDiaries = try? JSONDecoder().decode([Dog].self, from: data)
            if let p = previewDiaries {
                return p
            }
        }
        return [
//                Dog(name: "Fuffy", age: "7", breed: "German Shepherd", image: "germanshepherd4"),
//                Dog(name: "Pippo", age: "4", breed: "German Shepherd", image: "germanshepherd3")
            ]
    }
    

}

extension UIImage {
    func toString() -> String? {
        return self.jpegData(compressionQuality: 3)?.base64EncodedString()
    }
}

extension String {
    func toUIImage() -> UIImage? {
        let data = Data(base64Encoded: self)
        if let d = data {
            return UIImage(data: d)
        }
        return nil
    }
}

