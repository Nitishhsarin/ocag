# OCAG
> You just need to have a Linux Machine with a XAMPP installed on it.

Please perform the listed actions to get the Project Up & Running on your Linux Machine.


1. Firstly, Open Xampp and import the autograder.sql file. The Database is now setup
1. Copy the ocag folder into /opt/lampp/htdocs/ folder
1. Open Terminal and Type the following commands to open the XAMPP manager GUI in sequence as it is
		3.cd /opt/lampp/
		3.sudo ./manager-linux-x64.run
        3.Now Start your Apache and MySQL Servers.
1.Now open a new Terminal and type the following commands to sequence as it is
		3.cd /opt/lampp/
		3.sudo chmod -R 777 htdocs
		3.cd htdocs
		3.sudo chmod -R 777 ocag
1.Open the Web Browser and type localhost/ocag
1.Login with the following credential initially.

		Username: admin
		Type: Admin
		Password: hello

		Username: ajay
		Type: Faculty
		Password: helloajay

		Username: yuvraj
		Type: Student
		Password: helloyuvraj
