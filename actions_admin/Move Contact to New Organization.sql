﻿SET new.org_id = '';
SET target.email = '';
UPDATE legacy_contacts
SET legacy_organization_id = CAST(current_setting('new.org_id') AS integer)
WHERE email = current_setting('target.email');