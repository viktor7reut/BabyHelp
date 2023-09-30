//
//  TestScrollViewVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 16.09.23.
//

import UIKit

final class TestScrollViewVC: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var babyImage: UIImageView!
    @IBOutlet private var textFields: [UITextField]!
    @IBOutlet private weak var scrollView: UIScrollView!
    @IBOutlet private weak var editButton: UIButton!
    @IBOutlet private weak var saveButton: UIButton!
    
    @IBOutlet private weak var nameTextField: UITextField!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var sexTextField: UITextField!
    @IBOutlet private weak var sexLabel: UILabel!
    @IBOutlet private weak var dateOfBirthTextField: UITextField!
    @IBOutlet private weak var dateOfBirthLabel: UILabel!
    @IBOutlet private weak var heightTextField: UITextField!
    @IBOutlet private weak var heightLabel: UILabel!
    @IBOutlet private weak var weightTextField: UITextField!
    @IBOutlet private weak var weightLabel: UILabel!
    
    private var datePicker: UIDatePicker!
    private var imagePicker = UIImagePickerController()
    var selectedImage = UIImage()
    var babyImageLabel: UILabel?
    
    override func viewDidLoad() {
        babyImage.setBorderImage(width: 1, corner: 60, color: .slateBlueColor)
        
        let babyImageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: babyImage.frame.width, height: babyImage.frame.height))
        babyImageLabel.text = "Фото"
        babyImageLabel.textColor = UIColor.gray
        babyImageLabel.font = UIFont(name: "System", size: 15.0)
        babyImageLabel.textAlignment = .center
        babyImage.addSubview(babyImageLabel)
        self.babyImageLabel = babyImageLabel
        
        saveButton.setupStyleButton()
        editButton.setupStyleButton()
        
        nameTextField.delegate = self
        sexTextField.delegate = self
        dateOfBirthTextField.delegate = self
        heightTextField.delegate = self
        weightTextField.delegate = self
        
        datePicker = generateDatePicker(with: .date)
        dateOfBirthTextField.inputView = datePicker
        
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc func keyboardWillShow(_ notification: Notification) {
        guard let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else {
            return
        }
        
        let contentInsets = UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize.height, right: 0)
        scrollView.contentInset = contentInsets
        scrollView.scrollIndicatorInsets = contentInsets
        
        if let firstResponderTextField = textFields.first(where: { $0.isFirstResponder }) {
            let textFieldRect = firstResponderTextField.convert(firstResponderTextField.bounds, to: scrollView)
            scrollView.scrollRectToVisible(textFieldRect, animated: true)
        }
    }
    
    @objc func keyboardWillHide(_ notification: Notification) {
        let contentInsets = UIEdgeInsets.zero
        scrollView.contentInset = contentInsets
        scrollView.scrollIndicatorInsets = contentInsets
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTextField {
            if textField.text?.isEmpty == false {
                sexTextField.becomeFirstResponder()
            }
        }
        if textField == sexTextField {
            if textField.text?.isEmpty == false {
                dateOfBirthTextField.becomeFirstResponder()
            }
        }
        if textField == dateOfBirthTextField {
            if textField.text?.isEmpty == false {
                heightTextField.becomeFirstResponder()
            }
        }
        if textField == heightTextField {
            if textField.text?.isEmpty == false {
                heightTextField.resignFirstResponder()
            }
        }
        if textField == weightTextField {
            if textField.text?.isEmpty == false {
                weightTextField.resignFirstResponder()
            }
        }
        return true
    }
    
    private func generateDatePicker(with mode: UIDatePicker.Mode) -> UIDatePicker {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = mode
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.addTarget(self, action: #selector(dateDidChanged(_:)), for: .valueChanged)
        return datePicker
    }
    
    @objc private func dateDidChanged(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        let selectedDate = sender.date
        
        if sender == datePicker {
            dateFormatter.dateFormat = "dd.MM.yyyy"
            dateOfBirthTextField.text = dateFormatter.string(from: selectedDate)
        }
    }
    
    @IBAction func openGallery(_ sender: UIButton) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
    }
}
    
    extension TestScrollViewVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
            if let selectedImage = info[.originalImage] as? UIImage {
                self.selectedImage = selectedImage
                babyImage.image = selectedImage
                if let label = babyImageLabel {
                    label.text = ""
                }
            }
            picker.dismiss(animated: true, completion: nil)
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true, completion: nil)
        }
    }
