DROP DATABASE IF EXISTS linkServicesGroup;

CREATE DATABASE linkServicesGroup
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE linkServicesGroup;


CREATE TABLE StateTerritory
(
	stateID						TINYINT UNSIGNED		NOT NULL			PRIMARY KEY		AUTO_INCREMENT,
	stateName					VARCHAR(30)				UNIQUE NOT NULL,
	stateAbbrev					VARCHAR(3)				UNIQUE NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1
);


CREATE TABLE Location
(
	locationID					SMALLINT				NOT NULL			PRIMARY KEY,
	locationName				VARCHAR(50)				NOT NULL,
	stateID						TINYINT UNSIGNED		NOT NULL,
	postcodeNumber				SMALLINT UNSIGNED		NOT NULL,
	latitude					DECIMAL(10,7)			NOT NULL			DEFAULT 0,
	longitude					DECIMAL(10,7)			NOT NULL			DEFAULT 0,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1,
	UNIQUE (postcodeNumber, locationName),
	FOREIGN KEY (stateID) REFERENCES StateTerritory(stateID) ON UPDATE CASCADE ON DELETE NO ACTION
);


CREATE TABLE OtherLanguages
(
	languageID					TINYINT UNSIGNED		NOT NULL			PRIMARY KEY		AUTO_INCREMENT,
	languageName				VARCHAR(50)				UNIQUE NOT NULL
);

CREATE TABLE CulturalBackground
(
	culturalBackgroundID		TINYINT UNSIGNED		NOT NULL			PRIMARY KEY		AUTO_INCREMENT,
	culturalBackgroundName		VARCHAR(50)				UNIQUE NOT NULL
);


CREATE TABLE FearPhobia
(
	fearPhobiaID				SMALLINT UNSIGNED		NOT NULL			PRIMARY KEY		AUTO_INCREMENT,
	fearPhobiaName				VARCHAR(50)				UNIQUE NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1
);

CREATE TABLE TechnologyForm
(
	technologyID				SMALLINT UNSIGNED		NOT NULL			PRIMARY KEY		AUTO_INCREMENT,
	technologyName				VARCHAR(50)				UNIQUE NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1
);

CREATE TABLE Qualification
(
	qualificationID				SMALLINT UNSIGNED		NOT NULL			PRIMARY KEY		AUTO_INCREMENT,
	qualificationName			VARCHAR(150)			UNIQUE NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1
);

CREATE TABLE ExperienceArea
(
	experienceAreaID			SMALLINT UNSIGNED		NOT NULL			PRIMARY KEY		AUTO_INCREMENT,
	experienceAreaName			VARCHAR(100)			UNIQUE NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1
);

CREATE TABLE CheckClearance
(
	checkClearanceID			TINYINT UNSIGNED		NOT NULL			PRIMARY KEY		AUTO_INCREMENT,
	checkClearanceName			VARCHAR(100)			UNIQUE NOT NULL,
	checkClearanceDesc			VARCHAR(300)			NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1
);

CREATE TABLE PersonalityTrait
(
	traitID						SMALLINT UNSIGNED		NOT NULL			PRIMARY KEY		AUTO_INCREMENT,
	traitName					VARCHAR(50)				UNIQUE NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1
);

CREATE TABLE Hobby
(
	hobbyID						SMALLINT UNSIGNED		NOT NULL			PRIMARY KEY		AUTO_INCREMENT,
	hobbyName					VARCHAR(50)				UNIQUE NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1
);

CREATE TABLE HobbyCategory
(
	hobbyCategoryID				TINYINT UNSIGNED		NOT NULL			PRIMARY KEY		AUTO_INCREMENT,
	hobbyCategoryName			VARCHAR(50)				UNIQUE NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1
);

