//
//  ViewController.swift
//  UITableView
//
//  Created by junpei ono on 2018/09/10.
//  Copyright © 2018年 junpei ono. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //テーブルビューの初期化
        tableView = UITableView()
        //デリゲート
        tableView.delegate = self
        tableView.dataSource = self
        //テーブルビューの大きさの指定
        tableView.frame = self.view.frame
        //テーブルビューの設置
        tableView.register(CustomTableViewCell.self,
            forCellReuseIdentifier: NSStringFromClass(CustomTableViewCell.self))
        tableView.rowHeight = 80
        self.view.addSubview(tableView)
    }

    // MARK: - TableVIewnのデリゲートッメソッド
    // テーブルビューのセルの数を設定する
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    // テーブルビューのセルの中身を設定する
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //myItems配列の中身をテキストにして登録した
        let cell: CustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(CustomTableViewCell.self))! as! CustomTableViewCell
        //以下の行を追加するとセル選択時にハイライトしなくなる
        cell.selectionStyle = .none
        cell.label.text = "ああああ" + indexPath.row.description
        return cell
    }

    // テーブルビューのセルが押されたら呼ばれる
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)番のセルを選択しました！ ")
    }
}
