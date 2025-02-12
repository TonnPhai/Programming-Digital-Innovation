// Thanapong Yamkamol
// 67130010168

import Foundation

print("ASSIGNMENT 4️⃣\n")

// user select calculate method
print("🌟 Select Type (1️⃣ = Residential | 2️⃣ = SME | 3️⃣ = Industrial): ", terminator: "")
let type = Int(readLine() ?? "") ?? 1

// user input meter number
print("🔢 Water Meter Number: ", terminator: "")
let meterNum = readLine() ?? ""

// user input water usage
print("💧 Water Usage (unit): ", terminator: "")
let unit = Int(readLine() ?? "") ?? 0

// decare variable
var basePrice: Float = 0.0
var rateType = ""

// residential method
if type == 1 {
    rateType = "🏡 Residential Rate 🏡"
    if unit > 0 {
        if unit <= 10 { basePrice = Float(unit) * 10.20 }
        else if unit <= 20 { basePrice = 102 + Float(unit - 10) * 16.00 }
        else if unit <= 30 { basePrice = 262 + Float(unit - 20) * 19.00 }
        else if unit <= 50 { basePrice = 452 + Float(unit - 30) * 21.20 }
        else if unit <= 80 { basePrice = 876 + Float(unit - 50) * 21.60 }
        else if unit <= 100 { basePrice = 1524 + Float(unit - 80) * 21.65 }
        else if unit <= 300 { basePrice = 1957 + Float(unit - 100) * 21.70 }
        else if unit <= 1000 { basePrice = 6297 + Float(unit - 300) * 21.75 }
        else if unit <= 2000 { basePrice = 21522 + Float(unit - 1000) * 21.80 }
        else if unit <= 3000 { basePrice = 43322 + Float(unit - 2000) * 21.85 }
        else { basePrice = 65172 + Float(unit - 3000) * 21.90 }
    }

// sme method
} else if type == 2 {
    rateType = "🏬 SME Rate 🏬"
    if unit > 0 {
        if unit <= 10 { basePrice = Float(unit) * 17.00 }
        else if unit <= 20 { basePrice = 170 + Float(unit - 10) * 20.00 }
        else if unit <= 30 { basePrice = 370 + Float(unit - 20) * 21.00 }
        else if unit <= 50 { basePrice = 580 + Float(unit - 30) * 22.00 }
        else if unit <= 80 { basePrice = 1020 + Float(unit - 50) * 23.00 }
        else if unit <= 100 { basePrice = 1710 + Float(unit - 80) * 24.00 }
        else if unit <= 300 { basePrice = 2190 + Float(unit - 100) * 27.40 }
        else if unit <= 1000 { basePrice = 7680 + Float(unit - 300) * 27.50 }
        else if unit <= 2000 { basePrice = 26920 + Float(unit - 1000) * 27.60 }
        else if unit <= 3000 { basePrice = 54520 + Float(unit - 2000) * 27.80 }
        else { basePrice = 82320 + Float(unit - 3000) * 28.00 }
    }

// factory method
} else if type == 3 {
    rateType = "🏭 Factory Rate 🏭"
    if unit > 0 {
        if unit <= 10 { basePrice = Float(unit) * 18.25 }
        else if unit <= 20 { basePrice = 182.50 + Float(unit - 10) * 21.50 }
        else if unit <= 30 { basePrice = 397.50 + Float(unit - 20) * 25.50 }
        else if unit <= 50 { basePrice = 652.50 + Float(unit - 30) * 28.50 }
        else if unit <= 80 { basePrice = 1222.50 + Float(unit - 50) * 31.00 }
        else if unit <= 100 { basePrice = 2152.50 + Float(unit - 80) * 31.25 }
        else if unit <= 300 { basePrice = 2777.50 + Float(unit - 100) * 31.50 }
        else if unit <= 1000 { basePrice = 9077.50 + Float(unit - 300) * 31.75 }
        else if unit <= 2000 { basePrice = 31302.50 + Float(unit - 1000) * 32.00 }
        else if unit <= 3000 { basePrice = 63302.50 + Float(unit - 2000) * 32.25 }
        else { basePrice = 95552.50 + Float(unit - 3000) * 32.50 }
    }
}


// VAT and Price Calculation
let vatRate: Float = 0.07
let vat = basePrice * vatRate
let totalPrice = basePrice + vat

// output
print("\n==============================")
print("      \(rateType)")
print("==============================\n")
print("📍 Meter Number: \(meterNum)")
print("💦 Water Usage: \(unit) m³")
print("💰 Base Price: \(String(format: "%.2f", basePrice)) THB")
print("🧾 VAT (7%): \(String(format: "%.2f", vat)) THB")
print("💸 Total Price: \(String(format: "%.2f", totalPrice)) THB")
print("✅ Thank you for using our service! 🌟")
print("\n==============================")