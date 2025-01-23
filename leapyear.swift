import Foundation

// ฟังก์ชันตรวจสอบปีเป็นปีอธิกสุรทิน
func isLeapYear(_ year: Int) -> Bool {
    if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) {
        return true
    } else {
        return false
    }
}

// ให้ผู้ใช้กรอกปี พ.ศ.
print("-----------------------------------------------------------")
print("input year B.E. for check that Leap Year?: ", terminator: "")



if let buddhistYear = Int(readLine() ?? "") {
    print("-----------------------------------------------------------")
    // แปลงปี พ.ศ. เป็น ค.ศ.
    let gregorianYear = buddhistYear - 543
    
    if isLeapYear(gregorianYear) {
        print("Yes, B.E. \(buddhistYear) (C.E. \(gregorianYear)) is Leap Year")
    } else {
        print("No, B.E. \(buddhistYear) (C.E. \(gregorianYear)) is NOT Leap Year")
    }
} else {
    print("Invalid, Input MUST be number only")
}
    print("-----------------------------------------------------------")
