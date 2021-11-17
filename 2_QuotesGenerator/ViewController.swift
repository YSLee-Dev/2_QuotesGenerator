//
//  ViewController.swift
//  2_QuotesGenerator
//
//  Created by 이윤수 on 2021/10/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quotesLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "죽음을 두려워하는 나머지 삶을 시작조차 못하는 사람이 많다.", name: "벤다이크"),
        Quote(contents: "나는 나 자신을 빼 놓고는 모두 안다", name: "비용"),
        Quote(contents: "편견이란 실효성이 없는 의견이다.", name: "암르오스 빌"),
        Quote(contents: "분노는 바보들의 가슴 속에서만 살아간다.", name: "아인슈타인")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func TapQuoteButton(_ sender: Any) {
        let random = Int(arc4random_uniform(4)) // 0 ~ 3 사이의 난수를 랜덤하게 만들어준다.
        let quote = quotes[random]
        
        self.quotesLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
}

