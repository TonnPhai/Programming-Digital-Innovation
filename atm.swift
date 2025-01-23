import Foundation

// เริ่มต้นการถอนเงิน
print("---------------------------------------------")
print("กรุณากรอกจำนวนเงินที่ต้องการถอน:" , terminator: "")
if let amount = Int(readLine() ?? "") {
    if amount <= 0 {
        print("กรุณาระบุจำนวนเงินที่ต้องการถอนที่มากกว่าศูนย์")
    } else {
        print("ทำการถอนเงินจำนวน \(amount) บาท")
        print("---------------------------------------------")
        print("")
        print("------------------ ได้รับเงิน ------------------")

        // คำนวณแบงค์
        var remainingAmount = amount
        let banks = [1000, 500, 100, 20]  // แบงค์ที่มีใน ATM
        
        // คำนวณแบงค์ที่ต้องใช้
        for bank in banks {
            let count = remainingAmount / bank  // หาจำนวนที่ต้องใช้
            if count > 0 {
                print("\(bank) บาท: \(count) ใบ")
                remainingAmount -= count * bank  // หักเงินที่ถอนออก
            }
        }

        // คำนวณเหรียญ
        let coins = [10, 5, 2, 1]  // เหรียญที่มีใน ATM
        for coin in coins {
            let count = remainingAmount / coin  // หาจำนวนเหรียญที่ต้องใช้
            if count > 0 {
                print("\(coin) บาท: \(count) เหรียญ")
                remainingAmount -= count * coin  // หักเงินที่ถอนออก
            }
        }
    }
        print("---------------------------------------------")

} else {
    print("กรุณากรอกจำนวนเงินที่ถูกต้อง")
}
