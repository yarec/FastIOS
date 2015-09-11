import XCGLogger
import MojoDB
import UIKit

public let flog = XCGLogger.defaultInstance()
public let $ = FastIOS()

public class FIApp: UIResponder  {
                            
    public var window: UIWindow?
    var database: AppDatabase!

    public func setup(){
        flog.setup(logLevel: .Debug, showLogLevel: false, showFileNames: false, showLineNumbers: false, writeToFile: nil, fileLogLevel: .Debug)
        setupWithOutLog()
    }
    
    public func setupWithOutLog(){
        database = AppDatabase(migrations: false)
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.makeKeyAndVisible()
        $.debug("log info from FastIOS's debug")
        flog.debug("\(self.database.pathToDatabase)")
    }
}