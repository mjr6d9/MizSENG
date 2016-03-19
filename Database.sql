//for user 
CREATE TABLE USER(
    Fname 				CHAR(10),
	Lname 				CHAR(10),
	Id  				CHAR(15),     
	Age 				INT,
	Location 			CHAR(40),
	Employmenthistory 	CHAR(20),
	Gender 				CHAR(5),
	Email      			CHAR(30),
	Password   			CHAR(15),
	Education  			CHAR(10),
	Connections         CHAR(2),
	Skills     			CHAR(10),
	Volunteer work      CHAR(20),
	Organizations       CHAR(20),
	PostId              CHAR(15),
	FOREIGN KEY(Id)	   REFERENCES USERcredentials(Id),
	FOREIGN KEY(Email)	 REFERENCES USERcredentials(Email),
	FOREIGN KEY(Password)	 REFERENCES USERcredentials(Password),
	FOREIGN KEY(PostId)	   REFERENCES USERcredentials(PostId)
);
//Businesses
CREATE TABLE Businesses(
	Location      CHAR(30),   
	Industry      CHAR(30),
	Name          CHAR(15),
	BId            CHAR(15),
	Email  		  CHAR(30),
	Password      CHAR(15),
	Posts          
	FOREIGN KEY(BId)	   REFERENCES BusinessCredentials(BId),
	FOREIGN KEY(Email)	 REFERENCES BusinessCredentials(Email),
	FOREIGN KEY(Password)	 REFERENCES BusinessCredentials(Password)	
);
//Posts
CREATE TABLE Posts(
	PostId       CHAR(15),
	UseId      CHAR(15),
	Content  CHAR(50),
	Data/time  DATETIME,
	Comments   CHAR(50),
	Likes     CHAR(3)
);
//Comments
CREATE TABLE Comments(
     Id      CHAR(15),
	 User    CHAR(15),
	 //OriginalPost CHAR(10),
	 Data/time  DATETIME
);
//Messages
CREATE TABLE Messages(
     Sender CHAR(20),
	 Recipient CHAR(20),
	 Id       CHAR(15),
	 Data/time DATETIME,
	 Subject   CHAR(30),
	 Content   CHAR(50),
);
//USERcredentials
CREATE TABLE USERcredentials(
     Email  CHAR(30),
	 Password  CHAR(15),
	 Id    CHAR(15),
	 PRIMARY KEY (Id),
);
//BusinessCredentials
CREATE TABLE BusinessCredentials(
     Email  CHAR(30),
	 Password  CHAR(15),
	 BId    CHAR(15),
	 PRIMARY KEY (BId),
);
