//
//  showDetail.swift
//  sampleTeaList
//
//  Created by takahiro tshuchida on 2017/09/07.
//  Copyright © 2017年 Takahiro Tshuchida. All rights reserved.
//

import UIKit

class showDetail: UIViewController {
    
    var scSelectedIndex = -1


    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myTextView: UITextView!
    
    @IBOutlet weak var myImageView: UIImageView!
    
    
    //    受け取り用の変数
    var teaName1 = ""
    var teaFild1 = ""
    var teaImage1 = UIImage()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        print("\(scSelectedIndex)行目が押されて移動してきました")
        myLabel.text = teaName1
        
        myTextView.text = teaFild1
        
        myImageView.image = teaImage1
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
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
