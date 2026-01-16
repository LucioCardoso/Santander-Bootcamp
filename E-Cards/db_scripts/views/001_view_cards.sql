CREATE OR REPLACE VIEW vw_cards_complete AS
SELECT 
    c.id,
    c.hp,
    c.name,
    t.typeName AS type,
    t.typeColor AS typeColor,
    s.stageName AS stage,
    c.info,
    c.attack,
    c.damage,
    c.weakness,
    c.resistance,
    c.retreat,
    c.cardNumberInCollection,
    col.collectionSetName AS collection,
    col.releaseDate AS collectionReleaseDate,
    col.totalCardsInCollection AS totalCardsInCollection
FROM 
    tbl_cards c
    LEFT JOIN tbl_types t ON c.type_id = t.id
    LEFT JOIN tbl_stages s ON c.stage_id = s.id
    INNER JOIN tbl_collections col ON c.collection_id = col.id
ORDER BY 
    c.id;