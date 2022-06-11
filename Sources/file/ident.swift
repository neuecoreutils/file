import Foundation

//  generic template to ease my life
    // else if d.starts(with: "") == true {
    //     return ""
    // }

func ident(_ d: String) -> String {
    if d.starts(with: SHEBANG) == true {
        return "UNIX script file"
    }
    // Section: Executable Identification

    else if d.starts(with: PE32) == true {
        return "PE executable file"
    }

    else if d.starts(with: ELF) == true {
        return "ELF executable file"
    }

    else if d.starts(with: COFF32) {
        return "COFF exectuable, for 32 bit processors"
    }

    else if d.starts(with: COFF64) {
        return "COFF exectuable, for 64 bit processors"
    }

    else if d.starts(with: COFFIA64) {
        return "COFF exectuable, for Itanium processors"
    }

    // Section: Archive Identification

    else if d.starts(with: ZSTANDARD) {
        return "Zstandard compressed file"
    }
    
    else {
        return "ASCII data"        
    }
}