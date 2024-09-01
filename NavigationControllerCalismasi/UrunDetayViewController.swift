//
//  UrunDetayViewController.swift
//  NavigationControllerCalismasi
//
//  Created by Cihan AŞAN on 2.09.2024.
//

import UIKit

class UrunDetayViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "urunDetayHucre", for: indexPath) as! UrunDetayCollectionViewCell
        cell.labelUrunAdi.text = selectedKategori
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        return cell
    }
    

    var selectedKategori: String?
    
    @IBOutlet weak var UrunDetayCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        UrunDetayCollectionView.delegate = self
        UrunDetayCollectionView.dataSource = self
        
        let tasarim:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let genislik = self.UrunDetayCollectionView.frame.size.width
        
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        let hucreGenislik = (genislik-30)/2
        
        tasarim.itemSize = CGSize(width: hucreGenislik, height: hucreGenislik*1.7)
        
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 10
        
        UrunDetayCollectionView.collectionViewLayout = tasarim
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
