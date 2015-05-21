import XCGLogger
import MojoDB
import UIKit

public let flog = XCGLogger.defaultInstance()

public class FIApp: UIResponder  {
                            
    public var window: UIWindow?
    var database: AppDatabase!

    public func setup(){
        flog.setup(logLevel: .Debug, showLogLevel: false, showFileNames: false, showLineNumbers: false, writeToFile: nil, fileLogLevel: .Debug)
        setup()
    }
    
    public func setupWithOutLog(){
        database = AppDatabase(migrations: false)
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.makeKeyAndVisible()
        flog.debug("\(self.database.pathToDatabase)")
    }
}