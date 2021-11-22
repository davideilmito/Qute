import SwiftUI

final class ImagePickerCoordinator: NSObject {
    
    let parent: ImagePicker
    @Binding var image: UIImage?
    var pickerType: UIImagePickerController.SourceType

    init(_ parent: ImagePicker, image: Binding<UIImage?>, pickerType: UIImagePickerController.SourceType) {
        self.parent = parent
        _image = image
        self.pickerType = pickerType
    }
}

struct ImagePicker: UIViewControllerRepresentable {

    @Binding var image: UIImage?
    var pickerType: UIImagePickerController.SourceType

    func makeCoordinator() -> ImagePickerCoordinator {
        ImagePickerCoordinator(self, image: $image, pickerType: pickerType)
    }

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {

        let pickerController = UIImagePickerController()
        pickerController.delegate = context.coordinator

        guard UIImagePickerController.isSourceTypeAvailable(pickerType) else { return pickerController }

        pickerController.sourceType = pickerType

        pickerController.allowsEditing = true
        return pickerController
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
}

extension ImagePickerCoordinator: UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        guard let uiImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else { return }

        self.image = uiImage
        picker.dismiss(animated: true, completion: nil)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }

}

struct ImagePicker_Previews: PreviewProvider {
    static var previews: some View {
        Text("")
    }
}



