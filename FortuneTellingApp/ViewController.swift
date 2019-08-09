//
//  ViewController.swift
//  FortuneTellingApp
//
//  Created by 小野勇輔 on 2019/08/08.
//  Copyright © 2019 yo-project. All rights reserved.


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
      
    }

    // 日付け定義付け
    
    @IBOutlet weak var DateScroll: UIDatePicker!
    
    
    // 血液型定義付け
    @IBOutlet weak var BloodType: UISegmentedControl!
    

    // 好きな数字を指定するバーの定義付け
    
    @IBAction func FavNumBar(_ sender: UISlider) {
        // UI スライダーと紐付け
        FavNumLabel.text = String(Int(sender.value))
        
        
    }
    
    // 好きな数字を表示するラベルの定義付け
    @IBOutlet weak var FavNumLabel: UILabel!
    
    
    // 占う実行ボタン定義付け
    @IBAction func ExecutionButton(_ sender: UIButton) {
        
        let date = DateScroll.date
        
        let year = DateScroll.calendar.component(.year, from: date)
        let month = DateScroll.calendar.component(.month, from: date)
        let day = DateScroll.calendar.component(.day, from: date)
       
        
        
        
        
        
      // ---- 生年月日で占う箇所------
        // 年と月と日を足して4で割った時の値をnumとする
        let num = (year + month + day) % 4
      
       // 神々の名前
        let gottype = ["全能の神「ゼウス」","神々の女王「ヘラ」","知恵の神「アテナ」","医療の神「アポロ」"]
        // あまりが0だった場合
        if num == 0 {
            ResultText.text! = "あなたは\(gottype[0])に愛されています。"
        // あまりが１だった場合[
        } else if num == 1{
             ResultText.text! = "あなたは\(gottype[1])に愛されています。"
        // あまりが2だった場合
        }else if num == 2 {
            ResultText.text! = "あなたは\(gottype[2])に愛されています。"
        //  あまりが3だった場合
        }else{
            ResultText.text = "あなたは\(gottype[3])に愛されています。"
        }
    
       
        // -----血液型で占う箇所----------
      
        // 属性タイプ
        let attributeType =
        ["光", "火", "水","木"]
        // 血液型の値を取ってきて定義
        let bloodtype = BloodType.selectedSegmentIndex
        
        // A型の場合
        if bloodtype == 0 {
            ResultText.text! += "属性は\(attributeType[0])です。"
            // B型の場合
        } else if bloodtype == 1 {
            ResultText.text! += "属性は\(attributeType[1])です。・"
            // O型の場合
        } else if bloodtype == 2 {
            ResultText.text! += "属性は\(attributeType[2])です。・・"
            // AB型の場合
        } else {
            ResultText.text! += "属性は\(attributeType[3])です。・・・"
        }
        
       
        // -------好きな番号を取ってきて占う箇所--------
        // 値の取得
        let favlabel = Int(String(FavNumLabel.text!))! % 4
       // オススメ
        let whatToDo =
        ["日光浴","キャンプファイアー","水泳","森林浴"]
        
        if favlabel == 0 {
            ResultText.text! += "思いっきり\(whatToDo[0])をすることが吉です。"
        } else if favlabel == 1 {
            ResultText.text! += "/n思いっきり\(whatToDo[1])をすることが吉です。"
        } else if favlabel == 2 {
            ResultText.text! += "/n思いっきり\(whatToDo[2])をすることが吉です。"
        }else{
            ResultText.text! += "/n思いっきり\(whatToDo[3])をすることが吉です。"
        }
    }
    
    // 占い結果表示テキストビュー定義付け
    @IBOutlet weak var ResultText: UITextView!
    
    
    
    
    
    
////    // pickerから値を取得して配列か辞書に当てはめるとき
//    fileprivate func setPickerNum() -> Int{
//
//
//        return num
//
//    }


    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}


