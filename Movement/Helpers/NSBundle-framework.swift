import Foundation
extension Bundle {
    public static var framework: Bundle {
        return Bundle(for: AppViewModel.self)
    }
    var _buildVersion: String {
        return (self.infoDictionary?["CFBundleVersion"] as? String) ?? "1"
    }
}
