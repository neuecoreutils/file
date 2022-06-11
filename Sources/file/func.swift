import Foundation

// read the first four letters of a file
func readFirstFourLetters(file: String) -> String {
    let file :FileHandle = FileHandle(forReadingAtPath: file)!
    let data: Data? = try! file.read(upToCount: 16)
    let str: String? = String(data: data!, encoding: .ascii)
    return str!
}

// From: https://stackoverflow.com/a/47566321
extension String {
    func separate(every: Int, with separator: String) -> String {
        return String(stride(from: 0, to: Array(self).count, by: every).map {
            Array(Array(self)[$0..<min($0 + every, Array(self).count)])
        }.joined(separator: separator))
    }
}

func convertStringToHex(_ str: String, _ propformat: Bool = false) -> String {
    let data: Data = Data(str.utf8)
    let hexString: String = data.map{ String(format:"%02x", $0) }.joined()

    // return hexString

    if propformat == true {
        let x: String = hexString.separate(every: 2, with: " ")
        return x.uppercased()
    } else {
        return hexString.uppercased()
    }
}