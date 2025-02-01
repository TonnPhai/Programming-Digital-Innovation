// Thanapong Yamkamol
// 67130010168

import Foundation

// Header
print("ASSIGNMENT 2\n")
print("AIS Phone Bill Calculator\n")

// Show all package to Users
print("Available Packages:")
print("0. No Package (0 THB)")
print("1. Package 1299 THB")
print("2. Package 1499 THB")
print("3. Package 1699 THB\n")

// User input 0 or 1 or 2 or 3
print("Enter Package (0, 1, 2 or 3): ", terminator: "")
let packageSelection = Int(readLine()!) ?? -1  // กรณี input ไม่ใช่ตัวเลข ให้เป็น -1 เพื่อป้องกัน error

// User input voice minutes used
print("Enter Voice minutes used: ", terminator: "")
let voiceMinutes = Int(readLine()!) ?? 0

// user input number of SMS sent
print("Enter number of SMS sent: ", terminator: "")
let smsCount = Int(readLine()!) ?? 0

// User input number of MMS sent
print("Enter number of MMS sent: ", terminator: "")
let mmsCount = Int(readLine()!) ?? 0

// User input Phone Number
print("Enter Phone Number: ", terminator: "")
let phoneNumber = readLine() ?? ""

// Check User package from input
var packagePrice: Double = 0
if packageSelection == 1 {
        packagePrice = 1299
    } else if packageSelection == 2 {
        packagePrice = 1499
    } else if packageSelection == 3 {
        packagePrice = 1699
    } else if packageSelection == 0 {
        packagePrice = 0
} else {
    print("\nInvalid Package Selection. Please enter 0, 1, 2 or 3")
}

// Calculate over usage voice minutes
var overVoicePrice: Double = 0
if voiceMinutes > 300 {
    overVoicePrice = Double(voiceMinutes - 300) * 1.50
}

// Calculate SMS and MMS
let smsPrice: Double = Double(smsCount) * 2.50
let mmsPrice: Double = Double(mmsCount) * 4.50

// Calculate price before Taxes
let totalPrice: Double = packagePrice + overVoicePrice + smsPrice + mmsPrice

// Calculate VAT 7%
let vat: Double = totalPrice * 0.07

// Calculate Total price
let finalTotalPrice: Double = totalPrice + vat

// Output
print("\n--- Phone Bill Summary ---")
print("Phone Number: \(phoneNumber)")
print("Selected Package: \(packagePrice) THB")
print("Over Voice Charge: \(overVoicePrice) THB")
print("SMS Charge: \(smsPrice) THB")
print("MMS Charge: \(mmsPrice) THB")
print("VAT (7%): \(vat) THB")
print("Total Amount Due: \(finalTotalPrice) THB")
