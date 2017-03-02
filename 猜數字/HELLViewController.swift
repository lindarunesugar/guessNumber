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

    @IBOutlet weak var text: UITextField!
    
    @IBAction func send(_ sender: Any)
    {
        
    }
    
    @IBOutlet weak var chance: UILabel!
    @IBOutlet weak var background_ai: UIImageView!
    @IBOutlet weak var no: UIImageView!
    @IBOutlet weak var yes: UIImageView!
    @IBOutlet weak var wrong: UILabel!
    @IBOutlet weak var right: UILabel!
    
    var number = 0
    var chance_count = 6
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        yes.isHidden = true
        no.isHidden = true
        wrong.isHidden = true
        right.isHidden = true
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
