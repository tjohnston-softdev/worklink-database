# Changelog

**Changes from original**
* Removed tables:
	* Postcode
	* Employer
	* Recommendation
	* SupportWorkerRecommendation
	* InterviewRequest
	* SupportWorkerRequest
* Increased encrypted VARCHAR sizes for 'SupportWorker' table.
	* driversLicenseNumber (32 to 35)
	* phoneContactNumber (32 to 35)
* Increased 'spokenAccent' column size in 'SupportWorker' table. (50 to 100)
* Changed 'locationID' from BIGINT to SMALLINT
* Removed 'checkClearanceDesc' column in 'CheckClearance' table.
* Changed large VARCHAR columns to TEXT
* Deleted 'Employer' test data
* Added test data for 'ReferralSourceCompany' table.
* Added 'registerTimestamp' values to generic 'ReferralSource' test data entries.
* Generated Support Worker test data is compatible with new schema.
* Updated documents to match new schema:
	* Data Dictionary
	* ER Diagram
* Updated References
	* Removed 'Employer test data' row.
	* Added 'Referral Source companies test data' row.
* Updated Readme
	* Corrected 'database definition script' typo.
	* Removed unnecessary details regarding future plans.
	* Renamed 'Further Development' section to 'Public Release'
	* Re-worded usage responsibility in 'Disclaimer'
	* Wrote information about revised schema