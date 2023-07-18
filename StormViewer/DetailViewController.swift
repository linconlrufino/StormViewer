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
    var numberOfTotalImages: Int?
    var numberOfImage: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureLayout()
        
        if let numberImage = numberOfImage, let total = numberOfTotalImages {
            title = "Picture \(numberImage) of \(total)"
        }
       
        if let imageToLoad = selectImage {
            imageVIEW.image = UIImage(named: imageToLoad)
        }
    }
    
    func configureLayout(){
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]
        
        navigationController?.navigationBar.tintColor = UIColor.red
        
        navigationController?.navigationBar.topItem?.backButtonTitle = ""
        
        navigationItem.largeTitleDisplayMode = .never
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
