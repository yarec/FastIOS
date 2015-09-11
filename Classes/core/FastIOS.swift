import Foundation

public class FastIOS : NSObject {

    func info(string: String){
        flog.info(string)
    }

    func debug(string: String){
        flog.debug(string)
    }
}