CREATE TABLE HobbyGrouping
(
	hobbyID						SMALLINT UNSIGNED		NOT NULL,
	hobbyCategoryID				TINYINT UNSIGNED		NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1,
	PRIMARY KEY (hobbyID, hobbyCategoryID),
	FOREIGN KEY (hobbyID) REFERENCES Hobby(hobbyID) ON UPDATE CASCADE ON DELETE NO ACTION,
	FOREIGN KEY (hobbyCategoryID) REFERENCES HobbyCategory(hobbyCategoryID) ON UPDATE CASCADE ON DELETE NO ACTION
);


CREATE TABLE GamingConsole
(
	consoleID					SMALLINT UNSIGNED		NOT NULL			PRIMARY KEY		AUTO_INCREMENT,
	consoleName					VARCHAR(50)				UNIQUE NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1
);

CREATE TABLE Allergy
(
	allergyID					SMALLINT UNSIGNED		NOT NULL			PRIMARY KEY		AUTO_INCREMENT,
	allergyName					VARCHAR(50)				UNIQUE NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1
);

CREATE TABLE DomesticAnimal
(
	domesticAnimalID			TINYINT UNSIGNED		NOT NULL			PRIMARY KEY		AUTO_INCREMENT,
	domesticAnimalName			VARCHAR(50)				UNIQUE NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1
);



CREATE TABLE ReferralSource
(
	referralSourceID			SMALLINT UNSIGNED		NOT NULL			PRIMARY KEY		AUTO_INCREMENT,
	referralSourceName			VARCHAR(100)			NOT NULL,
	registerTimestamp			DATETIME				NOT NULL			DEFAULT NOW(),
	websiteURL					VARCHAR(300),
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1
);

