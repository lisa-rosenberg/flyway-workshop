-- Adds some user profiles. This script may run multiple times safely.

INSERT INTO user_profile (username)
SELECT 'pudgy'
WHERE NOT EXISTS (
    SELECT 1
    FROM user_profile
    WHERE username = 'pudgy'
);

INSERT INTO user_profile (username)
SELECT 'sneaky'
WHERE NOT EXISTS (
    SELECT 1
    FROM user_profile
    WHERE username = 'sneaky'
);

INSERT INTO user_profile (username)
SELECT 'foxy'
WHERE NOT EXISTS (
    SELECT 1
    FROM user_profile
    WHERE username = 'foxy'
);
