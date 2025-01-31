// Thanapong Yamkamol
// 67130010168

START

print :
"==================================="
"       💧 Water Bill Calculator 💧       "
"==================================="

    // user input หมายเลขมิเตอร์
    print : "🔹 Enter Meter Number: "
    IF user enters valid meter number:
        meterNumber = user input

        // user input จำนวนหน่วยน้ำที่ใช้
        PRINT "🔹 Enter Water Usage (units): "
        IF user enters valid water usage (non-negative integer):
            waterUsage = user input

            // สร้างตัวแปรมาเก็บราคาบิลค่าน้ำ
            waterPrice = 0.0

            IF waterUsage <= 50 THEN
                // คำนวณค่าบริการน้ำสำหรับการใช้น้ำไม่เกิน 50 หน่วย
                tier1 = 10.20 * min(waterUsage, 10)
                tier2 = 16.00 * min(max(waterUsage - 10, 0), 10)
                tier3 = 19.00 * min(max(waterUsage - 20, 0), 10)
                tier4 = 21.20 * min(max(waterUsage - 30, 0), 20)
                waterPrice = tier1 + tier2 + tier3 + tier4
            ELSE
                // คำนวณค่าบริการน้ำสำหรับการใช้น้ำตั้งแต่ 51 หน่วยขึ้นไป
                tier1 = 17.00 * min(waterUsage, 10)
                tier2 = 20.00 * min(max(waterUsage - 10, 0), 10)
                tier3 = 21.00 * min(max(waterUsage - 20, 0), 10)
                tier4 = 22.00 * min(max(waterUsage - 30, 0), 10)
                tier5 = 23.00 * min(max(waterUsage - 40, 0), 10)
                tier6 = 25.00 * max(waterUsage - 50, 0)
                waterPrice = tier1 + tier2 + tier3 + tier4 + tier5 + tier6
            END IF

            // คำนวณภาษีมูลค่าเพิ่ม (7%)
            vat = waterPrice * 0.07

            // คำนวณราคารวม
            totalPrice = waterPrice + vat

            // แสดงผลสรุปค่าใช้จ่ายน้ำ
            PRINT "==================================="
            PRINT "           🧾 Water Bill Summary 🧾"
            PRINT "==================================="
            PRINT "📌 Meter Number   : " + meterNumber
            PRINT "💦 Water Usage    : " + waterUsage + " units"
            PRINT "💰 Water Price    : " + waterPrice formatted to 2 decimal places + " THB"
            PRINT "🧾 VAT (7%)       : " + vat formatted to 2 decimal places + " THB"
            PRINT "✅ Total Price    : " + totalPrice formatted to 2 decimal places + " THB"
            PRINT "==================================="

        ELSE
            // user ต้อง input เป็นตัวเลขเท่านั้น
            PRINT "❌ Error: Invalid water usage input. Please enter a non-negative integer."
        END IF
    ELSE
        // user ต้อง input เป็นตัวเลขเท่านั้น
        PRINT "❌ Error: Invalid meter number input."
    END IF

END
