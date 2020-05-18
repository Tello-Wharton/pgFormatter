--
-- LSEG
-- Line segments
--
--DROP TABLE LSEG_TBL;

CREATE TABLE LSEG_TBL (
    s lseg
);

INSERT INTO LSEG_TBL
    VALUES ('[(1,2),(3,4)]');

INSERT INTO LSEG_TBL
    VALUES ('(0,0),(6,6)');

INSERT INTO LSEG_TBL
    VALUES ('10,-10 ,-3,-4');

INSERT INTO LSEG_TBL
    VALUES ('[-1e6,2e2,3e5, -4e1]');

INSERT INTO LSEG_TBL
    VALUES (lseg(point(11, 22), point(33, 44)));

INSERT INTO LSEG_TBL
    VALUES ('[(-10,2),(-10,3)]');

-- vertical
INSERT INTO LSEG_TBL
    VALUES ('[(0,-20),(30,-20)]');

-- horizontal
INSERT INTO LSEG_TBL
    VALUES ('[(NaN,1),(NaN,90)]');

-- NaN
-- bad values for parser testing

INSERT INTO LSEG_TBL
    VALUES ('(3asdf,2 ,3,4r2)');

INSERT INTO LSEG_TBL
    VALUES ('[1,2,3, 4');

INSERT INTO LSEG_TBL
    VALUES ('[(,2),(3,4)]');

INSERT INTO LSEG_TBL
    VALUES ('[(1,2),(3,4)');

SELECT
    *
FROM
    LSEG_TBL;
