# Changelog

**./schema/db-definition.sql**
* Removed 'Postcode' table - Merged into 'Location'
* Removed `Postcode(postcodeNumber)` Foreign Key from 'Location' table.

---

**./test-data/p1-preloaded_lists/geography.sql**
* Removed 'Postcode' test data.
	* `INSERT INTO Postcode`
