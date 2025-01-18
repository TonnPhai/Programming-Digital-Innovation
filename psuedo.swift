START

PRINT "ASSIGNMENT 1"
PRINT " "
PRINT "1 สำหรับแปลงอุณหภูมิหน่วยองศาเซลเซียส(°C) → อุณหภูมิหน่วยฟาเรนไฮต์(°F)"
PRINT "2 สำหรับแปลงอุณหภูมิหน่วยฟาเรนไฮต์(°F) → อุณหภูมิหน่วยองศาเซลเซียส(°C)"
PRINT " "
// ในส่วนนี้จะบอกว่า user สามารถทำอะไรได้บ้างเช่นเลือกโหมด 1 หรือ 2 ในการแปลงอุณหภูมิ

PROMPT "เลือก Mode การแปลงอุณหภูมิ: "
READ conversionType
// รับค่า input จาก user เป็นตัวเลข 1 หรือ 2 

   IF conversionType IS 1 THEN // user input 1 = โหมดแปลง องศาเซลเซียส(°C) → องศาฟาเรนไฮต์(°F)
      PROMPT "กรุณาใส่อุณหภูมิในหน่วยเซลเซียส: " // ให้ user input อุณหภูมิองศาเซลเซียส(°C)
      READ celsius // รับค่าอุณหภูมิเก็บไว้ในตัวแปร celsius

      IF celsius IS A VALID NUMBER THEN // user สามารถ input ได้แต่ค่าที่เป็นตัวเลข(float)
            fahrenheit = (celsius * 9 / 5) + 32 // สูตรคำนวณจาก องศาเซลเซียส(°C) → องศาฟาเรนไฮต์(°F)
            PRINT "แปลงจากอุณหภูมิ celsius °C → อุณหภูมิ fahrenheit °F" // ค่าอุณหภูมิที่แปลงได้
         ELSE
            PRINT "ข้อมูลไม่ถูกต้อง input ต้องเป็นตัวเลขเท่านั้น" // หาก user input ค่าอื่นที่ไม่ใช้ตัวเลขจะไม่เข้าง่ายไข
         END IF

      ELSE IF conversionType IS 2 THEN // user input 2 = โหมดแปลง องศาฟาเรนไฮต์(°F) → องศาเซลเซียส(°C)
         PROMPT "กรุณาใส่อุณหภูมิในหน่วยฟาเรนไฮต์: " // ให้ user input อุณหภูมิองศาฟาเรนไฮต์(°F)
         READ fahrenheit // รับค่าอุณหภูมิเก็บไว้ในตัวแปร fahrenheit

         IF fahrenheit IS A VALID NUMBER THEN // user สามารถ input ได้แต่ค่าที่เป็นตัวเลข(float)
            celsius = (fahrenheit - 32) * 5 / 9 // สูตรคำนวณจาก องศาฟาเรนไฮต์(°F) → องศาเซลเซียส(°C)
            PRINT "แปลงจากอุณหภูมิ fahrenheit °F → แปลงอุณหภูมิ celsius °C" // ค่าอุณหภูมิที่แปลงได้
         ELSE
            PRINT "ข้อมูลไม่ถูกต้อง input ต้องเป็นตัวเลขเท่านั้น" // หาก user input ค่าอื่นที่ไม่ใช้ตัวเลขจะไม่เข้าง่ายไข
         END IF
   ELSE
      PRINT "เลือก Mode 1 หรือ 2 เท่านั้น" // หาก user input ตัวเลขที่มีค่ามากกว่า 2 จะไม่เข้าเงื่อนไข
   END IF

   IF conversionType IS NOT A VALID NUMBER THEN
      PRINT "ข้อมูลไม่ถูกต้อง input ต้องเป็นตัวเลขเท่านั้น" // หาก user input ค่าอื่นที่ไม่ใช่ตัวเลขก็จะไม่เข้าเงื่อนไขเช่นกัน
   END IF
   
END
