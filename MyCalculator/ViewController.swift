
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
var calc_num: Double = 0
//演算のマーク用の配列
var calc_mark: [String] = []
//結果入れる変数
var result_num: Double = 0
//計算の途中かどうかのフラグ　trueなら途中
var calc_Flg: Bool = false
//演算子配列用の変数
var i: Int = 0
//変換用の変数
//var conversion:Double = 0
//変換後の結果用変数
var conv_result:Double = 0


class ViewController: UIViewController {
   
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btnAC: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn0: UIButton!
    @IBOutlet weak var btnDiv: UIButton!
    @IBOutlet weak var btnMul: UIButton!
    @IBOutlet weak var btnSub: UIButton!
    @IBOutlet weak var btnAdd: UIButton!
    @IBOutlet weak var btnDot: UIButton!
    @IBOutlet weak var btnEql: UIButton!
    @IBOutlet weak var btnA: UIButton!
    @IBOutlet weak var btnB: UIButton!
    @IBOutlet weak var btnC: UIButton!
    @IBOutlet weak var btnD: UIButton!
    
    
    
    @IBOutlet weak var result: UILabel!

    
    override func viewDidLoad() {
      
        
        super.viewDidLoad()

        btnAC.layer.borderColor  = UIColor.white.cgColor;  // 枠の色
        btnAC.layer.borderWidth  = 5;                      //枠の太さ
        btnDiv.layer.borderColor  = UIColor.white.cgColor;
        btnDiv.layer.borderWidth  = 5;
        btn1.layer.borderColor  = UIColor.white.cgColor;
        btn1.layer.borderWidth  = 5;
        btn2.layer.borderColor  = UIColor.white.cgColor;
        btn2.layer.borderWidth  = 5;
        btn3.layer.borderColor  = UIColor.white.cgColor;
        btn3.layer.borderWidth  = 5;
        btnMul.layer.borderColor  = UIColor.white.cgColor;
        btnMul.layer.borderWidth  = 5;
        btn4.layer.borderColor  = UIColor.white.cgColor;
        btn4.layer.borderWidth  = 5;
        btn5.layer.borderColor  = UIColor.white.cgColor;
        btn5.layer.borderWidth  = 5;
        btn6.layer.borderColor  = UIColor.white.cgColor;
        btn6.layer.borderWidth  = 5;
        btnSub.layer.borderColor  = UIColor.white.cgColor;
        btnSub.layer.borderWidth  = 5;
        btn7.layer.borderColor  = UIColor.white.cgColor;
        btn7.layer.borderWidth  = 5;
        btn8.layer.borderColor  = UIColor.white.cgColor;
        btn8.layer.borderWidth  = 5;
        btn9.layer.borderColor  = UIColor.white.cgColor;
        btn9.layer.borderWidth  = 5;
        btnAdd.layer.borderColor  = UIColor.white.cgColor;
        btnAdd.layer.borderWidth  = 5;
        btn0.layer.borderColor  = UIColor.white.cgColor;
        btn0.layer.borderWidth  = 5;
        btnDot.layer.borderColor  = UIColor.white.cgColor;
        btnDot.layer.borderWidth  = 5;
        btnEql.layer.borderColor  = UIColor.white.cgColor;    
        btnEql.layer.borderWidth  = 5;
        btnA.layer.borderColor  = UIColor.white.cgColor;
        btnA.layer.borderWidth  = 5;
        btnB.layer.borderColor  = UIColor.white.cgColor;
        btnB.layer.borderWidth  = 5;
        btnC.layer.borderColor  = UIColor.white.cgColor;
        btnC.layer.borderWidth  = 5;
        btnD.layer.borderColor  = UIColor.white.cgColor;
        btnD.layer.borderWidth  = 5;
    }
    
   
    //四則演算のボタンが押された時の処理
    @IBAction func tappedCalc(_ sender: UIButton) {
            if input != ""{
            calc_mark.append((sender.titleLabel?.text)!)
            result.text = calc_mark[i]

            print(calc_mark)
                if i != 0{
                    //足し算のメソッド呼び出し
                    if calc_mark[i-1] == "+"{
                        result_num = add(input: input, calc_num: calc_num)
                        
                    }else if calc_mark[i-1] == "-"{
                        result_num = subtraction(input: input, calc_num: calc_num)
                        
                    }else if calc_mark[i-1] == "×"{
                        result_num = multiplication(input: input, calc_num: calc_num)
                        
                    }else if calc_mark[i-1] == "÷"{
                        result_num = division(input: input, calc_num: calc_num)
        
                    }else{
                        //ここ、なくてもいいかも。。。
                    }
                }else{
                    //calc_Flg = true
                    result_num = Double(input)!
                    //print("途中結果は" + "\(result_num)")
                }
                calc_num = result_num
                input = ""
                i += 1
        }else{
          
        }
    }
    
