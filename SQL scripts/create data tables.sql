CREATE TABLE "school_data" (
    "School" text   NOT NULL,
    "School_ID" int   NOT NULL,
    "Board" text   NOT NULL,
    "Board_ID" int   NOT NULL,
    "Num_students" int   NOT NULL,
    "Level_1" int   NOT NULL,
    "Level_2" int   NOT NULL,
    "Level_3" int   NOT NULL,
    "Level_4" int   NOT NULL,
    "Num_F" int   NOT NULL,
    "Num_M" int   NOT NULL,
    "Num_responses" int   NOT NULL,
    CONSTRAINT "pk_school_data" PRIMARY KEY (
        "School_ID"
     )
);

CREATE TABLE "response_data" (
    "School_ID" int   NOT NULL,
    "Q1" int   NOT NULL,
    "Q2" int   NOT NULL,
    "Q3" int   NOT NULL,
    "Q4" int   NOT NULL,
    "Q5" int   NOT NULL,
    "Q6" int   NOT NULL,
    "Q7" int   NOT NULL,
    "Q8" int   NOT NULL,
    "Q9" int   NOT NULL,
    "Q10" int   NOT NULL,
    "Q11" int   NOT NULL,
    CONSTRAINT "pk_response_data" PRIMARY KEY (
        "School_ID"
     )
);

ALTER TABLE "response_data" ADD CONSTRAINT "fk_response_data_School_ID" FOREIGN KEY("School_ID")
REFERENCES "school_data" ("School_ID");

