select * from listeProd ();
select * from top5 ();
select * from ecartMoyen ();


-- Test de l'erreur tropPeuLignes

drop table
if exists
ord
cascade
;

CREATE TABLE ord (qty INTEGER);

INSERT INTO ord VALUES(5);
INSERT INTO ord VALUES(NULL);

commit;

select * from ecartMoyen ();

INSERT INTO ord VALUES(10);
INSERT INTO ord VALUES(8);
INSERT INTO ord VALUES(9);
INSERT INTO ord VALUES(13);

commit;

-- Fin du test


select * from empQuadratiques ();
