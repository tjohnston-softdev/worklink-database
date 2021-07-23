# Data Dictionary

*INTRODUCTION GOES HERE*

---

## Contents

* [StateTerritory](#stateterritory)
* [Postcode](#postcode)
* [Location](#location)
* [OtherLanguages](#otherlanguages)
* [CulturalBackground](#culturalbackground)
* [FearPhobia](#fearphobia)
* [TechnologyForm](#technologyform)
* [Qualification](#qualification)
* [ExperienceArea](#experiencearea)
* [CheckClearance](#checkclearance) 
* [PersonalityTrait](#personalitytrait)
* [Hobby](#hobby)
* [HobbyCategory](#hobbycategory)
* [HobbyGrouping](#hobbygrouping)
* [GamingConsole](#gamingconsole)
* [Allergy](#allergy)
* [DomesticAnimal](#domesticanimal)
* [ReferralSource](#referralsource)
* [ReferralSourceCompany](#referralsourcecompany)
* [SupportWorker](#supportworker)
* [SupportWorkerOtherLanguages](#supportworkerotherlanguages)
* [SupportWorkerChecks](#supportworkerchecks)
* [SupportWorkerPersonality](#supportworkerpersonality)
* [SupportWorkerHobbies](#supportworkerhobbies)
* [SupportWorkerGaming](#supportworkergaming)
* [SupportWorkerAvaliability](#supportworkeravaliability)
* [SupportWorkerAllergies](#supportworkerallergies)
* [SupportWorkerPets](#supportworkerpets)
* [SupportWorkerFears](#supportworkerfears)
* [SupportWorkerTechnology](#supportworkertechnology)
* [SupportWorkerQualifications](#supportworkerqualifications)
* [SupportWorkerExperienceAreas](#supportworkerexperienceareas)
* [SupportWorkerPreviousExperience](#supportworkerpreviousexperience)
* [SupportWorkerOther](#supportworkerother)
* [Employer](#employer)
* [Recommendation](#recommendation)
* [SupportWorkerRecommendation](#supportworkerrecommendation)
* [InterviewRequest](#interviewrequest)
* [SupportWorkerRequest](#supportworkerrequest)

---

## StateTerritory

This table stores a hard-coded list of the states and territories within Australia. It is used as a basis for sorting individual suburbs that are serviced by Workforce Link. Both the name and abbreviation is stored so that it can be used to write full location names. (eg. Fortitude Valley, Queensland, 4006)

| Name | Description | Data Type | Required | Unique | Primary Key | Foreign Key | Default |
|---|---|---|---|---|---|---|---|
| stateID | ID number of Australian state or territory. | TINYINT UNSIGNED | X | X | X |  | AUTO_INCREMENT |
| stateName | The name of the entry row. | VARCHAR(30) | X | X |  |  |  |
| stateAbbrev | Shorthand abbreviation of the full name (eg. QLD) | VARCHAR(3) | X | X |  |  |  |
| activeFlag | Flag as to whether this row is active. | TINYINT(1) | X |  |  |  | 1 |

---

## Postcode

This table stores a list of postal codes within Australia that correspond to areas serviced by Workforce Link. It is used to match postcodes to suburbs, and write full location names. (eg. Milton, Queensland, 4064). See [Wikipedia](https://en.wikipedia.org/wiki/Postcodes_in_Australia) for more information on how postcodes work.

| Name | Description | Data Type | Required | Unique | Primary Key | Foreign Key | Default |
|---|---|---|---|---|---|---|---|
| postcodeNumber | Number referring to a postal code within Australia. | SMALLINT UNSIGNED | X | X | X |  |  |
| activeFlag | Flag as to whether this row is active. | TINYINT(1) | X |  |  |  | 1 |

---

## Location

This table stores a list of suburbs and towns that are serviced by Workforce Link. When filling out their profile, a support worker can select a known suburb as their home location. The latitude and longitude indicates an 'origin point' which is used to help measure distances between suburbs when searching for support workers. (eg. Within 20 kilometres of Yamanto)

| Name | Description | Data Type | Required | Unique | Primary Key | Foreign Key | Default |
|---|---|---|---|---|---|---|---|
| locationID | The ID number of the location entry. | BIGINT | X | X | X |  | AUTO_INCREMENT |
| locationName | The name of the location | VARCHAR(50) | X | X(1) |  |  |  |
| stateID | The ID number of the Australian state or territory | TINYINT UNSIGNED | X |  |  | StateTerritory (stateID) |  |
| postcodeNumber | The postal code of the location. | SMALLINT UNSIGNED | X | X(1) |  | Postcode (postcodeNumber) |  |
| latitude | The North-South geographic coordinate of the location's origin 			point. | DECIMAL(10,7) | X |  |  |  | 0 |
| longitude | The East-West geographic coordinate of the location's origin 			point. | DECIMAL(10,7) | X |  |  |  | 0 |
| activeFlag | Flag as to whether this row is active. | TINYINT(1) | X |  |  |  | 1 |

---

## OtherLanguages

This table stores a hard-coded list of languages other than English that support workers can select as being speakers of. For example, a worker who  previously lived in China might be able to speak Chinese as one of their languages, so they can include that on their profile. Languages can be used as criteria when searching for support workers.

| Name | Description | Data Type | Required | Unique | Primary Key | Foreign Key | Default |
|---|---|---|---|---|---|---|---|
| languageID | The ID number of the language option. | TINYINT UNSIGNED | X | X | X |  | AUTO_INCREMENT |
| languageName | The name of the spoken language. | VARCHAR(50) | X | X |  |  |  |

---

## CulturalBackground

This table stores a hard-coded list of cultural backgrounds that support workers can select as being a part of. This is not necessarily the same thing as spoken language. It simply indicates what culture they identify with. The cultural background is displayed on the support worker's profile can be used as search criteria.

| Name | Description | Data Type | Required | Unique | Primary Key | Foreign Key | Default |
|---|---|---|---|---|---|---|---|
| culturalBackgroundID | The ID number of the cultural background option. | TINYINT UNSIGNED | X | X | X |  | AUTO_INCREMENT |
| culturalBackgroundName | The name of the cultural background. | VARCHAR(50) | X | X |  |  |  |

---

## FearPhobia

This table stores a hard-coded list of fears and phobias that support workers can select to display on their profile. When searching for support workers, these fears and phobias can be included as criteria.

| Name | Description | Data Type | Required | Unique | Primary Key | Foreign Key | Default |
|---|---|---|---|---|---|---|---|
| fearPhobiaID | The ID number of the fear/phobia option. | SMALLINT UNSIGNED | X | X | X |  | AUTO_INCREMENT |
| fearPhobiaName | The name of the fear/phobia. | VARCHAR(50) | X | X |  |  |  |
| activeFlag | Flag as to whether this row is active. | TINYINT(1) | X |  |  |  | 1 |

---

## TechnologyForm

This table stores a hard-coded list of technological devices that a support worker might need to know how to use when performing these duties. This includes smartphones, computers, and tablets. This is displayed on the support worker's profile and can be used as search criteria.

| Name | Description | Data Type | Required | Unique | Primary Key | Foreign Key | Default |
|---|---|---|---|---|---|---|---|
| technologyID | The ID number of the technology option. | SMALLINT UNSIGNED | X | X | X |  | AUTO_INCREMENT |
| technologyName | The name of the technology option. | VARCHAR(50) | X | X |  |  |  |
| activeFlag | Flag as to whether this row is active. | TINYINT(1) | X |  |  |  | 1 |

---

## Qualification

This table stores a hard-coded list of tertiary qualifications that a person might study in order to become a support worker. These qualifications are included on a support worker's profile and searched for as criteria.

| Name | Description | Data Type | Required | Unique | Primary Key | Foreign Key | Default |
|---|---|---|---|---|---|---|---|
| qualificationID | The ID number of the study qualification. | SMALLINT UNSIGNED | X | X | X |  | AUTO_INCREMENT |
| qualificationName | The name of the study qualification. | VARCHAR(150) | X | X |  |  |  |
| activeFlag | Flag as to whether this row is active. | TINYINT(1) | X |  |  |  | 1 |

---

## ExperienceArea

This table stores a hard-coded list of particular disabilities and conditions that a support worker has direct experience working with. While a qualification might teach theory, this relates more to putting this theory into practice when working with clients. If a support worker has experience in a particular area, they can add it to their profile along with an optional description. When searching for support workers, these experience areas can be included as criteria.

| Name | Description | Data Type | Required | Unique | Primary Key | Foreign Key | Default |
|---|---|---|---|---|---|---|---|
| experienceAreaID | The ID number of the experience area option. | SMALLINT UNSIGNED | X | X | X |  | AUTO_INCREMENT |
| experienceAreaName | The name of the experience area option. | VARCHAR(100) | X | X |  |  |  |
| activeFlag | Flag as to whether this row is active. | TINYINT(1) | X |  |  |  | 1 |

---

## CheckClearance

This table stores a hard-coded list of checks and clearances that a support worker might be required to hold in order to work with clients. This includes things such as [Blue Cards](https://www.qld.gov.au/law/laws-regulated-industries-and-accountability/queensland-laws-and-regulations/regulated-industries-and-licensing/blue-card-services), First Aid certifications, and police checks. If a support worker has a particular check or clearance, they can add it to their profile. These checks and clearances can be displayed on a support worker's profile and searched for as criteria.

| Name | Description | Data Type | Required | Unique | Primary Key | Foreign Key | Default |
|---|---|---|---|---|---|---|---|
| checkClearanceID | The ID number of the check/clearance option. | TINYINT UNSIGNED | X | X | X |  | AUTO_INCREMENT |
| checkClearanceName | The name of the check/clearance option. | VARCHAR(100) | X | X |  |  |  |
| checkClearanceDesc | The description of the check/clearance option. | VARCHAR(300) | X |  |  |  |  |
| activeFlag | Flag as to whether this row is active. | TINYINT(1) | X |  |  |  | 1 |

---

## PersonalityTrait

This table stores a hard-coded list of personality traits that a support worker can use to describe themselves on their profile. When searching for prospective support workers, these set personality traits can be included in the criteria. These personality traits can be displayed on a support worker's profile and searched for as criteria.

| Name | Description | Data Type | Required | Unique | Primary Key | Foreign Key | Default |
|---|---|---|---|---|---|---|---|
| traitID | The ID number of the personality trait option. | SMALLINT UNSIGNED | X | X | X |  | AUTO_INCREMENT |
| traitName | The name of the personality trait option.. | VARCHAR(50) | X | X |  |  |  |
| activeFlag | Flag as to whether this row is active. | TINYINT(1) | X |  |  |  | 1 |

---

## Hobby

This table stores a hard-coded list of hobbies that a support worker might enjoy outside of work. These hobbies can be displayed on a support worker's profile and searched for as criteria. Hobbies are sorted into different categories which makes them easier to display and select when editing a profile or performing a search.

| Name | Description | Data Type | Required | Unique | Primary Key | Foreign Key | Default |
|---|---|---|---|---|---|---|---|
| hobbyID | The ID number of the hobby option. | SMALLINT UNSIGNED | X | X | X |  | AUTO_INCREMENT |
| hobbyName | The name of the hobby option.. | VARCHAR(50) | X | X |  |  |  |
| activeFlag | Flag as to whether this row is active. | TINYINT(1) | X |  |  |  | 1 |

---

## HobbyCategory

This table stores a list of categories used to group hobbies.

| Name | Description | Data Type | Required | Unique | Primary Key | Foreign Key | Default |
|---|---|---|---|---|---|---|---|
| hobbyCategoryID | The ID number of the hobby category. | TINYINT UNSIGNED | X | X | X |  | AUTO_INCREMENT |
| hobbyCategoryName | The name of the hobby category. | VARCHAR(50) | X | X |  |  |  |
| activeFlag | Flag as to whether this row is active. | TINYINT(1) | X |  |  |  | 1 |

---

## HobbyGrouping

This table is used to assign hobbies to particular categories. A hobby can belong to more than one category.

| Name | Description | Data Type | Required | Unique | Primary Key | Foreign Key | Default |
|---|---|---|---|---|---|---|---|
| hobbyID | The ID number of the hobby being assigned to a particular category. | SMALLINT UNSIGNED | X |  | X | Hobby (hobbyID) |  |
| hobbyCategoryID | The ID number of the category that this hobby is being assigned 			to. | TINYINT UNSIGNED | X |  | X | HobbyCategory (hobbyCategoryID) |  |
| activeFlag | Flag as to whether this  row is active. | TINYINT(1) | X |  |  |  | 1 |

---

## GamingConsole

This table stores a hard-coded list of gaming consoles that a support worker might enjoy playing. This includes PlayStation, Xbox, Nintendo, and others. These preferences are displayed on the support worker's profile and can be searched for as criteria.

| Name | Description | Data Type | Required | Unique | Primary Key | Foreign Key | Default |
|---|---|---|---|---|---|---|---|
| consoleID | The ID number of the gaming console option. | SMALLINT UNSIGNED | X | X | X |  | AUTO_INCREMENT |
| consoleName | The name of the gaming console option. | VARCHAR(50) | X | X |  |  |  |
| activeFlag | Flag as to whether this row is active. | TINYINT(1) | X |  |  |  | 1 |

---

## Allergy

This table stores a hard-coded list of allergies that a support worker might be affected by. An example would be an intolerance to gluten. These allergies are displayed on a support worker's profile and can be included in the search criteria.

| Name | Description | Data Type | Required | Unique | Primary Key | Foreign Key | Default |
|---|---|---|---|---|---|---|---|
| allergyID | The ID number of the allergy option. | SMALLINT UNSIGNED | X | X | X |  | AUTO_INCREMENT |
| allergyName | The name of the allergy option. | VARCHAR(50) | X | X |  |  |  |
| activeFlag | Flag as to whether this row is active. | TINYINT(1) | X |  |  |  | 1 |

---

## DomesticAnimal

This table stores a hard-coded list of domestic animals that a support worker might keep as pets, such as Cats and Dogs. Any pet animals will be displayed on the support worker's profile and can be included in the search criteria.

| Name | Description | Data Type | Required | Unique | Primary Key | Foreign Key | Default |
|---|---|---|---|---|---|---|---|
| domesticAnimalID | The ID number of the domestic animal option. | TINYINT UNSIGNED | X | X | X |  | AUTO_INCREMENT |
| domesticAnimalName | The name of the domestic animal option. | VARCHAR(50) | X | X |  |  |  |
| activeFlag | Flag as to whether this row is active. | TINYINT(1) | X |  |  |  | 1 |

---

## ReferralSource

This table stores known referral sources that indicate how the prospective support worker found out about Workforce Link. Support Workers will be asked to identify their referral source when registering their account. Examples of referral sources include job boards, social media, word of mouth, news articles, and more.

This only includes generic information about the referral source. If they are a company, the contact details are stored in 'ReferralSourceCompany'.

| Name | Description | Data Type | Required | Unique | Primary Key | Foreign Key | Default |
|---|---|---|---|---|---|---|---|
| referralSourceID | The ID number of the referral source entry. | SMALLINT UNSIGNED | X | X | X |  | AUTO_INCREMENT |
| referralSourceName | The name of the referral source entry. | VARCHAR(100) | X |  |  |  |  |
| registerTimestamp | The date and time that the referral source was registered into the database. | DATETIME | X |  |  |  | NOW() |
| websiteURL | The URL of the referral source's website, if any. | VARCHAR(300) |  |  |  |  |  |
| activeFlag | Flag as to whether this row is active. | TINYINT(1) | X |  |  |  | 1 |

---

## ReferralSourceCompany

This table includes information about referral sources that are specific companies. This includes their physical street address, and the details of the contact person within the company.

This is a sub-class of 'ReferralSource'.

| Name | Description | Data Type | Required | Unique | Primary Key | Foreign Key | Default |
|---|---|---|---|---|---|---|---|
| referralSourceID | The ID number of the referral source entry that refers to a specific company. | SMALLINT UNSIGNED | X | X | X | ReferralSource (referralSourceID) |  |
| companyAddress | The physical street address of the company. | VARCHAR(300) | X |  |  |  |  |
| consultantName | The full name of the person to contact within the company. | VARCHAR(100) | X |  |  |  |  |
| consultantEmail | The E-Mail address of the contact person. | VARCHAR(150) | X | X |  |  |  |
| consultantPhone | The phone number of the contact person. | CHAR(10) | X | X |  |  |  |
| activeFlag | Flag as to whether this row is active. | TINYINT(1) | X |  |  |  | 1 |

---

## SupportWorker

This table contains data about support workers that are registered onto the Workforce Link system. When a support worker registers and activates their account, employers are able to search and view the available profiles based on criteria. This is the parent table for support worker accounts. It includes their login details, necessary personal information, and basic profile contents such as 'About Me'.

The below 'SupportWorker_____' tables include further profile information such as hard-coded list values.

| Name | Description | Data Type | Required | Unique | Primary Key | Foreign Key | Default |
|---|---|---|---|---|---|---|---|
| supportWorkerID | The ID number of the support worker user account. | INT | X | X | X |  | AUTO_INCREMENT |
| emailAddress | The E-Mail address used to log into the support worker user account. | VARCHAR(150) | X | X |  |  |  |
| driversLicenseNumber | The drivers license number of the support worker. | VARCHAR(32) | X | X |  |  |  |
| phoneContactNumber | The phone number used to contact the support worker. | VARCHAR(32) | X | X |  |  |  |
| firstName | The support worker's first name. | VARCHAR(50) | X |  |  |  |  |
| genderFlag | Flag used to indicate the support worker's chosen gender. A positive number is Male, a negative number is Female, and a zero is Other/Non-Binary | TINYINT | X |  |  |  | 0 |
| registerTimestamp | The date and time when the support worker registered their account. | DATETIME | X |  |  |  | NOW() |
| passwordString | The password used to log into the account. | VARCHAR(100) | X |  |  |  |  |
| dateOfBirth | The support worker's Date of Birth. They must be over 18 in order to register an account. This represents their chronological age. | DATE | X |  |  |  |  |
| feelsLikeAge | This is the age that the support worker 'feels like'. For example, they might be chronologically 25 but actually feel like 22. | TINYINT UNSIGNED |  |  |  |  |  |
| locationID | The ID number of the suburb/town that the support worker resides in | BIGINT | X |  |  | Location (locationID) |  |
| aboutDesc | Text that the support worker entered for their 'About Me' section on their profile, telling us a little about themselves. | VARCHAR(2000) | X |  |  |  |  |
| skillDesc | Text that the support worker entered for the 'Skills' section of their profile, describing their attributes as a support worker. | VARCHAR(2000) | X |  |  |  |  |
| apperanceDesc | Text that the support worker entered for the 'Appearance' section of their profile, describing what they look like, and any 			distinguishing features. | VARCHAR(2000) |  |  |  |  |  |
| travelTimeMinutes | The amount of time in minutes they are willing to travel in order to perform duties. | SMALLINT UNSIGNED | X |  |  |  | 30 |
| englishLanguageFlag | Flag as to whether the support worker is able to speak English. | TINYINT(1) | X |  |  |  |  |
| signLanguageFlag | Flag as to whether the support worker is able to use sign language. | TINYINT(1) | X |  |  |  |  |
| spokenAccent | Short text that describes the support worker's accent. (Origin and strength) | VARCHAR(50) | X |  |  |  |  |
| culturalBackgroundID | The ID number of the cultural background that the support worker identifies as. | TINYINT UNSIGNED | X |  |  | CulturalBackground (culturalBackgroundID) |  |
| vegetarianFlag | Flag as to whether the support worker is vegetarian or vegan. (0=Neither, 1=Vegetarian, 2=Vegan) | TINYINT UNSIGNED | X |  |  |  | 0 |
| petFriendlyFlag | Flag as to whether the support worker is pet-friendly. | TINYINT(1) | X |  |  |  |  |
| smokingStatusFlag | Flag indicating the support worker's smoking status. Positive is 			current, Negative is ex-smoker, Zero is neither. | TINYINT | X |  |  |  | 0 |
| swimmingFlag | Flag as to whether the support worker is able to swim. | TINYINT(1) | X |  |  |  | 0 |
| seasickFlag | Flag as to whether the support worker is prone to sea-sickness. | TINYINT(1) | X |  |  |  | 0 |
| referralSourceID | The ID number of the referral source that referred this support worker to Workforce Link. | SMALLINT UNSIGNED | X |  |  | ReferralSource (referralSourceID) |  |
| wageSubsidyFlag | Flag as to whether the support worker comes with wage subsidies upon hiring. | TINYINT(1) | X |  |  |  | 0 |
| interviewDay | Number indicating the support worker's preferred weekday for interviews. (1=Monday, 2=Tuesday, etc) | TINYINT UNSIGNED | X |  |  |  |  |
| videoString | The ID of the YouTube video that the support worker has embedded to their profile, if any. | CHAR(11) |  |  |  |  |  |
| profileViewCount | The number of times that this support worker profile has been viewed. | INT | X |  |  |  | 0 |
| availableFlag | Flag as to whether the support worker is available for hiring. If this is false, they will be hidden from public searches. | TINYINT(1) | X |  |  |  | 0 |
| activeFlag | Flag as to whether this row is active. | TINYINT(1) | X |  |  |  | 0 |


---

## SupportWorkerOtherLanguages

This table links support worker accounts to their selected 'Other Languages'. A support worker can optionally include one or multiple languages to display on their profile.

| Name | Description | Data Type | Required | Unique | Primary Key | Foreign Key | Default |
|---|---|---|---|---|---|---|---|
| supportWorkerID | The ID number of the support worker speaking a particular 			language. | INT | X |  | X | SupportWorker (supportWorkerID) |  |
| languageID | The ID number of the language being spoken by the support worker. | TINYINT UNSIGNED | X |  | X | OtherLanguages (languageID) |  |
| activeFlag | Flag as to whether this row is active. | TINYINT(1) | X |  |  |  | 1 |


---

## SupportWorkerChecks

This table links support worker accounts to their selected 'Checks and Clearances'. A support worker must have at least one selected check or clearance to display on their profile.

*COLUMNS*

---

## SupportWorkerPersonality

This table links support worker accounts to their selected personality traits. A support worker must select at least one trait to display on their profile.

*COLUMNS*

---

## SupportWorkerHobbies

This table links support worker accounts to their selected hobbies. A support worker must select at least one hobby to display on their profile.

*COLUMNS*

---

## SupportWorkerGaming

This table links support worker accounts to their selected gaming console preferences. A support worker can optionally include one or multiple consoles to display on their profile.

*COLUMNS*

---

## SupportWorkerAvaliability

This table maps the support worker's selected availability in one-hour blocks across the full seven-day week. This does not necessarily indicate the full working roster. It only indicates when a support worker would be available to commit to work shifts.

*COLUMNS*

---

## SupportWorkerAllergies

This table links support worker accounts to their selected allergies. A support worker can optionally include one or multiple allergies to display on their profile.

*COLUMNS*

---

## SupportWorkerPets

This table links support worker accounts to their selected pet animals. A support worker can optionally include one or multiple animals to display on their profile, as well as the number of individuals that they own.

*COLUMNS*

---

## SupportWorkerFears

This table links support worker accounts to their selected 'Fears and Phobias'. A support worker can optionally include one or multiple fears to display on their profile.

*COLUMNS*

---

## SupportWorkerTechnology

This table links support worker accounts to the technological devices that they know how to use. A support worker must select at least one of the given options to display on their profile.

*COLUMNS*

---

## SupportWorkerQualifications

This table links support worker accounts to their formal study qualifications. A support worker must select at least one qualification option to display on their profile.

*COLUMNS*

---

## SupportWorkerExperienceAreas

This table links support worker accounts to the areas of experience that they feel confident in. A support worker must select at least one experience area to display on their profile, along with an optional description.

*COLUMNS*

---

## SupportWorkerPreviousExperience

This table stores information about the prospective support worker's employment history to display on their profile. Including this information is optional.

*COLUMNS*

---

## SupportWorkerOther

This table stores 'other' text that the support worker has written to display on their profile for different sections. This is used to supplement the options chosen from lists such as 'Other Languages' where the allowed items might not be detailed enough for a complete profile. Writing text for these fields is optional.

*COLUMNS*

---

## Employer

This table contains data about employers that are registered onto the Workforce Link system. When an employer is registered onto the system, they can search for support workers, view their profiles, and request interviews.

*COLUMNS*

---

## Recommendation

This table includes data about recommendations to employers made by Workforce Link to consider recruiting these support workers for job roles.

*COLUMNS*

---

## SupportWorkerRecommendation

This table links support workers to recommendations made on their behalf. A support worker can be recommended multiple times, and multiple support workers can be recommended to an employer in the same batch.

*COLUMNS*

---

## InterviewRequest

This table includes data about requests made by registered employers to interview chosen support workers for job roles.

*COLUMNS*

---

## SupportWorkerRequest

This table links support workers to the interview requests that have been sent. A support worker can be requested multiple times (Even by the same employer). Multiple support workers can be requested by an employer in the same batch.

*COLUMNS*

---

*FOOTER*