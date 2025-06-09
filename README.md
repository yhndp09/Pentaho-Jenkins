# Setup Jenkins Project

New Item > Pipeline , Lalu setup seperti contoh dibawah ini:
![image](https://github.com/user-attachments/assets/cde0d290-ee3e-4f12-a72a-71aa6f61d404)

1. Repository URL --> https://github.com/yhndp09/Pentaho-Jenkins.git
2. Branch Specifier (blank for 'any')--> */main
3. Script Path --> jenkins/Jenkinsfile        #file Jenkinsfile ini yang nantinya akan memanggil job dan tranformation pentaho di github


# Jalankan Projek ini di PC atau server lain:
1. Buka path: <br>
   ![image](https://github.com/user-attachments/assets/b3f18149-92fe-45d2-90e2-8e42f7117d59)
   <br>ubah ``` set PDI_HOME= C:\Users\yohanes.pratama\Desktop\PENTAHO ``` sesuai directory dimana Kitchen.bat pentaho disimpan di lokal komputer (umumnya terletak di directory yang sama dengan file spoon). Jenkins deploy Pentaho lewat file Kitchen.bat, berbeda jika kita dengan UI maka melalui Spoon.bat  


2. Ubah koneksi DB yang dipake pentaho di folder job dan transformation
   1. JOB
      <br>
![image](https://github.com/user-attachments/assets/f0156cc3-0fec-428d-887e-90c9683a4dee)
      <br> password tanpa Encrypted  bisa ditulis langsung, misalnya:<br>
      ```<password>mypassword123</password>```

   2. Transformation
      <br>
![image](https://github.com/user-attachments/assets/7c484866-0f3e-4cf4-9f7b-3f63ab3aaac7)
      <br> password tanpa Encrypted  bisa ditulis langsung, misalnya:<br>
      ```<password>mypassword123</password>```