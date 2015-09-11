import Foundation

public class FastIOS : NSObject {

    public func info(string: String){
        flog.info(string)
    }

    public func debug(string: String){
        flog.debug(string)
    }
}
