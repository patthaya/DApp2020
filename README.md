# DApp Development

หลังจากสร้าง Account บน github.com สามารถอัพโหลดข้อมูลในโฟลเดอร์ที่ต้องการโดยใช้คำสั่งต่อไปนี้

1. สร้างไฟล์ README.md เพื่อใช้เป็นไฟล์ markdown สามารถใช้เพื่ออธิบายสิ่งต่างๆ ที่มีในโปรเจ็คที่ทำ

    `echo "# DApp" >> README.md`

2. คำสั่ง git init เพื่อสร้างค่าเริ่มต้นของ git ในโฟลเดอร์ปัจจุบัน

    `git init`

3. คำสั่ง git add * เป็นการเพิ่มทุกไฟล์และโฟลเดอร์ลงใน git

    `git add *`

4. คำสั่ง git commit -m ตามด้วยข้อความในเครื่องหมาย “ เป็นการยืนยันการเพิ่มไฟล์และโฟลเดอร์ลงใน git

    `git commit -m "first commit"`

5. สร้าง branch ชื่อ main ด้วยคำสั่งต่อไปนี้

    `git branch -M main`

6. เพิ่ม remote git ที่สร้างไว้ใน GitHub อย่าลืมเปลี่ยน fintechutcc/DApp.git เป็นค่าที่ถูกต้องตาม github 

    `git remote add origin git@github.com:fintechutcc/DApp.git`

7. ทำการอัพโหลดข้อมูลทั้งหมดจาก main branch ซึ่งอยู่ในเครื่องไปยัง origin ที่อยู่บน github

    `git push -u origin main`