    //足し算の処理
    func add(input: String, calc_num: Double) -> Double{
        result_num = calc_num + Double(input)!
        //print("＋途中結果は" + "\(result_num)")
        return result_num
    }
    
    
    //引き算の処理
    func subtraction(input: String, calc_num: Double) -> Double{
        result_num = calc_num - Double(input)!
        return result_num
    }
    
    
    //掛け算の処理
    func multiplication(input: String, calc_num: Double) -> Double{
        result_num = calc_num * Double(input)!
        return result_num
    }
    
    
    //割り算の処理
    func division(input: String, calc_num: Double) -> Double{
        result_num = calc_num / Double(input)!
        return result_num
    }
 
    

    
    
    @IBAction func tappedEql(_ sender: UIButton) {
        if input != ""{
       
        //イコールボタン押された時の処理
        if calc_mark[i-1] == "+"{
            result_num = add(input: input, calc_num: calc_num)
            result.text = "\(result_num)"
        }else if calc_mark[i-1] == "-"{
            result_num = subtraction(input: input, calc_num: calc_num)
            result.text = "\(result_num)"
        }else if calc_mark[i-1] == "×"{
            result_num = multiplication(input: input, calc_num: calc_num)
            result.text = "\(result_num)"
        }else if calc_mark[i-1] == "÷"{
            result_num = division(input: input, calc_num: calc_num)
            result.text = "\(result_num)"
        }else{
            //一番最初にイコール押された場合は何もしない
        }
        print("これはイコールの後の数字" + "\(result_num)")
        input = ""
        calc_num = 0.0
        calc_mark = []
        result_num = 0.0
        calc_Flg = false
        i = 0
        }else{
            
        }
        
    }
    
    //単位変換ボタンを押された時の処理
   @IBAction func tappedConv(_ sender: UIButton) {
        switch sender.tag{
        case 0:
            conv_result = Double(result.text!)! * 0.072
            result.text = "\(conv_result)"
            input = result.text!
        case 1:
            conv_result = Double(result.text!)! * 2.1
            result.text = "\(conv_result)"
            input = result.text!
        case 2:
            conv_result = Double(result.text!)! * 0.071
            result.text = "\(conv_result)"
            input = result.text!
        case 3:
            conv_result = Double(result.text!)! * 0.068
            result.text = "\(conv_result)"
            input = result.text!
        default:
            print("エラー")
            
        }

    }
    
    //ACボタン押下時の処理
    @IBAction func tappedAc(_ sender: Any) {
        input = ""
        calc_num = 0.0
        calc_mark = []
        result_num = 0.0
        calc_Flg = false
        result.text = "0"
        i = 0
    }
    
    
    //数字のボタンが押された時の処理
    @IBAction func tappedBtn(_ sender: UIButton) {
        switch sender.tag{
        case 0:
            input += "\(sender.tag)"
            result.text = input
            //print(input)
        case 1:
            input += "\(sender.tag)"
            result.text = input
        case 2:
            input += "\(sender.tag)"
            result.text = input
        case 3:
            input += "\(sender.tag)"
            result.text = input
        case 4:
            input += "\(sender.tag)"
            result.text = input
        case 5:
            input += "\(sender.tag)"
            result.text = input
        case 6:
            input += "\(sender.tag)"
            result.text = input
        case 7:
            input += "\(sender.tag)"
            result.text = input
        case 8:
            input += "\(sender.tag)"
            result.text = input
        case 9:
            input += "\(sender.tag)"
            result.text = input
        case 10:
            if input.contains("."){
            }else{
            input += "."
            result.text = input
            }
                
        default:
            print("エラー")
            
        }
 
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

