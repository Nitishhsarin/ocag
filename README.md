# O.C.A.G.

### Please perform the listed actions to get the Project Up & Running on your Linux Machine.


- Firstly, Open Xampp and import the **autograder.sql** file. The Database is now setup
- Copy the ocag folder into **/opt/lampp/htdocs/** folder
- Open Terminal and Type the following commands to open the _XAMPP_ manager GUI in sequence as it is

		cd /opt/lampp/
        sudo ./manager-linux-x64.run
	
- Now Start your Apache and MySQL Servers.
- Open a new Terminal instance and type the following commands to sequence as it is
		
        cd /opt/lampp/
		sudo chmod -R 777 htdocs
		cd htdocs
		sudo chmod -R 777 ocag
        
- Open the Web Browser and type **localhost/ocag**



> **Login with the following credential initially**

		Username: admin
		Type: Admin
		Password: hello

		Username: ajay
		Type: Faculty
		Password: helloajay

		Username: yuvraj
		Type: Student
		Password: helloyuvraj
