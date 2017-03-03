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
    @IBOutlet weak var guessTime: UILabel!   //剩餘猜測次數
    
    var random_number = Int(arc4random_uniform(100))   //隨機產生的數字
    var chance_count = 6    //初始猜測次數
    
    
    @IBAction func send(_ sender: Any)    //按鈕的功能
    {
        let controller_wrong =
            self.storyboard?.instantiateViewController(withIdentifier:
                "Wrong")
        let controller_right =
            self.storyboard?.instantiateViewController(withIdentifier:
                "Right")
        
        //按下計算按鈕時收起鍵盤
        number.resignFirstResponder()
        
        while chance_count > 0  //還可以猜
        {
            if number.text! == ""    //沒有輸入值
            {
                hint.text! = "不猜也無妨..."
                chance_count -= 1
            }
            else  //輸入數字
            {
                var input = Int(number.text!)
                
            }

        }
        if chance_count == 0  //沒有機會了
        {
            self.present(controller_wrong!, animated: true, completion:
                nil)
        }
        
    }
    
    
    @IBAction func play_again_right(_ sender: Any)
    {
        
    }
    
    @IBAction func play_again_wrong(_ sender: Any)
    {
        
    }
    
    //按下計算按鈕時收起鍵盤
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
