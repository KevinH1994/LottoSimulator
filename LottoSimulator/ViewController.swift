//
//  ViewController.swift
//  LottoSimulator
//
//  Created by Kevin Hering on 26.08.22.
//

import UIKit
import GameKit

class ViewController: UIViewController {
    
    let lottoZahlen = [Int](1...49)
    
    var zufälligeLottoZahlen = [Int]()
    
    
    @IBOutlet weak var eins: UILabel!
    @IBOutlet weak var zwei: UILabel!
    @IBOutlet weak var drei: UILabel!
    @IBOutlet weak var vier: UILabel!
    @IBOutlet weak var fünf: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func genarieren(_ sender: Any) {
        genarierZahlen()
    }
    func genarierZahlen(){
        zufälligeLottoZahlen = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: lottoZahlen) as! [Int]
        eins.text = String(zufälligeLottoZahlen[0])
        zwei.text = String(zufälligeLottoZahlen[1])
        drei.text = String(zufälligeLottoZahlen[2])
        vier.text = String(zufälligeLottoZahlen[3])
        fünf.text = String(zufälligeLottoZahlen[4])
    }
}

