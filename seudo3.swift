// Thanapong Yamkamol
// 67130010168

START

print : 
"==================================="
"       💧 Water Bill Calculator 💧       "
"==================================="

// user input หมายเลขมิเตอร์
PROMPT "🔹 Meter Number: "
READ meterNumber

// เช็คว่า meterNumber ต้องไม่เป็นค่าว่าง
IF meterNumber is NOT empty THEN

    // user input ปริมาณนั้นที่ใช้
    PROMPT "🔹 Water Usage (units): "
    READ waterUsage

    // เช็คว่าค่าน้ำที่ user input มาจะไม่ติดลบ
    IF waterUsage is a valid non-negative integer THEN

        // set ค่าตัวแปรที่จะใช้ในการคำนวณ
        SET waterPrice = 0.0
        SET ratePerUnit = 0.0

        // หน่วย 0 ถึง 50 คิดเป็นเรทบ้าน
        IF waterUsage <= 10 THEN
            ratePerUnit = 10.20
        ELSE IF waterUsage <= 20 THEN
            ratePerUnit = 16.00
        ELSE IF waterUsage <= 30 THEN
            ratePerUnit = 19.00
        ELSE IF waterUsage <= 50 THEN
            ratePerUnit = 21.20

        // ตั้งแต่หน่วย 51 ขึ้นไปคิดเป็นเรทราชการและธุรกิจขนาดเล็ก
        ELSE IF waterUsage <= 80 THEN
            ratePerUnit = 23.00
        ELSE IF waterUsage <= 100 THEN
            ratePerUnit = 24.00
        ELSE IF waterUsage <= 300 THEN
            ratePerUnit = 27.40
        ELSE IF waterUsage <= 1000 THEN
            ratePerUnit = 27.50
        ELSE IF waterUsage <= 2000 THEN
            ratePerUnit = 27.60
        ELSE IF waterUsage <= 3000 THEN
            ratePerUnit = 27.80
        ELSE 
            ratePerUnit = 28.00
        ENDIF

        // คำนวณราคาน้ำ (ยังไม่รวมภาษี)
        SET waterPrice = waterUsage * ratePerUnit

        // คำนวณ VAT (7%)
        SET vat = waterPrice * 0.07

        // คำนวณราคารวม
        SET totalPrice = waterPrice + vat

        // สรุปบิล
        print: 
        "==================================="
        "           🧾 Water Bill Summary 🧾"
        "==================================="
        "📌 Meter Number   : " + meterNumber
        "💦 Water Usage    : " + waterUsage + " units"
        "💰 Water Price    : " + FORMAT(waterPrice, 2) + " THB"
        "🧾 VAT (7%)       : " + FORMAT(vat, 2) + " THB"
        "✅ Total Price    : " + FORMAT(totalPrice, 2) + " THB"
        "==================================="

    // ในกรณีที่ user input ค่าติดลบ
    ELSE
        print: "❌ Error: Invalid water usage input. Please enter a non-negative integer."
    ENDIF

// ในกรณีที่ user input ค่าอื่นที่ไม่ใช้ตัวเลข
ELSE
    print: "❌ Error: Invalid meter number input."
ENDIF

END
