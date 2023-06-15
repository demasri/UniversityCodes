begin transaction;
set search_path to releves_notes;

create view notesinfo as
select n.sigle as sigle, n.trimc as trimc, n.matricule as matricule , n.prog as prog , n.nature as nature , n.note as note , t.titre as titre
from  notes n, titres t
where n.sigle = t.sigle
;

CREATE TABLE log_notes (trimc char(5), sigle char(10), matricule char(10), prog char(7), nature char(3), note char(3), ts timestamp )
;

CREATE OR REPLACE FUNCTION updatenotes()
RETURNS trigger AS
$$
begin
IF NEW.note != OLD.note THEN
     INSERT INTO log_notes (trimc, sigle, matricule, prog, nature , note , ts ) VALUES
          (NEW.trimc, NEW.sigle, NEW.matricule, NEW.prog, NEW.nature , OLD.note , now() );
	  	       UPDATE notes SET note = NEW.note
		       	       WHERE sigle= NEW.sigle and matricule=NEW.matricule and trimc=NEW.trimc;
			       end if;
			       return new;
			       end;
			       $$ language 'plpgsql';


CREATE TRIGGER  trg_updatenotes
instead of UPDATE
ON notesinfo
for each row
execute procedure updatenotes();

update notesinfo set note='A'
where  sigle='IFT3911' and matricule='53357' and trimc='20114';
select * from notesinfo where matricule='53357';
select * from log_notes;
rollback;
