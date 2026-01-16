CREATE TABLE tbl_collections (
    id SERIAL PRIMARY KEY,
    collectionSetName VARCHAR(100) NOT NULL,
    releaseDate DATE,
    totalCardsInCollection INTEGER
);

CREATE TABLE tbl_types (
    id SERIAL PRIMARY KEY,
    typeName VARCHAR(20) NOT NULL UNIQUE,
    typeColor VARCHAR(7)
);

CREATE TABLE tbl_stages (
    id SERIAL PRIMARY KEY,
    stageName VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE tbl_cards (
    id SERIAL PRIMARY KEY,
    hp INTEGER,
    name VARCHAR(80) NOT NULL,
    type_id INTEGER,
    stage_id INTEGER,
    info TEXT,
    attack VARCHAR(100),
    damage VARCHAR(20),
    weakness VARCHAR(20),
    resistance VARCHAR(20),
    retreat INTEGER,
    cardNumberInCollection INTEGER,
    collection_id INTEGER NOT NULL,
    CONSTRAINT fk_collection
        FOREIGN KEY (collection_id)
        REFERENCES tbl_collections(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_type
        FOREIGN KEY (type_id)
        REFERENCES tbl_types(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_stage
        FOREIGN KEY (stage_id)
        REFERENCES tbl_stages(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE INDEX idx_cards_collection_id ON tbl_cards(collection_id);
CREATE INDEX idx_cards_type_id ON tbl_cards(type_id);
CREATE INDEX idx_cards_stage_id ON tbl_cards(stage_id);
CREATE INDEX idx_cards_name ON tbl_cards(name);
CREATE INDEX idx_collections_name ON tbl_collections(collectionSetName);

INSERT INTO tbl_types (typeName, typeColor) VALUES
    ('Grass', '#78C850'),
    ('Fire', '#F08030'),
    ('Water', '#6890F0'),
    ('Lightning', '#F8D030'),
    ('Psychic', '#F85888'),
    ('Fighting', '#C03028'),
    ('Darkness', '#705848'),
    ('Metal', '#B8B8D0'),
    ('Fairy', '#EE99AC'),
    ('Dragon', '#7038F8'),
    ('Colorless', '#A8A878');

INSERT INTO tbl_stages (stageName) VALUES
    ('Basic'),
    ('Stage 1'),
    ('Stage 2'),
    ('BREAK'),
    ('GX'),
    ('EX'),
    ('V'),
    ('VMAX'),
    ('VSTAR'),
    ('ex');