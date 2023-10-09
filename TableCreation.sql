CREATE TABLE Personnel(
	PersonnelID CHAR(5) PRIMARY KEY,
	Name VARCHAR(20) NOT NULL,
	Ranks VARCHAR(15) NOT NULL,
	Branch VARCHAR(20) NOT NULL,
	CommanderID CHAR(5),
	BaseID INT,
	Dependents INT
	);

CREATE TABLE Dependent(
	DependentID CHAR(5) PRIMARY KEY,
	Personnel CHAR(5),
	Name VARCHAR(20) NOT NULL,
	Relation CHAR(10)
	);

CREATE TABLE Commander(
	CommanderID CHAR(5) PRIMARY KEY,
	Name VARCHAR(20),
	No_Of_Personnel INT(5),
	Base INT NOT NULL
	);

CREATE TABLE Aircraft(
	TailNo INT PRIMARY KEY,
	PilotId CHAR(5) NOT NULL,
	WSO_Nav CHAR(5),
	Engineer CHAR(5),
	Type VARCHAR(15),
	Seater VARCHAR(25),
	Manufacturer VARCHAR(40)
	);

CREATE TABLE FlightLog(
	PilotId CHAR(5),
	Aircraft INT PRIMARY KEY,
	Hours INT,
	LastInspected DATE,
	NextInspection DATE
	);

CREATE TABLE PayGrade(
	Personnel CHAR(5) PRIMARY KEY,
	Class INT,
	Allowances INT(5),
	AdditionalPay INT(5)
	);
	
CREATE TABLE Parts(
	PartID INT PRIMARY KEY,
	Manufacturer VARCHAR(30),
	Part_Name VARCHAR(45),
	Aircraft INT
	);
	
CREATE TABLE Base(
    	BaseId INT PRIMARY KEY,
    	Command VARCHAR(30) NOT NULL,
    	Commander CHAR(5) NOT NULL,
    	State VARCHAR(30) NOT NULL,
    	Location VARCHAR(30),
    	Type VARCHAR(15),
    	NoOfAircraft INT(3)
    	);
