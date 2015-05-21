import XCGLogger
import MojoDB
import UIKit

let flog = XCGLogger.defaultInstance()

class FIApp: UIResponder  {
                            
    var window: UIWindow?
    var database: AppDatabase!

    func setup(){
        flog.setup(logLevel: .Debug, showLogLevel: false, showFileNames: false, showLineNumbers: false, writeToFile: nil, fileLogLevel: .Debug)
        database = AppDatabase(migrations: false)
        
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.makeKeyAndVisible()
        flog.debug("\(self.database.pathToDatabase)")
    }
}