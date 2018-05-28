import Vapor


/// Called after your application has initialized.
public func boot(_ app: Application) throws {
    // your code here
    let skullPath = Bundle.main.path(forResource: "skull", ofType: "png")
    print("skull.png's path: \(skullPath)")
}
