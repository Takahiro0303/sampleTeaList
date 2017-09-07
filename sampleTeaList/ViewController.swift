//
//  ViewController.swift
//  sampleTeaList
//
//  Created by takahiro tshuchida on 2017/09/07.
//  Copyright © 2017年 Takahiro Tshuchida. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    var teaList = ["ダージリン","アールグレイ","アッサム","オレンジペコ"]
    
//    引き渡し用の変数
    var teaName = ""
    var teaFild = ""
    var teaImage = UIImage()
    
    var selectedIndex =  -1 //選択された行番号

    @IBOutlet weak var myTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //２.行数の決定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teaList.count
    }
    
    //３.リストに表示する文字列を決定し、表示
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //文字を表示するセルの取得（セルの再利用）
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        //表示したい文字の設定 indexPath.rowが行番号を表す
        cell.textLabel?.text = teaList[indexPath.row]
        cell.textLabel?.textColor = UIColor.brown
        cell.accessoryType = .disclosureIndicator
        //文字を設定したセルを返す
        return cell
    }

    //    セルがダップされた時、segueを使って画面遷移
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            teaName = "ダージリン"
            teaFild = "ダージリン・ティー (Darjeeling tea) は、インド北東部西ベンガル州北部のダージリン地方で生産される紅茶の総称である。時に「紅茶のシャンパン」とも呼ばれ、セイロンのウバ、中国のキーマンと並び世界三大銘茶と称される。"
            teaImage = UIImage(named: "dar.jpg")!
        
        }else if indexPath.row == 1 {
            teaName = "アールグレイ"
            teaFild = "アールグレイ（英: Earl Grey）とは、ベルガモットで柑橘系の香りをつけた紅茶で、フレーバーティーの一種。原料は中国茶のキーマン茶（祁門茶）が使われることが多いが、茶葉のブレンドは特に規定がないため、セイロン茶や、中国茶とセイロン茶のブレンド、稀にダージリンなども用いられる[1]。Earl Greyとは「グレイ伯爵」の意であり、1830年代のイギリス首相、第二代グレイ伯チャールズ・グレイに由来する。"
            teaImage = UIImage(named: "arel.jpg")!
        }else if indexPath.row == 2 {
            teaName = "アッサム"
            teaFild = "アッサム(アッサム語: অসম, ヒンディー語: आसाम, または असम)とは、インドのアッサム地方（インド北東部）でつくられる紅茶の総称である。"
            teaImage = UIImage(named: "att.jpg")!
        }else{
            teaName = "オレンジペコ"
            teaFild = "オレンジ・ペコー（英語: Orange pekoe若しくはOrange pecco、[pɛk.oʊ]若しくは[piː.koʊ]）は西洋の茶、特に紅茶の取引において使用される等級（オレンジ・ペコー等級）。OPと略される。中国語起源とする説もあるが、一般的にこの等級は、非中国語圏のスリランカやインドなど中国以外の産地の茶にも用いられる。この等級は、茶葉のサイズの大きさや形状に基づいている。"
            teaImage = UIImage(named: "orenji.jpg")!
        
        }
        
        //        選択された行番号を保存
        selectedIndex = indexPath.row
        
        //        セグエを指定して、画面遷移
        performSegue(withIdentifier: "showDetail", sender: nil)
    }
    
    //        セグエを使って画面を移動しようとしている時発動するメソッド
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //        prepareの中では、移動元の画面、移動先の画面、どちらも操作が可能
        //        移動先の画面に渡したい情報をセットできる
        //        dv　今から移動する画面のオブジェクト（インスタンス）
        //        segue.destination セグエを使って移動する先
        //        as ダウンキャスト変換するための記号
        
        let dv:showDetail = segue.destination as! showDetail
        
        //        作成しておいたプロパティー（メンバ変数）に行番号を保存
        dv.scSelectedIndex = selectedIndex
        
        dv.teaName1 = teaName
        dv.teaFild1 = teaFild
        dv.teaImage1 = teaImage
        
    }

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

