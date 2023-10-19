//
//  ViewController.swift
//  tamaraHomework4
//
//  Created by Томик on 18.10.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let stringArray: Array = ["abc", "dwefgefg13", "oiut", "qwertfds", "3fdvdsfvv", "qwef gsdjkfnb", "qegbg sdg qwe"]
        
    
        let characterCount1 = stringArray.reduce(0) { $0 + $1.count }
        print("1. Количество символов в массиве: \(characterCount1)")
        
        var characterCount2 = 0
        for _ in stringArray {
            characterCount2 += stringArray.count
        }
        print("1. Количество символов в массиве (цикл for): \(characterCount2)")
        
        let countOver10 = stringArray.filter { $0.count > 10 }.count
        print("3. Количество строк с более чем 10 символами: \(countOver10)")
        
        if let longestString = stringArray.max(by: { $0.count < $1.count }) {
            print("4. Строка с максимальным количеством символов: \(longestString)")
        }
        
        let sortedStrings = stringArray.sorted { $0.count < $1.count }
        print(sortedStrings)

        let trimmedStrings = stringArray.map { $0.replacingOccurrences(of: " ", with: "") }
        print(trimmedStrings)
        
    }
}
