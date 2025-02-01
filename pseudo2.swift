// Thanapong Yamkamol
// 67130010168

START

PRINT "ASSIGNMENT 2"
PRINT "AIS Phone Bill Calculator"
PRINT " "

//แสดงรายการแพ็กเกจทั้งหมดที่มีให้ user เลือก
PRINT "Available Packages:" 
PRINT "0. No Package (0 THB)"
PRINT "1. Package 1299 THB"
PRINT "2. Package 1499 THB"
PRINT "3. Package 1699 THB"
PRINT " "

// user input เลขแพ็กเกจที่ต้องการเลือก
PROMPT "Enter Package (0, 1, 2 or 3): "
READ packageSelection
IF packageSelection IS NOT A VALID NUMBER THEN
    SET packageSelection TO -1
END IF

// user input จำนวนนาทีที่โทร
PROMPT "Enter Voice minutes used: "
READ voiceMinutes
IF voiceMinutes IS NOT A VALID NUMBER THEN
    SET voiceMinutes TO 0
END IF

// user input จำนวน SMS ที่ส่ง
PROMPT "Enter number of SMS sent: "
READ smsCount
IF smsCount IS NOT A VALID NUMBER THEN
    SET smsCount TO 0
END IF

// user input จำนวน MMS ที่ส่ง
PROMPT "Enter number of MMS sent: "
READ mmsCount
IF mmsCount IS NOT A VALID NUMBER THEN
    SET mmsCount TO 0
END IF

// 
PROMPT "Enter Phone Number: "
READ phoneNumber

//กำหนดค่าเริ่มต้นของราคาค่าบริการเป็น 0
SET packagePrice TO 0

//ตรวจสอบว่าแพ็กเกจที่เลือกคือหมายเลข 1 และกำหนดราคาตามแพ็กเกจนั้น
IF packageSelection IS 1 THEN
    SET packagePrice TO 1299
ELSE IF packageSelection IS 2 THEN
    SET packagePrice TO 1499
ELSE IF packageSelection IS 3 THEN
    SET packagePrice TO 1699
ELSE IF packageSelection IS 0 THEN
    SET packagePrice TO 0
ELSE
    PRINT "Invalid Package Selection. Please enter 0, 1, 2, or 3"
END IF

//คำนวณค่าบริการส่วนเกินหากผู้ใช้ใช้เวลาคุยเกิน 300 นาที
SET overVoicePrice TO 0
IF voiceMinutes > 300 THEN
    SET overVoicePrice TO (voiceMinutes - 300) * 1.50
END IF

// คำนวณค่าบริการ SMS และ MMS 
SET smsPrice TO smsCount * 2.50
SET mmsPrice TO mmsCount * 4.50

// คำนวณรา่คาก่อนรวมภาษี
SET totalPrice TO packagePrice + overVoicePrice + smsPrice + mmsPrice

// คำนวณภาษีมูลค่าเพิ่ม (VAT) 7% ของยอดรวมค่าบริการ
SET vat TO totalPrice * 0.07

// คำนวณราคาสุทธิ
SET finalTotalPrice TO totalPrice + vat

// Output
PRINT "--- Phone Bill Summary ---"
PRINT "Phone Number: " + phoneNumber
PRINT "Selected Package: " + packagePrice + " THB"
PRINT "Over Voice Charge: " + overVoicePrice + " THB"
PRINT "SMS Charge: " + smsPrice + " THB"
PRINT "MMS Charge: " + mmsPrice + " THB"
PRINT "VAT (7%): " + vat + " THB"
PRINT "Total Amount Due: " + finalTotalPrice + " THB"

END
