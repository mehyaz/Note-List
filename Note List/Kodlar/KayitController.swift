//
//  KayitController.swift
//  Note List
//
//  Created by Mehmet Yazık on 30.09.2018.
//  Copyright © 2018 Mehmet Yazık. All rights reserved.
//

import UIKit

class KayitController: UIViewController {

    @IBOutlet weak var baslikText: UITextField!
    @IBOutlet weak var detayText: UITextView!
    @IBOutlet weak var tarihText: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Kaydet(_ sender: Any) {
        let dbKayit  = NoteDB()
        dbKayit.baslik = baslikText.text
        dbKayit.detay = detayText.text
        dbKayit.zaman = tarihText.text
        
        dbKayit.writeToRealm()
        
      //  NotificationCenter.default.post(name: NSNotification.Name(rawValue: "yeniKayitEklendi"), object: nil)

        self.navigationController?.popViewController(animated: true)

    }
    
 

}
