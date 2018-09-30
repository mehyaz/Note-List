//
//  NoteListTableViewController.swift
//  Note List
//
//  Created by Mehmet Yazık on 30.09.2018.
//  Copyright © 2018 Mehmet Yazık. All rights reserved.
//

import UIKit
import RealmSwift

class NoteListController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    

    @IBOutlet weak var NoteTableview: UITableView!
    
    var kayitlar: Results<NoteDB>!
    var kayitSinif = Kayitlar()
    
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
        NoteTableview.delegate = self
        NoteTableview.dataSource = self
        
      //  self.kayitlariGetir()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.kayitlariGetir()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        if kayitlar != nil
        {
            return kayitlar.count

        }
        else
        {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! NoteCell
    
        cell.NoteLabel.text = kayitlar[indexPath.row].baslik
        cell.tarihLabel.text = kayitlar[indexPath.row].zaman
        
        return cell
    }
    
    func kayitlariGetir()  {
        kayitlar = uiRealm.objects(NoteDB.self)
        NoteTableview.reloadData()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        kayitSinif.konu = kayitlar[indexPath.row].baslik
        kayitSinif.detay = kayitlar[indexPath.row].detay
        kayitSinif.tarih = kayitlar[indexPath.row].zaman

        self.performSegue(withIdentifier: "toDetayController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetayController" {
            let destinationVC = segue.destination as! DetayController
            destinationVC.secilenKayit = self.kayitSinif
        }
    }
}
