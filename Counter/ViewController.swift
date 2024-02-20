//
//  ViewController.swift
//  Counter
//
//  Created by Konstantin Lyashenko on 20.02.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var resultsTextView: UITextView!
    private var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultsTextView.text = "История изменений:"
    }
    
    private func currentDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let result = dateFormatter.string(from: Date())
        return result
    }

    @IBAction func plusActionButton(_ sender: Any) {
        counter += 1
        resultsTextView.text += "\n\(currentDate()) значение изменено на: \(counter)"
    }
    @IBAction func minusActionButton(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            resultsTextView.text += "\n\(currentDate()) значение изменено на: \(counter)"
        } else {
            counter = 0
            resultsTextView.text += "\n\(currentDate()) попытка уменьшить значение счетчика ниже 0"
        }
    }
    @IBAction func refreshActionButton(_ sender: Any) {
        counter = 0
        resultsTextView.text += "\n\(currentDate()) значение сброшено"
    }
}

