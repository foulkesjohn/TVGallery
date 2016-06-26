import UIKit

class ViewController: UIViewController {

  private let dataSource = GalleryDataSource()
  @IBOutlet weak var collectionView: UICollectionView?
  
  override func viewDidLoad() {
    self.dataSource.images = [NSURL(string: "")!,
                              NSURL(string: "")!,
                              NSURL(string: "")!,
                              NSURL(string: "")!,
                              NSURL(string: "")!,
                              NSURL(string: "")!,
                              NSURL(string: "")!,
                              NSURL(string: "")!,
                              NSURL(string: "")!,
                              NSURL(string: "")!,
                              NSURL(string: "")!,]
    self.collectionView?.dataSource = self.dataSource
    self.collectionView?.delegate = self.dataSource
  }
  
}
