# Data Dictionary

*INTRODUCTION GOES HERE*

---

## Contents

* [StateTerritory](#)
* [Postcode](#)
* [Location](#)
* [OtherLanguages](#)
* [CulturalBackground](#)
* [FearPhobia](#)
* [TechnologyForm](#)
* [Qualification](#)
* [ExperienceArea](#)
* [CheckClearance](#) 
* [PersonalityTrait](#)
* [Hobby](#)
* [HobbyCategory](#)
* [HobbyGrouping](#)
* [GamingConsole](#)
* [Allergy](#)
* [DomesticAnimal](#)
* [ReferralSource](#)
* [ReferralSourceCompany](#)
* [SupportWorker](#)
* [SupportWorkerOtherLanguages](#)
* [SupportWorkerChecks](#)
* [SupportWorkerPersonality](#)
* [SupportWorkerHobbies](#)
* [SupportWorkerGaming](#)
* [SupportWorkerAvaliability](#)
* [SupportWorkerAllergies](#)
* [SupportWorkerPets](#)
* [SupportWorkerFears](#)
* [SupportWorkerTechnology](#)
* [SupportWorkerQualifications](#)
* [SupportWorkerExperienceAreas](#)
* [SupportWorkerPreviousExperience](#)
* [SupportWorkerOther](#)
* [Employer](#)
* [Recommendation](#)
* [SupportWorkerRecommendation](#)
* [InterviewRequest](#)
* [SupportWorkerRequest](#)

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

This version of the database uses the 'Languages' dataset from [Mockaroo](https://www.mockaroo.com/), along with options for 'Indigenous Australian' and 'Torres Strait Islander'. An 'Other' option has been included in case the user speaks another language that not included in the set.

*COLUMNS*

---

## CulturalBackground

This table stores a hard-coded list of cultural backgrounds that support workers can select as being a part of. This is not necessarily the same thing as spoken language. It simply indicates what culture they identify with. Cultural backgrounds can be used as criteria when searching for support workers.

Since cultural background is subjective, this version of the database only includes generic, geographical-based cultures such as 'West European'. There are also distinct list items for Indigenous Australian cultures. An 'Other' option has been included in case the user identifies as a culture not covered by the list.

*COLUMNS*

---

## FearPhobia

This table stores a hard-coded list of fears and phobias that support workers can select to display on their profile. When searching for support workers, these fears and phobias can be included as criteria.

This version of the database contains the top 20 most common phobias as listed by [FearOf.net](https://www.fearof.net/).

*COLUMNS*

---

## TechnologyForm

*DESCRIPTION*

*COLUMNS*

---

## Qualification

This table stores a hard-coded list of tertiary qualifications that a person might study in order to become a support worker. These qualifications can be added to a support worker's profile and searched for as criteria.

The qualifications included in this version of the database were hand-picked by the manager at Workforce Link. Most of these qualifications are TAFE-based but there are a couple of University Bachelor degrees as well. There are also 'Other' options for both formal qualifications and equivalent work experience.

*COLUMNS*

---

## ExperienceArea

This table stores a hard-coded list of particular disabilities and conditions that a support worker has direct experience working with. While a qualification might teach theory, this relates more to putting this theory into practice when working with clients. If a support worker has experience in a particular area, they can add it to their profile along with an optional description. When searching for support workers, these experience areas can be included as criteria.

This version of the database uses a generic list of disability categories based on the [National Disability Services](https://www.nds.org.au/disability-types-and-descriptions) website.

*COLUMNS*

---

## CheckClearance

This table stores a hard-coded list of checks and clearances that a support worker might be required to hold in order to work with clients. This includes things such as [Blue Cards](https://www.qld.gov.au/law/laws-regulated-industries-and-accountability/queensland-laws-and-regulations/regulated-industries-and-licensing/blue-card-services), First Aid certifications, and police checks. If a support worker has a particular check or clearance, they can add it to their profile. These checks and clearances can be added to a support worker's profile and searched for as criteria.

Similar to 'Qualification', the data stored in this version of the database was chosen by the Workforce Link manager. There are also options for support workers who are 'Willing to obtain', or 'Will pass'.

*COLUMNS*

---

## PersonalityTrait

This table stores a hard-coded list of personality traits that a support worker can use to describe themselves on their profile. When searching for prospective support workers, these set personality traits can be included in the criteria. These personality traits can be added to a support worker's profile and searched for as criteria.

For this version of the database, I used the [personality system](https://sims.fandom.com/wiki/Personality#Qualities) from *The Sims 1* as list options. When creating a character, their personality can be graded with a 0-10 point scale on five different dimensions. (eg. Serious --> Playful)

*COLUMNS*

---

## Hobby

This table stores a hard-coded list of hobbies that a support worker might enjoy outside of work. These hobbies can be added to a support worker's profile and searched for as criteria. Hobbies are sorted into different categories which makes them easier to display and select when editing a profile or performing a search.

The hobbies and their categories in this version of the database was based on the [Discover A Hobby](https://www.discoverahobby.com/) website.



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

*DESCRIPTION*

*COLUMNS*

---

## Allergy

*DESCRIPTION*

*COLUMNS*

---

## DomesticAnimal

*DESCRIPTION*

*COLUMNS*

---

## ReferralSource

*DESCRIPTION*

*COLUMNS*

---

## ReferralSourceCompany

*DESCRIPTION*

*COLUMNS*

---

## SupportWorker

*DESCRIPTION*

*COLUMNS*

---

## SupportWorkerOtherLanguages

*DESCRIPTION*

*COLUMNS*

---

## SupportWorkerChecks

*DESCRIPTION*

*COLUMNS*

---

## SupportWorkerPersonality

*DESCRIPTION*

*COLUMNS*

---

## SupportWorkerHobbies

*DESCRIPTION*

*COLUMNS*

---

## SupportWorkerGaming

*DESCRIPTION*

*COLUMNS*

---

## SupportWorkerAvaliability

*DESCRIPTION*

*COLUMNS*

---

## SupportWorkerAllergies

*DESCRIPTION*

*COLUMNS*

---

## SupportWorkerPets

*DESCRIPTION*

*COLUMNS*

---

## SupportWorkerFears

*DESCRIPTION*

*COLUMNS*

---

## SupportWorkerTechnology

*DESCRIPTION*

*COLUMNS*

---

## SupportWorkerQualifications

*DESCRIPTION*

*COLUMNS*

---

## SupportWorkerExperienceAreas

*DESCRIPTION*

*COLUMNS*

---

## SupportWorkerPreviousExperience

*DESCRIPTION*

*COLUMNS*

---

## SupportWorkerOther

*DESCRIPTION*

*COLUMNS*

---

## Employer

*DESCRIPTION*

*COLUMNS*

---

## Recommendation

*DESCRIPTION*

*COLUMNS*

---

## SupportWorkerRecommendation

*DESCRIPTION*

*COLUMNS*

---

## InterviewRequest

*DESCRIPTION*

*COLUMNS*

---

## SupportWorkerRequest

*DESCRIPTION*

*COLUMNS*

---

*FOOTER*