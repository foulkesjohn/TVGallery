import Foundation
import UIKit

class GalleryDataSource: NSObject,
                         UICollectionViewDataSource,
                         UICollectionViewDelegate,
                         UICollectionViewDelegateFlowLayout {
  
  var images: [NSURL]?
  
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return self.images!.count
  }
  
  func collectionView(collectionView: UICollectionView,
                      cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell: ImageCell = collectionView.dequeueReusableCellWithReuseIdentifier(String(ImageCell),
                                                                                forIndexPath: indexPath) as! ImageCell
    cell.imageURL = self.images?[indexPath.row]
    return cell
  }
  
  private let heroSize = CGSize(width: 1174, height: 720)
  private let otherSize = CGSize(width: 740, height: 357)
  
  func collectionView(collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
    if indexPath.row == 0 {
      return self.heroSize
    } else {
      return self.otherSize
    }
  }
  
}