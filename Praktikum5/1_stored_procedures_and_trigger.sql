DROP FUNCTION isfreeslot(character varying,timestamp without time zone,timestamp without time zone);

CREATE OR REPLACE FUNCTION isFreeSlot(
    p_name VARCHAR,
    p_startzeit TIMESTAMP,
    p_endzeit TIMESTAMP
) RETURNS BOOLEAN AS $$
DECLARE
    overlapping_count INTEGER;
BEGIN
    SELECT COUNT(*)
    INTO overlapping_count
    FROM ausstrahlung
    WHERE name = p_name
      AND (p_startzeit < endzeit AND p_endzeit > startzeit);

    IF overlapping_count > 0 THEN
        RETURN FALSE;
    ELSE
        RETURN TRUE;
    END IF;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION check_free_slot() RETURNS TRIGGER AS $$
BEGIN
    IF NOT isFreeSlot(NEW.name, NEW.startzeit, NEW.endzeit) THEN
        RAISE EXCEPTION 'Der angegebene Zeitintervall ist nicht frei.';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

