// Thanapong Yamkamol
// 67130010168

import Foundation

// header
print("===================================")
print("       💧 Water Bill Calculator 💧       ")
print("===================================\n")

// User input Meter number
print("🔹 Meter Number: ", terminator: "")
if let meterNumber = readLine(), !meterNumber.isEmpty {
    
    // User input Water Usage
    print("🔹 Water Usage (units): ", terminator: "")
    if let input = readLine(), let waterUsage = Int(input), waterUsage >= 0 {
        
        // Set variable to store water bill amount
        var waterPrice: Double = 0.0
        var ratePerUnit: Double = 0.0
        
        // Residential Rate 0 - 50 units
        if waterUsage <= 10 {
            ratePerUnit = 10.20
        } else if waterUsage <= 20 {
            ratePerUnit = 16.00
        } else if waterUsage <= 30 {
            ratePerUnit = 19.00
        } else if waterUsage <= 50 {
            ratePerUnit = 21.20

        //  Government and Small Business Rate 51 - 3000 units
        } else if waterUsage <= 80 {
            ratePerUnit = 23.00
        } else if waterUsage <= 100 {
            ratePerUnit = 24.00
        } else if waterUsage <= 300 {
            ratePerUnit = 27.40
        } else if waterUsage <= 1000 {
            ratePerUnit = 27.50
        } else if waterUsage <= 2000 {
            ratePerUnit = 27.60
        } else if waterUsage <= 3000 {
            ratePerUnit = 27.80
        } else {
            ratePerUnit = 28.00
        }

        // Fix rate calculated 
        waterPrice = Double(waterUsage) * ratePerUnit

        // Calculate VAT (7%)
        let vat = waterPrice * 0.07
        
        // Calculate total price
        let totalPrice = waterPrice + vat
        
        // Display output
        print("\n===================================")
        print("           🧾 Water Bill Summary 🧾")
        print("===================================")
        print("📌 Meter Number   : \(meterNumber)")
        print("💦 Water Usage    : \(waterUsage) units")
        print("💰 Water Price    : \(String(format: "%.2f", waterPrice)) THB")
        print("🧾 VAT (7%)       : \(String(format: "%.2f", vat)) THB")
        print("✅ Total Price    : \(String(format: "%.2f", totalPrice)) THB")
        print("===================================\n")
        
    } else {
        // Error: Invalid water usage input (must be a non-negative integer)
        print("❌ Error: Invalid water usage input. Please enter a non-negative integer.")
    }
} else {
    // Error: Invalid meter number input
    print("❌ Error: Invalid meter number input.")
}
