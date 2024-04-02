//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Imani Cage on 4/1/24.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    var post: Post!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textView.text = post.caption.trimHTMLTags()
        if let photo = post.photos.first {
            let imageURL = photo.originalSize.url
            Nuke.loadImage(with: imageURL, into: imageView)
        }
        
        textView.textColor = .white
        textView.backgroundColor = UIColor(red: 28/255, green: 74/255, blue: 155/255, alpha: 1.0)
        view.backgroundColor = UIColor(red: 28/255, green: 74/255, blue: 155/255, alpha: 1.0)
        
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
