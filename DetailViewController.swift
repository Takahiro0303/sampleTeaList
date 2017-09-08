//
//  DetailViewController.swift
//  sampleTableView001
//
//  Created by takahiro tshuchida on 2017/09/07.
//  Copyright © 2017年 Takahiro Tshuchida. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var myImage: UIImageView!
    
//    前の画面から送られてきた行番号
    var scSelectedIndex = -1

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myImage.image = UIImage(named: "pekin.jpg")
        
        // Do any additional setup after loading the view.
        
        print("\(scSelectedIndex)行目が押されて移動してきました")
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
