USE FlightDW
GO

CREATE TABLE Date_Dimension
(
	date_key int not null,
	full_date smalldatetime,
	day_of_week tinyint,
	day_num_in_month tinyint,
	day_num_overall int,
	day_name varchar(15),
	day_abbrev char(3),
	weekday_flag char(1),
	week_num_in_year int,
	week_num_overall int,
	week_begin_date smalldatetime,
	week_begin_date_key int,
	month tinyint,
	month_num_overall int,
	month_name varchar(15),
	month_abbrev varchar(15),
	quarter tinyint,
	year int,
	yearmo int,
	fiscal_month tinyint,
	fiscal_quarter tinyint,
	fiscal_year int,
	last_day_in_month_flag varchar(15),
	same_day_year_ago_date smalldatetime,
	primary key (date_key)
);
GO

CREATE TABLE DimTime(
TimeKey int primary key,
FlightDate datetime not null,
Year tinyint not null,
Quarter tinyint not null,
Month tinyint not null,
DayOfMonth tinyint not null,
DayOfWeek tinyint not null
);
GO

CREATE TABLE DimAirline(
AirlineKey int primary key,
);
GO

CREATE TABLE DimAerolinea (
	AerolineaKey INT IDENTITY(1,1) PRIMARY KEY,
	[AirportKey] [int] IDENTITY(1,1) NOT NULL,
	[AirportCode] [varchar](20) NOT NULL,
	[AirportName] [varchar](255) NOT NULL,
	[LastUpdatedDate] [date] NULL,
);
GO






