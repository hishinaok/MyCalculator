//
//  ViewController.swift
//  MyCalculator
//
//  Created by Naoko Hishinuma on 2016/12/26.
//  Copyright © 2016年 Naoko Hishinuma. All rights reserved.
//

import UIKit

//入力される数
var input: String = ""
//途中結果
var calc_num: Int = 0
//オリジナル(★名前要検討)
var org: String = ""
//演算のマーク
var calc_mark: String = ""
//結果入れる変数
var result_num: Int = 0
//計算の途中かどうかのフラグ　trueなら途中
var calc_Flg: Bool = false




class ViewController: UIViewController {
   
    
    @IBOutlet weak var result: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
   
    
    }
    
   
    //四則演算のボタンが押された時の処理
    @IBAction func tappedCalc(_ sender: UIButton) {
        
        calc_mark = (sender.titleLabel?.text)!
        result.text = calc_mark
        //こめんと
        print(calc_mark)
        
        //足し算のメソッド呼び出し
        if calc_mark == "+"{
            if calc_Flg{
                result_num = add(input: input, calc_num: calc_num)
            }else{
                calc_Flg = true
                result_num = Int(input)!
                print("＋途中結果は" + "\(result_num)")
            }
            
        }else if calc_mark == "-"{
            if calc_Flg{
                result_num = subtraction(input: input, calc_num: calc_num)
            }else{
                calc_Flg = true
                result_num = Int(input)!
                print("-途中結果は" + "\(result_num)")
            }
        }else if calc_mark == "×"{
            if calc_Flg{
                result_num = multiplication(input: input, calc_num: calc_num)
            }else{
                calc_Flg = true
                result_num = Int(input)!
                print("×途中結果は" + "\(result_num)")
            }
            
        }else if calc_mark == "÷"{
            if calc_Flg{
                result_num = division(input: input, calc_num: calc_num)
            }else{
                calc_Flg = true
                result_num = Int(input)!
                print("÷途中結果は" + "\(result_num)")
            }
            
            
        }else if calc_mark == "%"{
            if calc_Flg{
                result_num = division(input: input, calc_num: calc_num)
            }else{
                calc_Flg = true
                result_num = Int(input)!
                print("%途中結果は" + "\(result_num)")
            }
            
        }else{
            
        }
        calc_num = result_num
        input = ""
        
    }
    
    
    //足し算の処理
    func add(input: String, calc_num: Int) -> Int{
        result_num = calc_num + Int(input)!
        print("＋途中結果は" + "\(result_num)")
        return result_num
    }
    
    
    //引き算の処理
    func subtraction(input: String, calc_num: Int) -> Int{
        result_num = calc_num - Int(input)!
        print("マイナス途中結果は" + "\(result_num)")
        return result_num
    }
    
    
    //掛け算の処理
    func multiplication(input: String, calc_num: Int) -> Int{
        result_num = calc_num * Int(input)!
        print("×途中結果は" + "\(result_num)")
        return result_num
    }
    
    
    //割り算の処理
    func division(input: String, calc_num: Int) -> Int{
        result_num = calc_num / Int(input)!
        print("÷途中結果は" + "\(result_num)")
        return result_num
    }
    
    
    @IBAction func tappedEql(_ sender: UIButton) {
        //イコールボタン押された時の処理
        if calc_mark == "+"{
            result_num = add(input: input, calc_num: calc_num)
            result.text = "\(result_num)"
        }else if calc_mark == "-"{
            result_num = subtraction(input: input, calc_num: calc_num)
            result.text = "\(result_num)"
        }else if calc_mark == "×"{
            result_num = multiplication(input: input, calc_num: calc_num)
            result.text = "\(result_num)"
        }else if calc_mark == "÷"{
            result_num = division(input: input, calc_num: calc_num)
            result.text = "\(result_num)"
        }else{
            
        }
        print("これはイコールの後の数字" + "\(result_num)")
        
    }
    
    

    @IBAction func tappedAc(_ sender: Any) {
        input = ""
        calc_num = 0
        calc_mark = ""
        result_num = 0
        calc_Flg = false
        print("全部けした！")
        result.text = "0"
    }
    
    
    @IBAction func tappedBtn(_ sender: UIButton) {
        //数字のボタンが押された時の処理
        //残課題：もっと簡潔に
        //       .は一回のみのうけつけとする！
        switch sender.tag{
        case 0:
            input += "\(sender.tag)"
            result.text = input
            print(input)
        case 1:
            input += "\(sender.tag)"
            result.text = input
            print(input)
        case 2:
            input += "\(sender.tag)"
            result.text = input
            print(input)
        case 3:
            input += "\(sender.tag)"
            result.text = input
            print(input)
        case 4:
            input += "\(sender.tag)"
            result.text = input
            print(input)
        case 5:
            input += "\(sender.tag)"
            result.text = input
            print(input)
        case 6:
            input += "\(sender.tag)"
            result.text = input
            print(input)
        case 7:
            input += "\(sender.tag)"
            result.text = input
            print(input)
        case 8:
            input += "\(sender.tag)"
            result.text = input
            print(input)
        case 9:
            input += "\(sender.tag)"
            result.text = input
            print(input)
        case 10:
            input += "."
            result.text = input
            print(input)
            
        default:
            print("エラー")
            
        }
    }
    

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

