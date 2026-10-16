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
    "release_date" TEXT NOT NULL
        CHECK (YYYY-MM-DD), -- CHECK SYNTAX LATER
    "rating" TEXT NOT NULL
        CHECK ("rating" IN ('Everyone', 'Teen', 'Mature')),
    "rental_price" NOT NULL
        CHECK ("rental_price" IS >= 0), -- CHECK SYNTAX LATER
    "purchase_price" NOT NULL
        CHECK ("purchase_price" IS >= 0), -- CHECK SYNTAX LATER
    PRIMARY KEY ("game_id")
);

CREATE TABLE IF NOT EXISTS "library" (
    "library_id" INTEGER,
    "user_id" INTEGER NOT NULL,
    "game_id": INTEGER NOT NULL
    "purchase_type": INTEGER NOT NULL 
        “Purchase” or “Rental” -- CHECK SYNTAX LATER
    "purchase_date": INTEGER NOT NULL 
        the purchase or rental date -- CHECK SYNTAX LATER
    "launch_date": TEXT 
        the first launch date, or NULL if not yet launched -- CHECK SYNTAX LATER
    "expiry_date": TEXT 
      required for rentals and NULL for purchases -- CHECK SYNTAX LATER
    PRIMARY KEY ("library_id"),
    FOREIGN KEY ("user_id") REFERENCES "user" ("user_id")
    FOREIGN KEY ("game_id") REFERENCES "game" ("game_id")
);
