insert into jobs (job_name) values ('Archer'), ('Shikari'), ('Machinist'), ('Monk'), ('Bushi'), ('Red Battlemage'), ('White Mage'), ('Black Mage'), ('Time Battlemage'), ('Uhlan'), ('Knight'), ('Foebreaker');

insert into quickenings (quickening_name, lp_cost) values ('Quickening 1', 50), ('Quickening 2', 75), ('Quickening 3', 100), ('Quickening 4', 125);

insert into espers (esper_name, lp_cost) values ('Belias', 20), ('Mateus', 30), ('Zalera', 30), ('Adrammelech', 35), ('Cuchulainn', 50), ('Shemhazai', 50), ('Hashmal', 50), ('Exodus', 65), ('Zeromus', 65), ('Famfrit', 100), ('Chaos', 100), ('Ultima', 115), ('Zodiark', 200);

insert into license_types (license_type) values ('Essentials'), ('Black Magick'), ('White Magick'), ('Green Magick'), ('Time Magick'), ('Arcane Magick'), ('Technicks'), ('Accessories'), ('Augmentations'), ('Weapons'), ('Armor');

-- Archer regions
-- main region, unlocked by Famfrit, unlocked by Quickening 1, unlocked by Ultima or Zodiark, unlocked by Chaos, unlocked by Shemhazai
insert into regions (job_id) values (1),(1),(1),(1),(1),(1);

-- Shikari regions
-- main region, unlocked by Quickening 2, unlocked by Mateus, unlocked by Cuchulainn, unlocked by Ultima, unlocked by Exodus, unlocked by Quickening 1, unlocked by Hashmal, unlocked by Zalera, unlocked by Quickening 3, unlocked by Shemhazai, unlocked by Quickening 4
insert into regions (job_id) values (2),(2),(2),(2),(2),(2),(2),(2),(2),(2),(2),(2);

-- Machinist regions
-- main region, unlocked by Exodus, unlocked by Chaos, unlocked by Famfrit, unlocked by Zeromus, unlocked by Shemhazai, unlocked by Cuchulainn, unlocked by Zodiark, unlocked by Ultima or Quickening 4
insert into regions (job_id) values (3),(3),(3),(3),(3),(3),(3),(3),(3);

-- Monk regions
-- main region, unlocked by Zalera, unlocked by Quickening 2, unlocked by Hashmal, unlocked by Shemhazai, unlocked by Exodus, unlocked by Famfrit, unlocked by Zodiark, unlocked by Ultima, unlocked by Chaos, unlocked by Zeromus, unlocked by Quickening 4
insert into regions (job_id) values (4),(4),(4),(4),(4),(4),(4),(4),(4),(4),(4),(4);

-- Bushi regions
-- main region, unlocked by Belias, unlocked by Adrammelech, unlocked by Zalera, unlocked by Quickening 3, unlocked by Quickening 2, unlocked by Chaos, unlocked by Zodiark, unlocked by Quickening 4, unlocked by Ultima or Cuchulainn, unlocked by Zeromus, unlocked by Exodus, unlocked by Shemhazai
insert into regions (job_id) values (5),(5),(5),(5),(5),(5),(5),(5),(5),(5),(5),(5),(5);

-- Red Battlemage regions
-- main region, unlocked by Zeromus, unlocked by Hashmal, unlocked by Quickening 1, unlocked by Shemhazai, unlocked by Quickening 2, unlocked by Exodus, unlocked by Cuchulainn, unlocked by Famfrit, unlocked by Ultima, unlocked by Chaos, unlocked by Zodiark, unlocked by Quickening 4
insert into regions (job_id) values (6),(6),(6),(6),(6),(6),(6),(6),(6),(6),(6),(6),(6);

-- White Mage regions
-- main region, unlocked by Famfrit, unlocked by Zodiark, unlocked by Zeromus, unlocked by Cuchulainn, unlocked by Quickening 2, unlocked by Shemhazai, unlocked by Chaos, unlocked by Exodus, unlocked by Quickening 3, unlocked by Adrammelech, unlocked by Quickening 1
insert into regions (job_id) values (7),(7),(7),(7),(7),(7),(7),(7),(7),(7),(7),(7);

-- Black Mage regions
-- main region, unlocked by Quickening 4, unlocked by Mateus, unlocked by Quickening 1, unlocked by Adrammelech, unlocked by Zalera, unlocked by Hashmal, unlocked by Shemhazai, unlocked by Exodus, unlocked by Zeromus, unlocked by Famfrit, unlocked by Ultima
insert into regions (job_id) values (8),(8),(8),(8),(8),(8),(8),(8),(8),(8),(8),(8);

