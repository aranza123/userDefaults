//
//  ViewController.swift
//  userDefault
//
//  Created by Aranza Manriquez Alonso on 28/08/23.
//

import UIKit

class ViewController: UIViewController {

    private let kMyKey = "MY_KEY"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getButtonAction(_ sender: Any) {
        if let value = UserDefaults.standard.string(forKey: kMyKey) {
            showAlert(message: value)
        } else {
            showAlert(message: "No existe un valor para esta clave")
        }
    }
    
    @IBAction func putButtonAction(_ sender: Any) {
        UserDefaults.standard.set("Holaaa tontaaa", forKey: kMyKey)
        showAlert(message: "Se añadio un valor")
    }
    
    
    @IBAction func deleteButtonAction(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: kMyKey)
        showAlert(message: "Se borro un valor")
    }
    
    
    private func showAlert(message: String) {
        let alert = UIAlertController(title: "My UserDefaults", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        
        present(alert, animated: true)
    }
}

