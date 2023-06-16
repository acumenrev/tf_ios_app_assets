//#if canImport(UIKit)
//
//import UIKit
//
//#endif

import UIKit

public struct TFAssets {
    public private(set) var text = "Hello, World!"
    
    public init() {
    }
    
    
    public func getRobotImage() -> UIImage? {
        return UIImage(named: "robot-03", in: Bundle.module, compatibleWith: nil)
    }
    
    public func getJsonFileFromAsset() -> Any? {
        
        let asset = NSDataAsset(name: "sample_json", bundle: Bundle.module)
        let json = try? JSONSerialization.jsonObject(with: asset!.data, options: JSONSerialization.ReadingOptions.allowFragments)
        print("json file: \(json)")
        return json
    }
    
    public func getTextFileFromAsset() -> Any? {
        print("getTextFileFromAsset hello")
        let asset = NSDataAsset(name: "sample", bundle: Bundle.module)
        guard let data = asset?.data else {
            print("no sample text")
            return nil }
        let string = String.init(data: data, encoding: .utf8)
        
        print("sample : \(string)")
        return string
    }
    
    public func getSampleTextFieldFromResources() -> Any? {
        let dataUrl = Bundle.module.path(forResource: "test", ofType: "txt")
        
        guard let url = dataUrl else {
            print("no data url")
            
            return nil
        }
        var data = try? String.init(contentsOfFile: url, encoding: .utf8)
        print("data: \(data)")
        return data
    }
}


public extension UIImage {
    convenience init?(name: String) {
        self.init(named: name, in: .module, compatibleWith: nil)
    }
    
    static let robot = UIImage(name: "robot-03")
}

