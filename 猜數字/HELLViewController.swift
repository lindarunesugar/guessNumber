//
//  HELLViewController.swift
//  猜數字
//
//  Created by Huang Pi-Ling on 2017/3/3.
//  Copyright © 2017年 Huang Pi-Ling. All rights reserved.
//

import UIKit

class HELLViewController: UIViewController
{
    
    @IBOutlet weak var number: UITextField!   //輸入的數字
    @IBOutlet weak var hint: UILabel!    //提示訊息
    @IBOutlet weak var guessTime: UILabel!   //剩餘猜測次數    還有6次機會
    
    var random_number = 4
    //var random_number = Int(arc4random_uniform(100))   //隨機產生的數字
    var chance_count = 6    //初始猜測次數
    
    
    @IBAction func send(_ sender: Any)    //按鈕的功能
    {
        var upper = 100
        var lower = 0
        
        let controller_wrong =
            self.storyboard?.instantiateViewController(withIdentifier:
                "Wrong")
        let controller_right =
            self.storyboard?.instantiateViewController(withIdentifier:
                "Right")
        
        //按下送信時收起鍵盤
        number.resignFirstResponder()
        
        if chance_count > 0
        {
            if number.text! == ""    //沒有輸入值
            {
                hint.text! = "不猜也無妨..."
                chance_count -= 1
                guessTime.text! = "還有\(chance_count)次機會"
                if chance_count == 0
                {
                    //利用寫程式的方法把controller叫出來
                    self.present(controller_wrong!, animated: true, completion:
                        nil)
                }
            }
            else  //有輸入數字
            {
                let input = Int(number.text!)  //先把輸入的數字存下來
                
                if input == random_number  //猜對
                {
                    //利用寫程式的方法把controller叫出來
                    self.present(controller_right!, animated: true, completion:
                        nil)
                }
                else if input! > 100
                {
                    hint.text! = "你應該要再看清楚遊戲規則..."
                    chance_count -= 1
                    guessTime.text! = "還有\(chance_count)次機會"
                    if chance_count == 0
                    {
                        //利用寫程式的方法把controller叫出來
                        self.present(controller_wrong!, animated: true, completion:
                            nil)
                    }
                    
                }
                else if input! < random_number
                {
                    lower = input!+1
                    hint.text! = "你應該在\(lower)~\(upper)內猜一個數字"
                    chance_count -= 1
                    guessTime.text! = "還有\(chance_count)次機會"
                    if chance_count == 0
                    {
                        //利用寫程式的方法把controller叫出來
                        self.present(controller_wrong!, animated: true, completion:
                            nil)
                    }

                }
                else if input! > random_number
                {
                    upper = input!-1
                    hint.text! = "你應該在\(lower)~\(upper)內猜一個數字"
                    chance_count -= 1
                    guessTime.text! = "還有\(chance_count)次機會"
                    if chance_count == 0
                    {
                        //利用寫程式的方法把controller叫出來
                        self.present(controller_wrong!, animated: true, completion:
                            nil)
                    }
                    
                }
            }

        }
        else
        {
            //利用寫程式的方法把controller叫出來
            self.present(controller_wrong!, animated: true, completion:
                nil)
        }
        
        /*while chance_count > 0  //還可以猜
        {
            if number.text! == ""    //沒有輸入值
            {
                hint.text! = "不猜也無妨..."
                chance_count -= 1
                guessTime.text! = "還有\(chance_count)次機會"
            }
            else  //輸入數字
            {
                let input = Int(number.text!)  //先把輸入的數字存下來
                
                if input == random_number  //猜對
                {
                    //利用寫程式的方法把controller叫出來
                    self.present(controller_right!, animated: true, completion:
                        nil)
                    break
                }
            }

        }
        if chance_count == 0  //沒有機會了
        {
            //利用寫程式的方法把controller叫出來
            self.present(controller_wrong!, animated: true, completion:
                nil)
        }
        */
        
    }
    
    
    @IBAction func play_again_right(_ sender: Any)
    {
        
    }
    
    @IBAction func play_again_wrong(_ sender: Any)
    {
        
    }
    
    //按下送信時收起鍵盤
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        number.resignFirstResponder()
        return true
    }
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
