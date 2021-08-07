# Changelog

**./er-diagram/**
* Removed tables:
	* Postcode
	* Employer
	* Recommendation
	* InterviewRequest
	* SupportWorkerRecommendation
	* SupportWorkerRequest
* Removed relationships:
	* `Postcode --> Location` - "Mails to"
	* `Employer --> Recommendation` - "Makes"
	* `Employer --> InterviewRequest` - "Sends"
	* `Recommendation --> SupportWorkerRecommendation` - "Recommends"
	* `InterviewRequest --> SupportWorkerRequest` - "Invites"
	* `SupportWorker --> SupportWorkerRecommendation` - "Recommended in"
	* `SupportWorker --> SupportWorkerRequest` - "Invited to"
* Removed Foreign Key status from `Location(postcodeNumber)`
* Removed `CheckClearance(checkClearanceDesc)` column.
