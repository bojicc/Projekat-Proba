create table Customer
(
	CustomerId int primary key identity(1,1) not null,
	Name nvarchar(20) not null,
	DriverLicNo int not null
)

create table Car 
(
	CarId int primary key identity(1,1) not null,
	Manufacturer nvarchar(20) not null,
	Model nvarchar(20) not null,
	LicensePlate nvarchar(20) not null,
	Year datetime,
	Available bit
)

create table Rental
(
	RentalId int primary key identity(1,1) not null,
	CustomerId int foreign key references Customer(CustomerId) not null,
	CarId int foreign key references Car(CarId) not null,
	DateRented datetime,
	DateReturned datetime 
)