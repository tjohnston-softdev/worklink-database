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

*COLUMNS*

---

## Postcode

This table stores a list of postal codes within Australia that correspond to areas serviced by Workforce Link. It is used to match postcodes to suburbs, and write full location names. (eg. Milton, Queensland, 4064). See [Wikipedia](https://en.wikipedia.org/wiki/Postcodes_in_Australia) for more information on how postcodes work.

*COLUMNS*

---

## Location

This table stores a list of suburbs and towns that are serviced by Workforce Link. When filling out their profile, a support worker can select a known suburb as their home location. The latitude and longitude indicates an 'origin point' which is used to help measure distances between suburbs when searching for support workers. (eg. Within 20 kilometres of Yamanto)

*COLUMNS*

---

## OtherLanguages

This table stores a hard-coded list of languages other than English that support workers can select as being speakers of. For example, a worker who  previously lived in China might be able to speak Chinese as one of their languages, so they can include that on their profile. Languages can be used as criteria when searching for support workers.

*COLUMNS*

---

## CulturalBackground

This table stores a hard-coded list of cultural backgrounds that support workers can select as being a part of. This is not necessarily the same thing as spoken language. It simply indicates what culture they identify with. The cultural background is displayed on the support worker's profile can be used as search criteria.

*COLUMNS*

---

## FearPhobia

This table stores a hard-coded list of fears and phobias that support workers can select to display on their profile. When searching for support workers, these fears and phobias can be included as criteria.

*COLUMNS*

---

## TechnologyForm

This table stores a hard-coded list of technological devices that a support worker might need to know how to use when performing these duties. This includes smartphones, computers, and tablets. This is displayed on the support worker's profile and can be used as search criteria.

*COLUMNS*

---

## Qualification

This table stores a hard-coded list of tertiary qualifications that a person might study in order to become a support worker. These qualifications are included on a support worker's profile and searched for as criteria.

*COLUMNS*

---

## ExperienceArea

This table stores a hard-coded list of particular disabilities and conditions that a support worker has direct experience working with. While a qualification might teach theory, this relates more to putting this theory into practice when working with clients. If a support worker has experience in a particular area, they can add it to their profile along with an optional description. When searching for support workers, these experience areas can be included as criteria.

*COLUMNS*

---

## CheckClearance

This table stores a hard-coded list of checks and clearances that a support worker might be required to hold in order to work with clients. This includes things such as [Blue Cards](https://www.qld.gov.au/law/laws-regulated-industries-and-accountability/queensland-laws-and-regulations/regulated-industries-and-licensing/blue-card-services), First Aid certifications, and police checks. If a support worker has a particular check or clearance, they can add it to their profile. These checks and clearances can be displayed on a support worker's profile and searched for as criteria.

*COLUMNS*

---

## PersonalityTrait

This table stores a hard-coded list of personality traits that a support worker can use to describe themselves on their profile. When searching for prospective support workers, these set personality traits can be included in the criteria. These personality traits can be displayed on a support worker's profile and searched for as criteria.

*COLUMNS*

---

## Hobby

This table stores a hard-coded list of hobbies that a support worker might enjoy outside of work. These hobbies can be displayed on a support worker's profile and searched for as criteria. Hobbies are sorted into different categories which makes them easier to display and select when editing a profile or performing a search.

*COLUMNS*

---

## HobbyCategory

This table stores a list of categories used to group hobbies.

*COLUMNS*

---

## HobbyGrouping

This table is used to assign hobbies to particular categories. A hobby can belong to more than one category.

*COLUMNS*

---

## GamingConsole

This table stores a hard-coded list of gaming consoles that a support worker might enjoy playing. This includes PlayStation, Xbox, Nintendo, and others. These preferences are displayed on the support worker's profile and can be searched for as criteria.

*COLUMNS*

---

## Allergy

This table stores a hard-coded list of allergies that a support worker might be affected by. An example would be an intolerance to gluten. These allergies are displayed on a support worker's profile and can be included in the search criteria.

*COLUMNS*

---

## DomesticAnimal

This table stores a hard-coded list of domestic animals that a support worker might keep as pets, such as Cats and Dogs. Any pet animals will be displayed on the support worker's profile and can be included in the search criteria.

*COLUMNS*

---

## ReferralSource

This table stores known referral sources that indicate how the prospective support worker found out about Workforce Link. Support Workers will be asked to identify their referral source when registering their account. Examples of referral sources include job boards, social media, word of mouth, news articles, and more.

This only includes generic information about the referral source. If they are a company, the contact details are stored in 'ReferralSourceCompany'.

*COLUMNS*

---

## ReferralSourceCompany

This table includes information about referral sources that are specific companies. This includes their physical street address, and the details of the contact person within the company.

This is a sub-class of 'ReferralSource'.

*COLUMNS*

---

## SupportWorker

This table contains data about support workers that are registered onto the Workforce Link system. When a support worker registers and activates their account, employers are able to search and view the available profiles based on criteria. This is the parent table for support worker accounts. It includes their login details, necessary personal information, and basic profile contents such as 'About Me'.

The below 'SupportWorker_____' tables include further profile information such as hard-coded list values.

*COLUMNS*

---

## SupportWorkerOtherLanguages

This table links support worker accounts to their selected 'Other Languages'. A support worker can optionally include one or multiple languages to display on their profile.

*COLUMNS*

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