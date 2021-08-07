# Workforce Link Database

This repository is the schema of the database I designed while developing a prototype for the Information Technology system at Workforce Link, a recruitment start-up company based in Ipswich, Queensland.

---

## Background

Workforce Link is a start-up company that helps recruit prospective support workers for positions in the disability and healthcare industries. In April 2019, I was commissioned to design and implement an IT system to help streamline their loose, paper-based system. One of our goals was to host public profiles of our candidate staff that potential employers are able to search and view, similar to a social network. This was the MySQL database that I designed in order to facilitate the staff search engine.

The definition SQL scripts are dated circa 26 November 2019 at approx. 12:30PM (AEST). They are exactly as they were except for increasing the size limit of some `VARCHAR` columns. The test data was re-created from scratch.

---

## Installing

1. First, run the [database definition script](./schema/db-definition.sql). This defines the database itself along with the empty tables.
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

As of June 2021, I have decided to start cleaning up backup files of the IT system I designed for Workforce Link. On the 5th of August, I publicly released the database design, a 'Support Worker' test data generation script, and a prototype build of the final product.

These repositories are currently based on the original prototype and, as such, are only intended for reference and not proper usage. ~~I will spend the coming months developing an improved version of the system from scratch. Revised versions of the database and test data generator will be developed and released alongside this new system.~~

**Update**  
I have decided to discontinue future plans for re-developing the Workforce Link system. Rather than just making it open-source, I was also going to host a public demo for the API. I am by no means a lawyer but I do not want to risk any potential legal action for using their branding in a future project. I had no hesitations revising the projects from [Response](https://github.com/tjohnston-softdev/submission-to-pdf) or [Optim](https://github.com/tjohnston-softdev/fox-controller-app-tests) because I legally own the code (or some generic version of it) and that I do not use their branding in any present-future tense. Granted, I do hold copyright for the original WF prototype and developing a revised version for portfolio reasons may not be illegal in itself. However, I feel that hosting a public demo with the company's name and something resembling their brand might take it a little too far and attract the wrong attention.

I know all of these legal worries are irrational and the chances of them hearing about it are practically zero. The fact is that I no longer associate with WF and I simply have no right to use their name in any future projects. As mentioned, I could always just write new code and skip the demo but I do not want to spend weeks or months developing an entire Node JS server only to have it go to waste, gathering dust in some underground repository. As mentioned, I have a case for revising the original but cleaning the damn thing would be just as, if not more difficult than starting again from scratch. Even then, hosting a public demo would still raise the branding issues that I insist on avoiding.

As for what I might do in the future, I could develop a generic project based on this one. I would be able to showcase the technical skills and host a public demo while using entirely fictional branding and not having to worry about any legal concerns.

---

## Disclaimer

This database design is licensed under [MIT](https://opensource.org/licenses/MIT). You may use this as a basis both personal and commercial projects as long as attribution is given and the license remains intact. Although I will actively support this repository, I do not claim responsibility for if and how you use this alongside the [original prototype server](https://github.com/tjohnston-softdev/worklink-api-orig). Refer to that repository for more details. The 3rd-party test data used in this version of the database is property of their respective owners. Care has been taken to reference them appropriately and are not covered by this project's license.