CREATE TABLE ReferralSourceCompany
(
	referralSourceID			SMALLINT UNSIGNED		NOT NULL			PRIMARY KEY,
	companyAddress				VARCHAR(300)			NOT NULL,
	consultantName				VARCHAR(100)			NOT NULL,
	consultantEmail				VARCHAR(150)			UNIQUE NOT NULL,
	consultantPhone				CHAR(10)				UNIQUE NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1,
	FOREIGN KEY (referralSourceID) REFERENCES ReferralSource(referralSourceID) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE SupportWorker
(
	supportWorkerID				INT						NOT NULL			PRIMARY KEY		AUTO_INCREMENT,
	emailAddress				VARCHAR(300)			UNIQUE NOT NULL,
	driversLicenseNumber		VARCHAR(35)				UNIQUE NOT NULL,
	phoneContactNumber			VARCHAR(35)				UNIQUE NOT NULL,
	firstName					VARCHAR(50)				NOT NULL,
	genderFlag					TINYINT					NOT NULL			DEFAULT 0,
	registerTimestamp			DATETIME				NOT NULL			DEFAULT NOW(),
	passwordString				VARCHAR(100)			NOT NULL,
	dateOfBirth					DATE					NOT NULL,
	feelsLikeAge				TINYINT UNSIGNED,
	locationID					SMALLINT				NOT NULL,
	aboutDesc					VARCHAR(2000)			NOT NULL,
	skillDesc					VARCHAR(2000)			NOT NULL,
	apperanceDesc				VARCHAR(2000),
	travelTimeMinutes			SMALLINT UNSIGNED		NOT NULL			DEFAULT 30,
	englishLanguageFlag			TINYINT(1)				NOT NULL,
	signLanguageFlag			TINYINT(1)				NOT NULL,
	spokenAccent				VARCHAR(100)			NOT NULL,
	culturalBackgroundID		TINYINT UNSIGNED		NOT NULL,
	vegetarianFlag				TINYINT UNSIGNED		NOT NULL			DEFAULT 0,
	petFriendlyFlag				TINYINT(1)				NOT NULL			DEFAULT 0,
	smokingStatusFlag			TINYINT					NOT NULL			DEFAULT 0,
	swimmingFlag				TINYINT(1)				NOT NULL			DEFAULT 0,
	seasickFlag					TINYINT					NOT NULL			DEFAULT 0,
	referralSourceID			SMALLINT UNSIGNED		NOT NULL,
	wageSubsidyFlag				TINYINT(1)				NOT NULL			DEFAULT 0,
	interviewDay				TINYINT UNSIGNED		NOT NULL,
	videoString					CHAR(11),
	profileViewCount			INT						NOT NULL			DEFAULT 0,
	availableFlag				TINYINT(1)				NOT NULL			DEFAULT 0,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 0,
	FOREIGN KEY (locationID) REFERENCES Location(locationID) ON UPDATE CASCADE ON DELETE NO ACTION,
	FOREIGN KEY (culturalBackgroundID) REFERENCES CulturalBackground(culturalBackgroundID) ON UPDATE CASCADE ON DELETE NO ACTION,
	FOREIGN KEY (referralSourceID) REFERENCES ReferralSource(referralSourceID) ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE SupportWorkerOtherLanguages
(
	supportWorkerID				INT						NOT NULL,
	languageID					TINYINT UNSIGNED		NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1,
	PRIMARY KEY (supportWorkerID, languageID),
	FOREIGN KEY (supportWorkerID) REFERENCES SupportWorker(supportWorkerID) ON UPDATE CASCADE ON DELETE NO ACTION,
	FOREIGN KEY (languageID) REFERENCES OtherLanguages(languageID) ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE SupportWorkerChecks
(
	supportWorkerID				INT						NOT NULL,
	checkClearanceID			TINYINT UNSIGNED		NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1,
	PRIMARY KEY (supportWorkerID, checkClearanceID),
	FOREIGN KEY (supportWorkerID) REFERENCES SupportWorker(supportWorkerID) ON UPDATE CASCADE ON DELETE NO ACTION,
	FOREIGN KEY (checkClearanceID) REFERENCES CheckClearance(checkClearanceID) ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE SupportWorkerPersonality
(
	supportWorkerID				INT						NOT NULL,
	traitID						SMALLINT UNSIGNED		NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1,
	PRIMARY KEY (supportWorkerID, traitID),
	FOREIGN KEY (supportWorkerID) REFERENCES SupportWorker(supportWorkerID) ON UPDATE CASCADE ON DELETE NO ACTION,
	FOREIGN KEY (traitID) REFERENCES PersonalityTrait(traitID) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE SupportWorkerHobbies
(
	supportWorkerID				INT						NOT NULL,
	hobbyID						SMALLINT UNSIGNED		NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1,
	PRIMARY KEY (supportWorkerID, hobbyID),
	FOREIGN KEY (supportWorkerID) REFERENCES SupportWorker(supportWorkerID) ON UPDATE CASCADE ON DELETE NO ACTION,
	FOREIGN KEY (hobbyID) REFERENCES Hobby(hobbyID) ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE SupportWorkerGaming
(
	supportWorkerID				INT						NOT NULL,
	consoleID					SMALLINT UNSIGNED		NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1,
	PRIMARY KEY (supportWorkerID, consoleID),
	FOREIGN KEY (supportWorkerID) REFERENCES SupportWorker(supportWorkerID) ON UPDATE CASCADE ON DELETE NO ACTION,
	FOREIGN KEY (consoleID) REFERENCES GamingConsole(consoleID) ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE SupportWorkerAvaliability
(
	supportWorkerID				INT						NOT NULL,
	dayNumber					TINYINT UNSIGNED		NOT NULL,
	hourNumber					TINYINT UNSIGNED		NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1,
	PRIMARY KEY (supportWorkerID, dayNumber, hourNumber),
	FOREIGN KEY (supportWorkerID) REFERENCES SupportWorker(supportWorkerID) ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE SupportWorkerAllergies
(
	supportWorkerID				INT						NOT NULL,
	allergyID					SMALLINT UNSIGNED		NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1,
	PRIMARY KEY (supportWorkerID, allergyID),
	FOREIGN KEY (supportWorkerID) REFERENCES SupportWorker(supportWorkerID) ON UPDATE CASCADE ON DELETE NO ACTION,
	FOREIGN KEY (allergyID) REFERENCES Allergy(allergyID) ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE SupportWorkerPets
(
	supportWorkerID				INT						NOT NULL,
	domesticAnimalID			TINYINT UNSIGNED		NOT NULL,
	petCount					TINYINT UNSIGNED		NOT NULL			DEFAULT 1,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1,
	PRIMARY KEY (supportWorkerID, domesticAnimalID),
	FOREIGN KEY (supportWorkerID) REFERENCES SupportWorker(supportWorkerID) ON UPDATE CASCADE ON DELETE NO ACTION,
	FOREIGN KEY (domesticAnimalID) REFERENCES DomesticAnimal(domesticAnimalID) ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE SupportWorkerFears
(
	supportWorkerID				INT						NOT NULL,
	fearPhobiaID				SMALLINT UNSIGNED		NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1,
	PRIMARY KEY (supportWorkerID, fearPhobiaID),
	FOREIGN KEY (supportWorkerID) REFERENCES SupportWorker(supportWorkerID) ON UPDATE CASCADE ON DELETE NO ACTION,
	FOREIGN KEY (fearPhobiaID) REFERENCES FearPhobia(fearPhobiaID) ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE SupportWorkerTechnology
(
	supportWorkerID				INT						NOT NULL,
	technologyID				SMALLINT UNSIGNED		NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1,
	PRIMARY KEY (supportWorkerID, technologyID),
	FOREIGN KEY (supportWorkerID) REFERENCES SupportWorker(supportWorkerID) ON UPDATE CASCADE ON DELETE NO ACTION,
	FOREIGN KEY (technologyID) REFERENCES TechnologyForm(technologyID) ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE SupportWorkerQualifications
(
	supportWorkerID				INT						NOT NULL,
	qualificationID				SMALLINT UNSIGNED		NOT NULL,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1,
	PRIMARY KEY (supportWorkerID, qualificationID),
	FOREIGN KEY (supportWorkerID) REFERENCES SupportWorker(supportWorkerID) ON UPDATE CASCADE ON DELETE NO ACTION,
	FOREIGN KEY (qualificationID) REFERENCES Qualification(qualificationID) ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE SupportWorkerExperienceAreas
(
	supportWorkerID				INT						NOT NULL,
	experienceAreaID			SMALLINT UNSIGNED		NOT NULL,
	experienceDesc				VARCHAR(1000),
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1,
	PRIMARY KEY (supportWorkerID, experienceAreaID),
	FOREIGN KEY (supportWorkerID) REFERENCES SupportWorker(supportWorkerID) ON UPDATE CASCADE ON DELETE NO ACTION,
	FOREIGN KEY (experienceAreaID) REFERENCES ExperienceArea(experienceAreaID) ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE SupportWorkerPreviousExperience
(
	supportWorkerID				INT						NOT NULL,
	positionNumber				TINYINT UNSIGNED		NOT NULL,
	positionTitle				VARCHAR(200)			NOT NULL,
	positionCompany				VARCHAR(200)			NOT NULL,
	positionDesc				VARCHAR(1000)			NOT NULL,
	startDate					DATE					NOT NULL,
	endDate						DATE,
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1,
	PRIMARY KEY (supportWorkerID, positionNumber),
	FOREIGN KEY (supportWorkerID) REFERENCES SupportWorker(supportWorkerID) ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE SupportWorkerOther
(
	supportWorkerID				INT						NOT NULL			PRIMARY KEY,
	otherPersonality			VARCHAR(1000),
	otherHobbies				VARCHAR(1000),
	otherGaming					VARCHAR(1000),
	otherPets					VARCHAR(1000),
	otherAllergies				VARCHAR(1000),
	otherFears					VARCHAR(1000),
	otherTechnology				VARCHAR(1000),
	otherQualifications			VARCHAR(1000),
	otherExperienceAreas		VARCHAR(1000),
	otherAvailability			VARCHAR(1000),
	otherGeneral				VARCHAR(1000),
	activeFlag					TINYINT(1)				NOT NULL			DEFAULT 1,
	FOREIGN KEY (supportWorkerID) REFERENCES SupportWorker(supportWorkerID) ON UPDATE CASCADE ON DELETE NO ACTION
);