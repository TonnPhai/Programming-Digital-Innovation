// Thanapong Yamkamol
// 67130010168

START

PRINT:
"ASSIGNMENT 4️⃣"

// user สามารถเลือก calculate method ได้ 3 วิธี
PROMPT "🌟 Select Type (1️⃣ = Residential | 2️⃣ = SME | 3️⃣ = Industrial): "
READ type
// รับ input ประเภทของ user ว่าจะคำนวณแบบใด

// ให้ user input หมายเลขมิเตอร์
PROMPT "🔢 Water Meter Number: "
READ meterNum
// รับ input หมายเลขมิเตอร์

// ให้ user input ปริมาณน้ำที่ใช้ เป็น unit
PROMPT "💧 Water Usage (unit): "
READ unit
// รับปริมาณการใช้น้ำ

// กำหนดค่าพื้นฐาน
SET basePrice TO 0.0 // basePrice คือตัวแปรราคาตามหน่วย ประเภท: Float
SET rateType TO "" // rateType คือตัวแปรที่เก็บค่าว่า user เลือก calculator เป็นของหน่วยไหน ประเภท: String

// ตรวจสอบประเภทของผู้ใช้น้ำและคำนวณราคา

    // ประเภทที่ อยู่อาศัย
    IF type == 1 THEN
        rateType = "🏡 Residential Rate 🏡"
        IF unit > 0 THEN
            IF unit <= 10 THEN
                basePrice = unit * 10.20
            ELSE IF unit <= 20 THEN
                basePrice = 102 + (unit - 10) * 16.00
            ELSE IF unit <= 30 THEN
                basePrice = 262 + (unit - 20) * 19.00
            ELSE IF unit <= 50 THEN
                basePrice = 452 + (unit - 30) * 21.20
            ELSE IF unit <= 80 THEN
                basePrice = 876 + (unit - 50) * 21.60
            ELSE IF unit <= 100 THEN
                basePrice = 1524 + (unit - 80) * 21.65
            ELSE IF unit <= 300 THEN
                basePrice = 1957 + (unit - 100) * 21.70
            ELSE IF unit <= 1000 THEN
                basePrice = 6297 + (unit - 300) * 21.75
            ELSE IF unit <= 2000 THEN
                basePrice = 21522 + (unit - 1000) * 21.80
            ELSE IF unit <= 3000 THEN
                basePrice = 43322 + (unit - 2000) * 21.85
            ELSE
                basePrice = 65172 + (unit - 3000) * 21.90
        END IF

    // ประเภท อุสาหกรรมขนาดเล็ก
    ELSE IF type == 2 THEN
        rateType = "🏬 SME Rate 🏬"
        IF unit > 0 THEN
            IF unit <= 10 THEN
                basePrice = unit * 17.00
            ELSE IF unit <= 20 THEN
                basePrice = 170 + (unit - 10) * 20.00
            ELSE IF unit <= 30 THEN
                basePrice = 370 + (unit - 20) * 21.00
            ELSE IF unit <= 50 THEN
                basePrice = 580 + (unit - 30) * 22.00
            ELSE IF unit <= 80 THEN
                basePrice = 1020 + (unit - 50) * 23.00
            ELSE IF unit <= 100 THEN
                basePrice = 1710 + (unit - 80) * 24.00
            ELSE IF unit <= 300 THEN
                basePrice = 2190 + (unit - 100) * 27.40
            ELSE IF unit <= 1000 THEN
                basePrice = 7680 + (unit - 300) * 27.50
            ELSE IF unit <= 2000 THEN
                basePrice = 26920 + (unit - 1000) * 27.60
            ELSE IF unit <= 3000 THEN
                basePrice = 54520 + (unit - 2000) * 27.80
            ELSE
                basePrice = 82320 + (unit - 3000) * 28.00
        END IF

    // ประเภทอุสาหกรรมขนาดใหญ่
    ELSE IF type == 3 THEN
        rateType = "🏭 Factory Rate 🏭"
        IF unit > 0 THEN
            IF unit <= 10 THEN
                basePrice = unit * 18.25
            ELSE IF unit <= 20 THEN
                basePrice = 182.50 + (unit - 10) * 21.50
            ELSE IF unit <= 30 THEN
                basePrice = 397.50 + (unit - 20) * 25.50
            ELSE IF unit <= 50 THEN
                basePrice = 652.50 + (unit - 30) * 28.50
            ELSE IF unit <= 80 THEN
                basePrice = 1222.50 + (unit - 50) * 31.00
            ELSE IF unit <= 100 THEN
                basePrice = 2152.50 + (unit - 80) * 31.25
            ELSE IF unit <= 300 THEN
                basePrice = 2777.50 + (unit - 100) * 31.50
            ELSE IF unit <= 1000 THEN
                basePrice = 9077.50 + (unit - 300) * 31.75
            ELSE IF unit <= 2000 THEN
                basePrice = 31302.50 + (unit - 1000) * 32.00
            ELSE IF unit <= 3000 THEN
                basePrice = 63302.50 + (unit - 2000) * 32.25
            ELSE
                basePrice = 95552.50 + (unit - 3000) * 32.50
        END IF

    END IF

// กำหนดค่าตัวแปร vat ประเภท: Float 0.07
SET vatRate TO 0.07

SET vat TO basePrice * vatRate // คำนวณ VAT = basePrice * vatRate ประเภท: Float
SET totalPrice TO basePrice + vat // คำนวณราคา totalPrice = basePrice + vat ประเภท: Float

// output
PRINT "================================="
PRINT "       ", rateType
PRINT "================================="
PRINT "📌 หมายเลขมิเตอร์: ", meterNum
PRINT "💧 ปริมาณการใช้น้ำ: ", unit, " m³"
PRINT "💰 ราคาพื้นฐาน: ", basePrice, " THB"
PRINT "🧾 VAT (7%): ", vat, " THB"
PRINT "💸 ราคารวมทั้งหมด: ", totalPrice, " THB"
PRINT "🙏 ขอบคุณที่ใช้บริการ!"
PRINT "================================="

END

