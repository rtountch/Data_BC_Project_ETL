CREATE TABLE "school_data" (
   "school" text   NOT NULL,
   "school_id" int   NOT NULL,
   "board" text   NOT NULL,
   "board_id" int   NOT NULL,
   "num_students" int   NOT NULL,
   "level_1" int   NOT NULL,
   "level_2" int   NOT NULL,
   "level_3" int   NOT NULL,
   "level_4" int   NOT NULL,
   "num_f" int   NOT NULL,
   "num_m" int   NOT NULL,
   "num_responses" int   NOT NULL,
   CONSTRAINT "pk_school_data" PRIMARY KEY (
       "school_id"
    )
);
CREATE TABLE "response_data" (
   "school_id" int   NOT NULL,
   "q1" int   NOT NULL,
   "q2" int   NOT NULL,
   "q3" int   NOT NULL,
   "q4" int   NOT NULL,
   "q5" int   NOT NULL,
   "q6" int   NOT NULL,
   "q7" int   NOT NULL,
   "q8" int   NOT NULL,
   "q9" int   NOT NULL,
   "q10" int   NOT NULL,
   "q11" int   NOT NULL,
   CONSTRAINT "pk_response_data" PRIMARY KEY (
       "school_id"
    )
);
ALTER TABLE "response_data" ADD CONSTRAINT "fk_response_data_school_id" FOREIGN KEY("school_id")
REFERENCES "school_data" ("school_id");