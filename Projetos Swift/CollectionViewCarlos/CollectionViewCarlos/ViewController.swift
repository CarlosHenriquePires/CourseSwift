//
//  ViewController.swift
//  CollectionViewCarlos
//
//  Created by Aloc SP11704 on 20/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        delegates()
        
    }
    
    private func delegates(){
        collectionView.delegate = self
    }
}

extension ViewController:UICollectionViewDelegate{
    
}

extension ViewController:UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let collectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        
        return collectionCell
    }
    
    
    
}
