import Foundation
import ArgumentParser

@main
struct file: ParsableCommand {
    @Argument(help: "The name of the file to parse.")
    var fn: String

    @Flag(help: "Print only the file signature.")
    var fileSignOnly: Bool = false

    mutating func run() throws {
        
        let z: String = convertStringToHex(String(readFirstFourLetters(file: fn)), false)
        
        if fileSignOnly == true {
            print("The file signature for \(fn) is: " + z)
        }

        // print("Hex Code: \(z)")

        print("\(fn): " + ident(z))
    }
}