-- Time Battlemage regions
-- main region, unlocked by Famfrit, unlocked by Zeromus, unlocked by Exodus, unlocked by Hashmal, unlocked by Quickening 2, unlocked by Zalera, unlocked by Adrammelech, unlocked by Mateus, unlocked by Chaos, unlocked by Ultima, unlocked by Zodiark
insert into regions (job_id) values (9),(9),(9),(9),(9),(9),(9),(9),(9),(9),(9),(9);

-- Uhlan regions
-- main region, unlocked by Adrammelech, unlocked by Quickening 3, unlocked by Ultima, unlocked by Chaos, unlocked by Hashmal, unlocked by Famfrit, unlocked by Cuchulainn, unlocked by Mateus
insert into regions (job_id) values (10),(10),(10),(10),(10),(10),(10),(10),(10);

-- Knight regions
-- main region, unlocked by Mateus, unlocked by Belias, unlocked by Shemhazai, unlocked by Cuchulainn, unlocked by Exodus, unlocked by Ultima, unlocked by Chaos or Zodiark or Quickening 4, unlocked by Hashmal
insert into regions (job_id) values (11),(11),(11),(11),(11),(11),(11),(11),(11);

-- Foebreaker regions
-- main region, unlocked by Quickening 3, unlocked by Cuchulainn, unlocked by Hashmal, unlocked by Belias, unlocked by Ultima, unlocked by Famfrit, unlocked by Zalera, unlocked by Adrammelech, unlocked by Quickening 4, unlocked by Exodus or Zeromus
insert into regions (job_id) values (12),(12),(12),(12),(12),(12),(12),(12),(12),(12),(12);

-- Essentials licenses
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Essentials', 'Attack & Items', 0, 1);

-- Black Magick licenses
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Black Magick 1', 'Fire & Thunder', 15, 2);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Black Magick 2', 'Blizzard & Blind', 20, 2);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Black Magick 3', 'Aqua & Silence', 25, 2);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Black Magick 4', 'Aero & Sleep', 30, 2);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Black Magick 5', 'Fira & Poison', 40, 2);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Black Magick 6', 'Thundara & Blizzara', 50, 2);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Black Magick 7', 'Bio & Blindga', 60, 2);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Black Magick 8', 'Aeroga & Silencega', 70, 2);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Black Magick 9', 'Firaga & Thundaga', 90, 2);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Black Magick 10', 'Blizzaga & Sleepga', 90, 2);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Black Magick 11', 'Shock & Toxify', 100, 2);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Black Magick 12', 'Flare & Scourge', 120, 2);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Black Magick 1', 'Scathe', 165, 2);

-- White Magick licenses
insert into licenses (license_name, description, lp_cost, license_type_id) values ('White Magick 1', 'Cure & Blindna', 15, 3);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('White Magick 2', 'Poisona & Vox', 20, 3);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('White Magick 3', 'Shell & Protect', 25, 3);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('White Magick 4', 'Cura & Raise', 30, 3);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('White Magick 5', 'Stona & Dispel', 40, 3);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('White Magick 6', 'Curaga & Regen', 50, 3);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('White Magick 7', 'Esuna & Cleanse', 60, 3);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('White Magick 8', 'Confuse & Faith', 70, 3);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('White Magick 9', 'Curaja & Bravery', 80, 3);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('White Magick 10', 'Arise & Dispelga', 90, 3);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('White Magick 11', 'Holy & Esunaga', 100, 3);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('White Magick 12', 'Protectga & Shellga', 110, 3);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('White Magick 13', 'Renew', 155, 3);

-- Green Magick licenses
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Green Magick 1', 'Oil & Decoy', 40, 4);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Green Magick 2', 'Reverse & Drain', 50, 4);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Green Magick 3', 'Bubble & Syphon', 90, 4);

-- Time Magick licenses
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Time Magick 1', 'Slow & Immobilize', 20, 5);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Time Magick 2', 'Disable & Reflect', 30, 5);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Time Magick 3', 'Vanish & Balance', 40, 5);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Time Magick 4', 'Haste & Gravity', 50, 5);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Time Magick 5', 'Stop & Bleed', 60, 5);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Time Magick 6', 'Break & Countdown', 70, 5);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Time Magick 7', 'Float & Berserk', 80, 5);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Time Magick 8', 'Warp & Vanishga', 90, 5);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Time Magick 9', 'Slowga & Reflectga', 100, 5);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Time Magick 10', 'Hastega & Graviga', 125, 5);

