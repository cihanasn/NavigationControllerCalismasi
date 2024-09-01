//
//  ViewController.swift
//  NavigationControllerCalismasi
//
//  Created by Cihan AŞAN on 2.09.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kategoriler.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "kategoriHucre", for: indexPath) as! KategoriTableViewCell
        cell.labelKategoriAd.text = kategoriler[indexPath.row]
        return cell
    }
    
    
    let kategoriler = ["Teknoloji", "Spor", "Sağlık", "Eğitim", "Müzik"]

    @IBOutlet weak var kategoriTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        kategoriTableView.delegate = self
        kategoriTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        self.performSegue(withIdentifier: "toTest", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toTest" {
            if let destinationVC = segue.destination as? UrunDetayViewController {
                if let selectedIndex = sender as? Int {
                    destinationVC.selectedKategori = kategoriler[selectedIndex]
                }
            }
        }
    }
}

