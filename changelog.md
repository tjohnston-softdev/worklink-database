# Changelog

**./schema/db-definition.sql**
* Changed large `VARCHAR` columns to `TEXT`
* Affected:
	* SupportWorker
		* aboutDesc
		* skillDesc
		* apperanceDesc
	* SupportWorkerExperienceAreas
		* experienceDesc
	* SupportWorkerPreviousExperience
		* positionDesc
	* SupportWorkerOther
		* otherPersonality
		* otherHobbies
		* otherGaming
		* otherPets
		* otherAllergies
		* otherFears
		* otherTechnology
		* otherQualifications
		* otherExperienceAreas
		* otherAvailability
		* otherGeneral
