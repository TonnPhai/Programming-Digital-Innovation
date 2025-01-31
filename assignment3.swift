// Thanapong Yamkamol
// 67130010168

import Foundation

// header
print("===================================")
print("       💧 Water Bill Calculator 💧       ")
print("===================================\n")

// User input Meter number
print("🔹 Enter Meter Number: ", terminator: "")
if let meterNumber = readLine(), !meterNumber.isEmpty {
    
    // User input Water Usage
    print("🔹 Enter Water Usage (units): ", terminator: "")
    if let input = readLine(), let waterUsage = Int(input), waterUsage >= 0 {
        
        // set variable to store water bill amount 
        var waterPrice: Double = 0.0
        
        if waterUsage <= 50 {

            // Residential rate
            let tier1 = 10.20 * Double(min(waterUsage, 10))
            let tier2 = 16.00 * Double(min(max(waterUsage - 10, 0), 10))
            let tier3 = 19.00 * Double(min(max(waterUsage - 20, 0), 10))
            let tier4 = 21.20 * Double(min(max(waterUsage - 30, 0), 20))
            waterPrice = tier1 + tier2 + tier3 + tier4

        } else{
            // Government and small business rate (51 - 3000 units)
            let tier1 = 17.00 * Double(min(waterUsage, 10))
            let tier2 = 20.00 * Double(min(max(waterUsage - 10, 0), 10))
            let tier3 = 21.00 * Double(min(max(waterUsage - 20, 0), 10))
            let tier4 = 22.00 * Double(min(max(waterUsage - 30, 0), 10))
            let tier5 = 23.00 * Double(min(max(waterUsage - 40, 0), 10))
            let tier6 = 25.00 * Double(max(waterUsage - 50, 0))
            waterPrice = tier1 + tier2 + tier3 + tier4 + tier5 + tier6
        } 

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
        print("✅ Total Price: \(String(format: "%.2f", totalPrice)) THB")
        print("===================================\n")
        
    } else {
        // Error: Invalid water usage input (must be a non-negative integer)
        print("❌ Error: Invalid water usage input. Please enter a non-negative integer.")
    }
} else {
    // Error: Invalid meter number input
    print("❌ Error: Invalid meter number input.")
}
