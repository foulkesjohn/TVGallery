import Foundation
import UIKit
import SDWebImage

class ImageCell: UICollectionViewCell {
  
  @IBOutlet weak var imageView: UIImageView?
  
  var imageURL: NSURL? {
    didSet {
      if let imageURL = self.imageURL {
        let width = Int(self.bounds.size.width)
        let height = Int(self.bounds.size.height)
        let placeholder = NSURL(string: "https://placekitten.com/\(width)/\(height)")!
        self.imageView?.sd_setImageWithURL(placeholder)
      }
    }
  }
  
}