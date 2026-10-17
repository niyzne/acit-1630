CREATE TABLE IF NOT EXISTS "user" (
    "user_id" INTEGER,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL UNIQUE,
    "subscription_type" TEXT NOT NULL
        CHECK ("subscription_type" IN ('Basic', 'Standard', 'Premium')),
    PRIMARY KEY ("user_id")
);

CREATE TABLE IF NOT EXISTS "game" (
    "game_id" INTEGER,
    "title" TEXT NOT NULL,
    "genre" TEXT NOT NULL,
    "release_date" TEXT NOT NULL,
        -- CHECK (DATE), -- NOT DONE, CHECK SYNTAX LATER (just told to check it's not null atm)
    "rating" TEXT NOT NULL
        CHECK ("rating" IN ('Everyone', 'Teen', 'Mature')),
    "rental_price" NOT NULL
        CHECK ("rental_price" >= 0),
    "purchase_price" NOT NULL
        CHECK ("purchase_price" >= 0),
    PRIMARY KEY ("game_id")
);

CREATE TABLE IF NOT EXISTS "library" (
    "library_id" INTEGER,
    "user_id" INTEGER NOT NULL,
    "game_id" INTEGER NOT NULL,
    "purchase_type" TEXT NOT NULL
        CHECK ("purchase_type" IN 'Purchase' or 'Rental'), -- NOT DONE, CHECK SYNTAX LATER
    "purchase_date" TEXT NOT NULL,
    "launch_date" TEXT,
    "expiry_date" TEXT,
    PRIMARY KEY ("library_id"),
    FOREIGN KEY ("user_id") REFERENCES "user" ("user_id"),
    FOREIGN KEY ("game_id") REFERENCES "game" ("game_id"),
    CHECK (("expiry_date" = 'purchase' AND "expiry_date" IS NULL) 
      OR ("expiry_date" = 'rental' AND "expiry_date" IS NOT NULL))
);
