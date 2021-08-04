# Workforce Link Database

This repository is the schema of the database I designed while developing a prototype for the Information Technology system at Workforce Link, a recruitment start-up company based in Ipswich, Queensland.

---

## Background

Workforce Link is a start-up company that helps recruit prospective support workers for positions in the disability and healthcare industries. In April 2019, I was commissioned to design and implement an IT system to help streamline their loose, paper-based system. One of our goals was to host public profiles of our candidate staff that potential employers are able to search and view, similar to a social network. This was the MySQL database that I designed in order to facilitate the staff search engine.

---

## Installing

1. First, run the [database definition scriptl](./schema/db-definition.sql). This defines the database itself along with the empty tables.
2. If you plan on using the [prototype server](https://github.com/tjohnston-softdev/worklink-api-orig), you will also need to run [active sessions definition script](./schema/active-sessions.sql). This is a separate database that stores user sessions.
3. Add the [Preloaded Lists test data](./test-data/p1-preloaded_lists/readme.md). It does not matter which order you execute the SQL files in.
4. Generate Support Worker test data using this [generation script](https://github.com/tjohnston-softdev/worklink-data-gen). You need to execute the SQL files in their numbered order. Otherwise, there may be errors.
5. If you need to clear the Support Worker tables, run the [Clean Support Workers](./schema/clean-support-workers.sql) script.

---

## Other Documentation

* [ER Diagram](./er-diagram/readme.md)
* [Data Dictionary](./info/data-dict.md)
* [Support Worker Test Data Generator](https://github.com/tjohnston-softdev/worklink-data-gen)
* [Original Prototype Server](https://github.com/tjohnston-softdev/worklink-api-orig)
* [Test Data References](./info/references.md)

---

## Further Development

*PLACEHOLDER*

---

## Disclaimer

This database design is licensed under [MIT](https://opensource.org/licenses/MIT). You may use this as a basis both personal and commercial projects as long as attribution is given and the license remains intact. Although I will actively support this repository, I do not claim responsibility for if and how you use this alongside the [original prototype server](https://github.com/tjohnston-softdev/worklink-api-orig). Refer to that repository for more details. The 3rd-party test data used are property of their respective owners. Care has been taken to reference them appropriately and are not covered by this project's license.


