# Setup Jenkins Project

New Item > Pipeline , Lalu setup seperti contoh dibawah ini:
![image](https://github.com/user-attachments/assets/cde0d290-ee3e-4f12-a72a-71aa6f61d404)

1. Repository URL --> https://github.com/yhndp09/Pentaho-Jenkins.git
2. Branch Specifier (blank for 'any')--> */main
3. Script Path --> jenkins/Jenkinsfile        #file Jenkinsfile ini yang nantinya akan memanggil job dan tranformation pentaho di github


# Jalankan Projek ini di PC atau server lain:
Buka path: 
1. Pentaho-Jenkins/jenkins/run_transformation.bat <br>
   ubah set PDI_HOME=**C:\Users\yohanes.pratama\Desktop\PENTAHO ** sesuai directory dimana Kitchen.bat pentaho disimpan di lokal komputer (umumnya terletak di directory yang sama dengan file spoon)
2. Pentaho-Jenkins/jenkins/jenkins/run_job.bat <br>
   ubah set PDI_HOME=**C:\Users\yohanes.pratama\Desktop\PENTAHO ** sesuai directory dimana Kitchen.bat pentaho disimpan di lokal komputer (umumnya terletak di directory yang sama dengan file spoon)
