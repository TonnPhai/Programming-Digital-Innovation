import Foundation

// Header
print("ASSIGNMENT 1")
print(" ")
print("1 สำหรับแปลงอุณหภูมิหน่วยองศาเซลเซียส(°C) → อุณหภูมิหน่วยฟาเรนไฮต์(°F)")
print("2 สำหรับแปลงอุณหภูมิหน่วยฟาเรนไฮต์(°F) → อุณหภูมิหน่วยองศาเซลเซียส(°C)")
print(" ")

// user input mode 1 or 2
print("เลือก Mode การแปลงอุณหภูมิ: " , terminator: "")
if let conversionType = Int(readLine() ?? "") {
    print(" ")
    // user input 1
    if conversionType == 1 {
        print("กรุณาใส่อุณหภูมิในหน่วยเซลเซียส: " , terminator: "")
        if let celsius = Float(readLine() ?? "") { // รับ input เป็น float
            let fahrenheit = celsius * 9 / 5 + 32 // สูตรแปลง °F เป็น °C 
            print(" ")
            print("แปลงจากอุณหภูมิ \(celsius) °C → อุณหภูมิ \(fahrenheit) °F") // ค่าที่แปลงได้
        } else {
            print("ข้อมูลไม่ถูกต้อง input ต้องเป็นตัวเลขเท่านั้น") // user ต้อง input แต่ตัวเลขเท่านั้น
        }

    // user input 2
    } else if conversionType == 2 {
        print("กรุณาใส่อุณหภูมิในหน่วยฟาเรนไฮต์: " , terminator: "")
        if let fahrenheit = Float(readLine() ?? "") { //รับ input เป็น float
            let celsius = (fahrenheit - 32) * 5 / 9 // สูตรแปลง °C เป็น °F 
            print(" ")
            print("แปลงจากอุณหภูมิ \(fahrenheit) °F → แปลงอุณหภูมิ \(celsius) °C")  // ค่าที่แปลงได้
        } else {
            print(" ")
            print("ข้อมูลไม่ถูกต้อง input ต้องเป็นตัวเลขเท่านั้น") // user ต้อง input แต่ตัวเลขเท่านั้น
        }
    } else {
        print(" ")
        print("กรุณาเลือก 1 หรือ 2 เท่านั้น") // ตัวเลข mode ที่ใส่ได้มีแค่ mode 1 หรือ 2 เท่านั้น
    }
} else {
    print(" ")
    print("ข้อมูลไม่ถูกต้อง input ต้องเป็นตัวเลขเท่านั้น") // ในการเลือก mode สามารถใส่ได่แค่ตัวเลขเท่านั้น
}
