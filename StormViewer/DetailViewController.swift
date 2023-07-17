//
//  DetailViewController.swift
//  StormViewer
//
//  Created by Linconl Rufino on 14/07/23.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageVIEW: UIImageView!
    var selectImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageToLoad = selectImage {
            imageVIEW.image = UIImage(named: imageToLoad)
        }
    }
    
}
