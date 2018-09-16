import UIKit

public enum Nib: String {
    case MovementCell
}

extension UITableView {
    public func register(nib: Nib, inBundle bundle: Bundle = .framework) {
        self.register(UINib(nibName: nib.rawValue, bundle: bundle), forCellReuseIdentifier: nib.rawValue)
    }
    public func registerHeaderFooter(nib: Nib, inBundle bundle: Bundle = .framework) {
        self.register(UINib(nibName: nib.rawValue, bundle: bundle), forHeaderFooterViewReuseIdentifier: nib.rawValue)
    }
}
extension UICollectionView {
    public func register(nib: Nib, inBundle bundle: Bundle = .framework) {
        self.register(UINib(nibName: nib.rawValue, bundle: bundle), forCellWithReuseIdentifier: nib.rawValue)
    }
}
