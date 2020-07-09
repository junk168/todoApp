//
//  AddController.swift
//  todoApp
//
//  Created by junk on 2020/07/08.
//  Copyright © 2020 junk. All rights reserved.
//

import UIKit
var TodoKobetsunonakami = [String]()

class AddController: UIViewController {
    
    @IBOutlet weak var TodoTextField: UITextField!
    @IBAction func TodoAddButton(_ sender: Any) {
        // 変数に入力内容を入れる
        TodoKobetsunonakami.append(TodoTextField.text!)
        // 追加ボタンを押したらフィールドを空にする
        TodoTextField.text = ""
        // 変数の中身をUDに追加
        UserDefaults.standard.set( TodoKobetsunonakami, forKey: "TodoList" )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
