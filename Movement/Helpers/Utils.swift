import UIKit

extension UIImage {
    open func getRandomImageURL() -> URL {
        let random = Int.random(in: 0 ... 999)
        return URL(string: "https://picsum.photos/200/300?image=\(random)")!
    }
}
