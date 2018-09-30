//
//  DetayController.swift
//  Note List
//
//  Created by Mehmet Yazık on 30.09.2018.
//  Copyright © 2018 Mehmet Yazık. All rights reserved.
//

import UIKit

class DetayController: UIViewController {

    @IBOutlet weak var baslikLabel: UILabel!
    @IBOutlet weak var detayLabel: UILabel!
    @IBOutlet weak var zamanLabel: UILabel!
    
    var secilenKayit = Kayitlar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        baslikLabel.text = secilenKayit.konu
        detayLabel.text = secilenKayit.detay
        zamanLabel.text = secilenKayit.tarih
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
