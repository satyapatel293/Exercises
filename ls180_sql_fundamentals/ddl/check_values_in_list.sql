ALTER TABLE stars ALTER COLUMN spectral_type SET NOT NULL;
ALTER TABLE stars ADD CHECK 
(spectral_type = 'O' OR
spectral_type = 'B' OR
spectral_type = 'A' OR
spectral_type = 'F' OR
spectral_type = 'G' OR
spectral_type = 'K' OR
spectral_type = 'M');

-- better solution below 

ALTER TABLE stars   
ADD CHECK (spectral_type IN ('O', 'B', 'A', 'F', 'G', 'K', 'M')),
ALTER COLUMN spectral_type SET NOT NULL;


-- further exploration 

actaully real databases will vary on what needs to be done with old data
that doesnot fit to a new constraint added to the system 
but the rule will have to be dependent of the real database 
 - the important of the data, what to replace it with or to add a contrianst to keep it 
 or add the contrianst and void the rule from checking existing data when adding a contraint
 into the table 
general rule 
  - try to make changes to mutliple rows with just one query 
  - try to avoid manualling updating each row 

