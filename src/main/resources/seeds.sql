insert into jobs (job_name) values ('Archer'), ('Shikari'), ('Machinist'), ('Monk'), ('Bushi'), ('Red Battlemage'), ('White Mage'), ('Black Mage'), ('Time Battlemage'), ('Uhlan'), ('Knight'), ('Foebreaker');

insert into quickenings (quickening_name, lp_cost) values ('Quickening 1', 50), ('Quickening 2', 75), ('Quickening 3', 100), ('Quickening 4', 125);

insert into espers (esper_name, lp_cost) values ('Belias', 20), ('Mateus', 30), ('Zalera', 30), ('Adrammelech', 35), ('Cuchulainn', 50), ('Shemhazai', 50), ('Hashmal', 50), ('Exodus', 65), ('Zeromus', 65), ('Famfrit', 100), ('Chaos', 100), ('Ultima', 115), ('Zodiark', 200);

insert into license_types (license_type) values ('Essentials'), ('Black Magick'), ('White Magick'), ('Green Magick'), ('Time Magick'), ('Arcane Magick'), ('Technicks'), ('Accessories'), ('Augmentations'), ('Weapons'), ('Armor');

-- Archer regions
-- main region, unlocked by Famfrit, unlocked by Quickening 1, unlocked by Ultima or Zodiark, unlocked by Chaos, unlocked by Shemhazai
insert into regions (job_id, description) values (1, 'Main region'),(1, 'Unlocked by Famfrit'),(1, 'Unlocked by Quickening 1'),(1, 'Unlocked by Ultima or Zodiark'),(1, 'Unlocked by Chaos'),(1, 'Unlocked by Shemhazai');

-- Shikari regions
-- main region, unlocked by Quickening 2, unlocked by Adrammelech, unlocked by Mateus, unlocked by Cuchulainn, unlocked by Ultima, unlocked by Exodus, unlocked by Quickening 1, unlocked by Hashmal, unlocked by Zalera, unlocked by Quickening 3, unlocked by Shemhazai, unlocked by Quickening 4
insert into regions (job_id, description) values (2, 'Main region'),(2, 'Unlocked by Quickening 2'),(2, 'Unlocked by Adrammelech'),(2, 'Unlocked by Mateus'),(2, 'Unlocked by Cuchulainn'),(2, 'Unlocked by Ultima'),(2, 'Unlocked by Exodus'),(2, 'Unlocked by Quickening 1'),(2, 'Unlocked by Hashmal'),(2, 'Unlocked by Zalera'),(2, 'Unlocked by Quickening 3'),(2, 'Unlocked by Shemhazai'),(2, 'Unlocked by Quickening 4');

-- Machinist regions
-- main region, unlocked by Exodus, unlocked by Chaos, unlocked by Famfrit, unlocked by Zeromus, unlocked by Shemhazai, unlocked by Cuchulainn, unlocked by Zodiark, unlocked by Ultima or Quickening 4
insert into regions (job_id, description) values (3, 'Main region'),(3, 'Unlocked by Exodus'),(3, 'Unlocked by Chaos'),(3, 'Unlocked by Famfrit'),(3, 'Unlocked by Zeromus'),(3, 'Unlocked by Shemhazai'),(3, 'Unlocked by Cuchulainn'),(3, 'Unlocked by Zodiark'),(3, 'Unlocked by Ultima or Quickening 4');

-- Monk regions
-- main region, unlocked by Zalera, unlocked by Quickening 2, unlocked by Hashmal, unlocked by Shemhazai, unlocked by Exodus, unlocked by Famfrit, unlocked by Zodiark, unlocked by Ultima, unlocked by Chaos, unlocked by Zeromus, unlocked by Quickening 4
insert into regions (job_id, description) values (4, 'Main region'),(4, 'Unlocked by Zalera'),(4, 'Unlocked by Quickening 2'),(4, 'Unlocked by Hashmal'),(4, 'Unlocked by Shemhazai'),(4, 'Unlocked by Exodus'),(4, 'Unlocked by Famfrit'),(4, 'Unlocked by Zodiark'),(4, 'Unlocked by Ultima'),(4, 'Unlocked by Chaos'),(4, 'Unlocked by Zeromus'),(4, 'Unlocked by Quickening 4');

-- Bushi regions
-- main region, unlocked by Belias, unlocked by Adrammelech, unlocked by Zalera, unlocked by Quickening 3, unlocked by Quickening 2, unlocked by Chaos, unlocked by Zodiark, unlocked by Quickening 4, unlocked by Ultima or Cuchulainn, unlocked by Zeromus, unlocked by Exodus, unlocked by Shemhazai
insert into regions (job_id, description) values (5, 'Main region'),(5, 'Unlocked by Belias'),(5, 'Unlocked by Adrammelech'),(5, 'Unlocked by Zalera'),(5, 'Unlocked by Quickening 3'),(5, 'Unlocked by Quickening 2'),(5, 'Unlocked by Chaos'),(5, 'Unlocked by Zodiark'),(5, 'Unlocked by Quickening 4'),(5, 'Unlocked by Ultima or Cuchulainn'),(5, 'Unlocked by Zeromus'),(5, 'Unlocked by Exodus'),(5, 'Unlocked by Shemhazai');

-- Red Battlemage regions
-- main region, unlocked by Zeromus, unlocked by Hashmal, unlocked by Quickening 1, unlocked by Shemhazai, unlocked by Quickening 2, unlocked by Exodus, unlocked by Cuchulainn, unlocked by Famfrit, unlocked by Ultima, unlocked by Chaos, unlocked by Zodiark, unlocked by Quickening 4
insert into regions (job_id, description) values (6, 'Main region'),(6, 'Unlocked by Zeromus'),(6, 'Unlocked by Hashmal'),(6, 'Unlocked by Quickening 1'),(6, 'Unlocked by Shemhazai'),(6, 'Unlocked by Quickening 2'),(6, 'Unlocked by Exodus'),(6, 'Unlocked by Cuchulainn'),(6, 'Unlocked by Famfrit'),(6, 'Unlocked by Ultima'),(6, 'Unlocked by Chaos'),(6, 'Unlocked by Zodiark'),(6, 'Unlocked by Quickening 4');

-- White Mage regions
-- main region, unlocked by Famfrit, unlocked by Zodiark, unlocked by Zeromus, unlocked by Cuchulainn, unlocked by Quickening 2, unlocked by Shemhazai, unlocked by Chaos, unlocked by Exodus, unlocked by Quickening 3, unlocked by Adrammelech, unlocked by Quickening 1
insert into regions (job_id, description) values (7, 'Main region'),(7, 'Unlocked by Famfrit'),(7, 'Unlocked by Zodiark'),(7, 'Unlocked by Zeromus'),(7, 'Unlocked by Cuchulainn'),(7, 'Unlocked by Quickening 2'),(7, 'Unlocked by Shemhazai'),(7, 'Unlocked by Chaos'),(7, 'Unlocked by Exodus'),(7, 'Unlocked by Quickening 3'),(7, 'Unlocked by Adrammelech'),(7, 'Unlocked by Quickening 1');

-- Black Mage regions
-- main region, unlocked by Quickening 4, unlocked by Mateus, unlocked by Quickening 1, unlocked by Adrammelech, unlocked by Zalera, unlocked by Hashmal, unlocked by Shemhazai, unlocked by Exodus, unlocked by Zeromus, unlocked by Famfrit, unlocked by Ultima
insert into regions (job_id, description) values (8, 'Main region'),(8, 'Unlocked by Quickening 4'),(8, 'Unlocked by Mateus'),(8, 'Unlocked by Quickening 1'),(8, 'Unlocked by Adrammelech'),(8, 'Unlocked by Zalera'),(8, 'Unlocked by Hashmal'),(8, 'Unlocked by Shemhazai'),(8, 'Unlocked by Exodus'),(8, 'Unlocked by Zeromus'),(8, 'Unlocked by Famfrit'),(8, 'Unlocked by Ultima');

-- Time Battlemage regions
-- main region, unlocked by Famfrit, unlocked by Zeromus, unlocked by Exodus, unlocked by Hashmal, unlocked by Quickening 2, unlocked by Zalera, unlocked by Adrammelech, unlocked by Mateus, unlocked by Chaos, unlocked by Ultima, unlocked by Zodiark
insert into regions (job_id, description) values (9, 'Main region'),(9, 'Unlocked by Famfrit'),(9, 'Unlocked by Zeromus'),(9, 'Unlocked by Exodus'),(9, 'Unlocked by Hashmal'),(9, 'Unlocked by Quickening 2'),(9, 'Unlocked by Zalera'),(9, 'Unlocked by Adrammelech'),(9, 'Unlocked by Mateus'),(9, 'Unlocked by Chaos'),(9, 'Unlocked by Ultima'),(9, 'Unlocked by Zodiark');

-- Uhlan regions
-- main region, unlocked by Adrammelech, unlocked by Quickening 3, unlocked by Ultima, unlocked by Chaos, unlocked by Hashmal, unlocked by Famfrit, unlocked by Cuchulainn, unlocked by Mateus
insert into regions (job_id, description) values (10, 'Main region'),(10, 'Unlocked by Adrammelech'),(10, 'Unlocked by Quickening 3'),(10, 'Unlocked by Ultima'),(10, 'Unlocked by Chaos'),(10, 'Unlocked by Hashmal'),(10, 'Unlocked by Famfrit'),(10, 'Unlocked by Cuchulainn'),(10, 'Unlocked by Mateus');

-- Knight regions
-- main region, unlocked by Mateus, unlocked by Belias, unlocked by Shemhazai, unlocked by Cuchulainn, unlocked by Exodus, unlocked by Ultima, unlocked by Chaos or Zodiark or Quickening 4, unlocked by Hashmal
insert into regions (job_id, description) values (11, 'Main region'),(11, 'Unlocked by Mateus'),(11, 'Unlocked by Belias'),(11, 'Unlocked by Shemhazai'),(11, 'Unlocked by Cuchulainn'),(11, 'Unlocked by Exodus'),(11, 'Unlocked by Ultima'),(11, 'Unlocked by Chaos or Zodiark or Quickening 4'),(11, 'Unlocked by Hashmal');

-- Foebreaker regions
-- main region, unlocked by Quickening 3, unlocked by Cuchulainn, unlocked by Hashmal, unlocked by Belias, unlocked by Ultima, unlocked by Famfrit, unlocked by Zalera, unlocked by Adrammelech, unlocked by Quickening 4, unlocked by Exodus or Zeromus
insert into regions (job_id, description) values (12, 'Main region'),(12, 'Unlocked by Quickening 3'),(12, 'Unlocked by Cuchulainn'),(12, 'Unlocked by Hashmal'),(12, 'Unlocked by Belias'),(12, 'Unlocked by Ultima'),(12, 'Unlocked by Famfrit'),(12, 'Unlocked by Zalera'),(12, 'Unlocked by Adrammelech'),(12, 'Unlocked by Quickening 4'),(12, 'Unlocked by Exodus or Zeromus');

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
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Black Magick 13', 'Scathe', 165, 2);

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

-- Arcane Magick licenses
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Arcane Magick 1', 'Dark & Darkra', 40, 6);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Arcane Magick 2', 'Darkga & Death', 110, 6);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Arcane Magick 3', 'Ardor', 50, 6);

-- Technicks
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Steal', 'Steal from one foe', 20, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Libra', 'Reveal more detailed target information', 25, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Poach', 'Capture HP Critical foes to obtain loot', 30, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('First Aid', 'Restore HP to one HP Critical ally', 20, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Telekinesis', 'Deal ranged damage with melee weapons', 80, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Numerology', 'Deal damage that increases with successive hits', 40, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Souleater', 'Consume HP to deal damage to one foe', 35, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Sight Unseeing', 'Unleash an attack only available when blind', 40, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Charm', 'Cause one foe to confuse friend with foe', 30, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Achilles', 'Render one foe vulnerable to an additional element', 40, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Charge', 'Restore user''s MP and Mist Charges. If the technick fails, MP is reduced to 0', 30, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Infuse', 'Fully consume user''s MP, changing one ally''s HP to 10 times that amount', 30, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Gil Toss', 'Throw gil, damaging all foes in range', 30, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('1000 Needles', 'Deal 1000 damage to one foe', 35, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Revive', 'Consume user''s HP, reviving and fully restoring HP of one KO''d ally', 40, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Stamp', 'Inflict one foe with any harmful status effects on the user', 40, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Shades of Black', 'Cast a random black magick on one foe', 70, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Traveler', 'Deal damage based on total steps taken to all foes in range', 50, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Horology', 'Deal damage based on a factor of time to all foes in range', 50, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Bonecrusher', 'Consume HP to reduce the HP of one foe to 0', 30, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Whither', 'Lower one foe''s strength', 50, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Addle', 'Lower one foe''s magick power', 50, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Expose', 'Lower one foe''s defense', 50, 7);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Shear', 'Lower one foe''s magick resist', 50, 7);

-- Accessories
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 1', 'Orrachea Armlet', 5, 8);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 2', 'Firefly & Bangle', 20, 8);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 3', 'Diamond Armlet & Argyle Armlet', 25, 8);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 4', 'Battle Harness & Steel Gorget', 35, 8);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 5', 'Embroidered Tippet & Tourmaline Ring', 35, 8);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 6', 'Golden Amulet & Leather Gorget', 35, 8);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 7', 'Turtleshell Choker & Rose Corsage', 40, 8);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 8', 'Thief''s Cuffs & Gauntlets', 45, 8);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 9', 'Amber Armlet & Black Belt', 30, 8);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 10', 'Jade Collar & Nishijin Belt', 40, 8);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 11', 'Pheasant Netsuke & Blazer Gloves', 45, 8);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 12', 'Gillie Boots & Steel Poleyns', 60, 8);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 13', 'Armguard & Magick Gloves', 60, 8);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 14', 'Sage''s Ring & Agate Ring', 70, 8);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 15', 'Ruby Ring & Bowline Sash', 70, 8);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 16', 'Cameo Belt & Cat-Ear Hood', 70, 8);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 17', 'Bubble Belt & Fuzzy Mitre', 80, 8);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 18', 'Sash & Power Armlet', 80, 8);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 19', 'Indigo Pendant & Winged Boots', 100, 8);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 20', 'Opal Ring & Hermes Sandals', 115, 8);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 21', 'Quasimodo Boots & Nihopaloa', 130, 8);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 22', 'Germinas Boots & Ring of Renewal', 160, 8);
insert into licenses (license_name, description, lp_cost, license_type_id) values ('Accessories 23', 'Ribbon', 215, 8);

-- Augmentations
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('+30 HP', 'Increase max HP by 30', 20, 9, 'HP Plus');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('+70 HP', 'Increase max HP by 70', 30, 9, 'HP Plus');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('+110 HP', 'Increase max HP by 110', 40, 9, 'HP Plus');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('+150 HP', 'Increase max HP by 150', 50, 9, 'HP Plus');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('+190 HP', 'Increase max HP by 190', 60, 9, 'HP Plus');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('+230 HP', 'Increase max HP by 230', 70, 9, 'HP Plus');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('+270 HP', 'Increase max HP by 270', 80, 9, 'HP Plus');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('+310 HP', 'Increase max HP by 310', 90, 9, 'HP Plus');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('+350 HP', 'Increase max HP by 350', 100, 9, 'HP Plus');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('+390 HP', 'Increase max HP by 390', 115, 9, 'HP Plus');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('+435 HP', 'Increase max HP by 435', 130, 9, 'HP Plus');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('+500 HP', 'Increase max HP by 500', 220, 9, 'HP Plus');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Martyr', 'Gain MP after taking damage', 30, 9, 'Special Combat Modifiers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Inquisition', 'Gain MP after dealing damage', 30, 9, 'Special Combat Modifiers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Warmage', 'Gain MP after dealing magick damage', 30, 9, 'Special Combat Modifiers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Headsman', 'Gain MP after defeating a foe', 30, 9, 'Special Combat Modifiers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Spellbound', 'Increase duration of status effects', 30, 9, 'Special Combat Modifiers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Focus', 'Increase strength when HP is full', 70, 9, 'Special Combat Modifiers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Serenity', 'Increase magick power when HP is full', 70, 9, 'Special Combat Modifiers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Last Stand', 'Increase defense when HP Critical', 70, 9, 'Special Combat Modifiers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Adrenaline', 'Increase strength when HP Critical', 65, 9, 'Special Combat Modifiers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Spellbreaker', 'Increase magick power when HP Critical', 65, 9, 'Special Combat Modifiers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Brawler', 'Increase attack power when fighting empty-handed', 90, 9, 'Special Combat Modifiers');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Battle Lore 1', 'Increase physical attack damage', 30, 9, 'Battle Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Battle Lore 2', 'Increase physical attack damage', 30, 9, 'Battle Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Battle Lore 3', 'Increase physical attack damage', 30, 9, 'Battle Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Battle Lore 4', 'Increase physical attack damage', 30, 9, 'Battle Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Battle Lore 5', 'Increase physical attack damage', 50, 9, 'Battle Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Battle Lore 6', 'Increase physical attack damage', 50, 9, 'Battle Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Battle Lore 7', 'Increase physical attack damage', 50, 9, 'Battle Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Battle Lore 8', 'Increase physical attack damage', 50, 9, 'Battle Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Battle Lore 9', 'Increase physical attack damage', 70, 9, 'Battle Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Battle Lore 10', 'Increase physical attack damage', 70, 9, 'Battle Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Battle Lore 11', 'Increase physical attack damage', 70, 9, 'Battle Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Battle Lore 12', 'Increase physical attack damage', 70, 9, 'Battle Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Battle Lore 13', 'Increase physical attack damage', 100, 9, 'Battle Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Battle Lore 14', 'Increase physical attack damage', 100, 9, 'Battle Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Battle Lore 15', 'Increase physical attack damage', 100, 9, 'Battle Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Battle Lore 16', 'Increase physical attack damage', 100, 9, 'Battle Lore');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Magick Lore 1', 'Increase magick potency', 30, 9, 'Magick Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Magick Lore 2', 'Increase magick potency', 30, 9, 'Magick Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Magick Lore 3', 'Increase magick potency', 30, 9, 'Magick Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Magick Lore 4', 'Increase magick potency', 30, 9, 'Magick Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Magick Lore 5', 'Increase magick potency', 50, 9, 'Magick Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Magick Lore 6', 'Increase magick potency', 50, 9, 'Magick Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Magick Lore 7', 'Increase magick potency', 50, 9, 'Magick Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Magick Lore 8', 'Increase magick potency', 50, 9, 'Magick Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Magick Lore 9', 'Increase magick potency', 70, 9, 'Magick Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Magick Lore 10', 'Increase magick potency', 70, 9, 'Magick Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Magick Lore 11', 'Increase magick potency', 70, 9, 'Magick Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Magick Lore 12', 'Increase magick potency', 70, 9, 'Magick Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Magick Lore 13', 'Increase magick potency', 100, 9, 'Magick Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Magick Lore 14', 'Increase magick potency', 100, 9, 'Magick Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Magick Lore 15', 'Increase magick potency', 100, 9, 'Magick Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Magick Lore 16', 'Increase magick potency', 100, 9, 'Magick Lore');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Shield Block 1', 'Increases chance to block with a shield', 25, 9, 'Shield Block');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Shield Block 2', 'Increases chance to block with a shield', 45, 9, 'Shield Block');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Shield Block 3', 'Increases chance to block with a shield', 75, 9, 'Shield Block');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Swiftness 1', 'Reduces action time by 10%', 30, 9, 'Swiftness');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Swiftness 2', 'Reduces action time by 10%', 50, 9, 'Swiftness');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Swiftness 3', 'Reduces action time by 10%', 80, 9, 'Swiftness');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Channeling 1', 'Reduces magick MP cost by 10%', 30, 9, 'Channeling');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Channeling 2', 'Reduces magick MP cost by 10%', 50, 9, 'Channeling');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Channeling 3', 'Reduces magick MP cost by 10%', 80, 9, 'Channeling');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Potion Lore 1', 'Potions restore more HP', 20, 9, 'Potion Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Potion Lore 2', 'Potions restore more HP', 35, 9, 'Potion Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Potion Lore 3', 'Potions restore more HP', 70, 9, 'Potion Lore');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Ether Lore 1', 'Ethers restore more MP', 20, 9, 'Ether Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Ether Lore 2', 'Ethers restore more MP', 35, 9, 'Ether Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Ether Lore 3', 'Ethers restore more MP', 70, 9, 'Ether Lore');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Phoenix Lore 1', 'Phoenix Down restores more HP', 30, 9, 'Phoenix Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Phoenix Lore 2', 'Phoenix Down restores more HP', 50, 9, 'Phoenix Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Phoenix Lore 3', 'Phoenix Down restores more HP', 90, 9, 'Phoenix Lore');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Remedy Lore 1', 'Remedies remove Sleep, Sap, Immobilize, and Disable', 20, 9, 'Remedy Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Remedy Lore 2', 'Remedies remove Petrify, Confuse, and Oil', 30, 9, 'Remedy Lore');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Remedy Lore 3', 'Remedies remove Stop, Doom, and Disease', 70, 9, 'Remedy Lore');

-- Weapons
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Bows 1', 'Shortbow', 20, 10, 'Bows');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Bows 2', 'Silver Bow & Aevis Killer', 30, 10, 'Bows');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Bows 3', 'Killer Bow & Long Bow', 35, 10, 'Bows');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Bows 4', 'Elfin Bow & Loxley Box', 45, 10, 'Bows');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Bows 5', 'Giant Stonebow & Burning Bow', 50, 10, 'Bows');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Bows 6', 'Traitor''s Bow & Yoichi Bow', 70, 10, 'Bows');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Bows 7', 'Perseus Bow & Artemis Bow', 90, 10, 'Bows');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Sagittarius', 'Sagittarius', 130, 10, 'Bows');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Dhanusha', 'Dhanusha', 200, 10, 'Bows');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Daggers 1', 'Dagger', 15, 10, 'Daggers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Daggers 2', 'Mage Masher & Assassin''s Dagger', 20, 10, 'Daggers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Daggers 3', 'Chopper & Main Gauche', 35, 10, 'Daggers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Daggers 4', 'Gladius & Avenger', 45, 10, 'Daggers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Daggers 5', 'Orichalcum Dirk & Platinum Dagger', 60, 10, 'Daggers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Daggers 6', 'Zwill Crossblade', 80, 10, 'Daggers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Shikari Nagasa & Mina', 'Shikari Nagasa & Mina', 220, 10, 'Daggers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Ninja Swords 1', 'Ashura, Sakura-saezuri, Kagenui, & Orochi', 100, 10, 'Ninja Swords');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Ninja Swords 2', 'Iga Blade', 120, 10, 'Ninja Swords');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Ninja Swords 3', 'Koga Blade', 120, 10, 'Ninja Swords');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Yagyu Darkblade & Mesa', 'Yagyu Darkblade & Mesa', 180, 10, 'Ninja Swords');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Guns 1', 'Altair', 30, 10, 'Guns');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Guns 2', 'Capella & Vega', 50, 10, 'Guns');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Guns 3', 'Sirius & Betelgeuse', 60, 10, 'Guns');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Guns 4', 'Ras Algethi & Aldebaran', 70, 10, 'Guns');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Guns 5', 'Spica & Antares', 90, 10, 'Guns');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Guns 6', 'Arcturus & Fomalhaut', 110, 10, 'Guns');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Mithuna', 'Mithuna', 190, 10, 'Guns');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Measures 1', 'Gilt Measure', 40, 10, 'Measures');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Measures 2', 'Arc Scale & Multi Scale', 50, 10, 'Measures');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Measures 3', 'Cross Scale & Caliper', 70, 10, 'Measures');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Measures 4', 'Euclid''s Sextant', 100, 10, 'Measures');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Poles 1', 'Oaken Pole & Cypress Pole', 20, 10, 'Poles');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Poles 2', 'Battle Bamboo', 30, 10, 'Poles');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Poles 3', 'Musk Stick & Iron Pole', 35, 10, 'Poles');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Poles 4', 'Six-fluted Pole & Gokuu Pole', 40, 10, 'Poles');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Poles 5', 'Zephyr Pole & Ivory Pole', 50, 10, 'Poles');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Poles 6', 'Sweep & Eight-fluted Pole', 60, 10, 'Poles');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Whale Whisker', 'Whale Whisker', 90, 10, 'Poles');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Kanya', 'Kanya', 180, 10, 'Poles');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Katanas 1', 'Kotetsu & Osafune', 35, 10, 'Katanas');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Katanas 2', 'Kogarasumaru & Magoroku', 50, 10, 'Katanas');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Katanas 3', 'Murasame & Kiku-ichimonji', 70, 10, 'Katanas');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Katanas 4', 'Yakei & Ame-no-Murakumo', 90, 10, 'Katanas');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Katanas 5', 'Muramasa', 100, 10, 'Katanas');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Masamune', 'Masamune', 130, 10, 'Katanas');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Kumbha', 'Kumbha', 200, 10, 'Katanas');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Maces 1', 'Mace & Bronze Mace', 30, 10, 'Maces');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Maces 2', 'Bhuj & Miter', 40, 10, 'Maces');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Maces 3', 'Thorned Mace & Chaos Mace', 60, 10, 'Maces');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Maces 4', 'Doom Mace & Zeus Mace', 80, 10, 'Maces');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Maces 5', 'Grand Mace & Bone of Byblos', 130, 10, 'Maces');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Rods 1', 'Rod & Serpent Rod', 20, 10, 'Rods');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Rods 2', 'Healing Rod & Gaia Rod', 30, 10, 'Rods');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Rods 3', 'Power Rod & Empyrean Rod', 40, 10, 'Rods');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Rods 4', 'Holy Rod', 50, 10, 'Rods');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Rod of Faith', 'Rod of Faith', 130, 10, 'Rods');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Staves 1', 'Oak Staff', 15, 10, 'Staves');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Staves 2', 'Cherry Staff & Wizard''s Staff', 25, 10, 'Staves');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Staves 3', 'Flame Staff & Storm Staff', 30, 10, 'Staves');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Staves 4', 'Glacial Staff & Golden Staff', 40, 10, 'Staves');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Staves 5', 'Judicer''s Staff & Cloud Staff', 65, 10, 'Staves');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Staff of the Magi', 'Staff of the Magi', 115, 10, 'Staves');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Crossbows 1', 'Bowgun & Crossbow', 25, 10, 'Crossbows');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Crossbows 2', 'Paramina Crossbow & Recurve Crossbow', 50, 10, 'Crossbows');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Crossbows 3', 'Hunting Crossbow & Penetrator Crossbow', 60, 10, 'Crossbows');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Crossbows 4', 'Gastrophetes & Tula', 115, 10, 'Crossbows');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Spears 1', 'Javelin & Spear', 20, 10, 'Spears');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Spears 2', 'Partisan & Heavy Lance', 25, 10, 'Spears');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Spears 3', 'Storm Spear & Obelisk', 35, 10, 'Spears');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Spears 4', 'Halberd & Trident', 50, 10, 'Spears');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Spears 5', 'Holy Lance & Gungnir', 60, 10, 'Spears');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Dragon Whisker', 'Dragon Whisker', 70, 10, 'Spears');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Vrsabha', 'Vrsabha', 100, 10, 'Spears');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Zodiac Spear', 'Zodiac Spear', 240, 10, 'Spears');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Swords 1', 'Broadsword', 15, 10, 'Swords');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Swords 2', 'Longsword & Iron Sword', 25, 10, 'Swords');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Swords 3', 'Zwill Blade & Ancient Sword', 35, 10, 'Swords');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Swords 4', 'Lohengrin & Flametongue', 50, 10, 'Swords');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Swords 5', 'Demonsbane & Icebrand', 55, 10, 'Swords');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Swords 6', 'Platinum Sword & Bastard Sword', 60, 10, 'Swords');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Swords 7', 'Diamond Sword & Runeblade', 70, 10, 'Swords');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Swords 8', 'Deathbringer & Stoneblade', 80, 10, 'Swords');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Swords 9', 'Durandal & Simha', 90, 10, 'Swords');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Blood Sword', 'Blood Sword', 50, 10, 'Swords');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Karkata', 'Karkata', 80, 10, 'Swords');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Greatswords 1', 'Claymore', 50, 10, 'Greatswords');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Greatswords 2', 'Defender & Save the Queen', 70, 10, 'Greatswords');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Greatswords 3', 'Ultima Blade', 80, 10, 'Greatswords');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Greatswords 4', 'Ragnarok', 100, 10, 'Greatswords');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Excalibur', 'Excalibur', 135, 10, 'Greatswords');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Excalipur', 'Excalipur', 150, 10, 'Greatswords');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Tournesol', 'Tournesol', 225, 10, 'Greatswords');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Axes & Hammers 1', 'Handaxe', 20, 10, 'Axes and Hammers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Axes & Hammers 2', 'Broadaxe & Iron Hammer', 25, 10, 'Axes and Hammers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Axes & Hammers 3', 'Slasher & Warhammer', 35, 10, 'Axes and Hammers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Axes & Hammers 4', 'Hammerhead & Sledgehammer', 50, 10, 'Axes and Hammers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Axes & Hammers 5', 'Francisca & Morning Star', 60, 10, 'Axes and Hammers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Axes & Hammers 6', 'Greataxe & Golden Axe', 65, 10, 'Axes and Hammers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Axes & Hammers 7', 'Scorpion Tail', 85, 10, 'Axes and Hammers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Vrscika', 'Vrscika', 175, 10, 'Axes and Hammers');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Hand-bombs 1', 'Hornito', 35, 10, 'Hand-bombs');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Hand-bombs 2', 'Fumarole & Tumulus', 55, 10, 'Hand-bombs');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Hand-bombs 3', 'Caldera & Volcano', 75, 10, 'Hand-bombs');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Makara', 'Makara', 105, 10, 'Hand-bombs');

-- Armor
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Shields 1', 'Escutcheon & Leather Shield', 15, 11, 'Shields');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Shields 2', 'Bronze Shield & Round Shield', 20, 11, 'Shields');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Shields 3', 'Golden Shield, Ice Shield, & Flame Shield', 25, 11, 'Shields');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Shields 4', 'Diamond Shield, Platinum Shield, & Dragon Shield', 30, 11, 'Shields');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Shields 5', 'Crystal Shield & Kaiser Shield', 35, 11, 'Shields');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Shields 6', 'Aegis Shield & Demon Shield', 40, 11, 'Shields');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Shields 7', 'Venetian Shield', 65, 11, 'Shields');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Shell Shield', 'Shell Shield', 90, 11, 'Shields');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Ensanguined Shield', 'Ensanguined Shield', 100, 11, 'Shields');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Zodiac Escutcheon', 'Zodiac Escutcheon', 235, 11, 'Shields');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Light Armor 1', 'Leather Cap & Leather Clothing', 10, 11, 'Light Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Light Armor 2', 'Headgear & Chromed Leathers / Headguard & Leather Breastplate', 15, 11, 'Light Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Light Armor 3', 'Leather Headgear & Bronze Chestplate / Horned Hat & Ringmail', 20, 11, 'Light Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Light Armor 4', 'Balaclava & Windbreaker / Soldiers'' Cap & Heavy Coat', 25, 11, 'Light Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Light Armor 5', 'Green Beret & Survival Vest / Red Cap & Brigandine', 30, 11, 'Light Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Light Armor 6', 'Headband & Jujitsu Gi / Pirate Hat & Viking Coat', 40, 11, 'Light Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Light Armor 7', 'Goggle Mask & Metal Jerkin / Adamant Hat & Adamant Vest', 50, 11, 'Light Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Light Armor 8', 'Officer''s Hat & Barrel Coat / Chakra Band & Power Vest', 60, 11, 'Light Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Light Armor 9', 'Thief''s Cap & Ninja Gear / Gigas Hat & Gigas Chestplate', 70, 11, 'Light Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Light Armor 10', 'Chaperon & Minerva Bustier', 75, 11, 'Light Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Light Armor 11', 'Crown of Laurels & Rubber Suit', 80, 11, 'Light Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Light Armor 12', 'Renewing Morion & Mirage Vest', 90, 11, 'Light Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Light Armor 13', 'Dueling Mask & Brave Suit', 110, 11, 'Light Armor');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Heavy Armor 1', 'Leather Helm & Leather Aromor / Bronze Helm & Bronze Armor', 25, 11, 'Heavy Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Heavy Armor 2', 'Sallet & Scale Armor / Iron Helm & Iron Armor', 30, 11, 'Heavy Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Heavy Armor 3', 'Barbut & Linen Cuirass / Winged Helm & Chainmail', 35, 11, 'Heavy Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Heavy Armor 4', 'Golden Helm & Golden Armor / Burgonet & Shielded Armor', 40, 11, 'Heavy Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Heavy Armor 5', 'Close Helmet & Demon Mail / Bone Helm & Bone Mail', 50, 11, 'Heavy Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Heavy Armor 6', 'Diamond Helm & Diamond Mail', 55, 11, 'Heavy Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Heavy Armor 7', 'Steel Mask & Mirror Mail', 60, 11, 'Heavy Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Heavy Armor 8', 'Platinum Helm & Platinum Armor', 65, 11, 'Heavy Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Heavy Armor 9', 'Giant''s Helmet & Carabineer Mail', 70, 11, 'Heavy Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Heavy Armor 10', 'Dragon Helm & Dragon Mail', 80, 11, 'Heavy Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Heavy Armor 11', 'Magepower Shishak & Maximillian', 90, 11, 'Heavy Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Heavy Armor 12', 'Grand Helm & Grand Armor', 25, 11, 'Heavy Armor');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Mystic Armor 1', 'Cotton Cap & Cotton Shirt / Magick Curch & Light Woven Shirt', 10, 11, 'Mystic Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Mystic Armor 2', 'Pointy Hat & Silken Shirt / Topkapi Hat & Kilimweave Shirt', 15, 11, 'Mystic Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Mystic Armor 3', 'Calot Hat & Shepherd''s Bolero / Wizard''s Hat & Wizard''s Robes', 20, 11, 'Mystic Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Mystic Armor 4', 'Lambent Hat & Chanter''s Djellaba / Feathered Cap & Traveler''s Vestment', 25, 11, 'Mystic Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Mystic Armor 5', 'Mage''s Hat & Mage''s Habit / Lamia''s Tiara & Enchanter''s Habit', 30, 11, 'Mystic Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Mystic Armor 6', 'Sorcerer''s Hat & Sorcerer''s Habit / Black Cowl & Black Garb', 40, 11, 'Mystic Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Mystic Armor 7', 'Astrakhan Hat & Carmagnole / Gaia Hat & Maduin Gear', 50, 11, 'Mystic Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Mystic Armor 8', 'Hypnocrown & Jade Gown / Gold Hairpin & Gaia Gear', 60, 11, 'Mystic Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Mystic Armor 9', 'Celebrant''s Miter & Cleric''s Robes', 70, 11, 'Mystic Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Mystic Armor 10', 'Black Mask & Black Robes', 75, 11, 'Mystic Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Mystic Armor 11', 'White Mask & White Robes', 80, 11, 'Mystic Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Mystic Armor 12', 'Golden Skullcap & Glimmering Robes', 90, 11, 'Mystic Armor');
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Mystic Armor 13', 'Circlet & Lordly Robes', 110, 11, 'Mystic Armor');

insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Genji Armor', 'Genji Shield, Genji Armor, Genji Helm, & Genji Gloves', 190, 11, 'Genji Armor');

-- Archer license links
-- Main region
-- HP Plus
insert into license_links (license_id, region_id) values (91, 1);
insert into license_links (license_id, region_id) values (92, 1);
insert into license_links (license_id, region_id) values (93, 1);
insert into license_links (license_id, region_id) values (94, 1);
insert into license_links (license_id, region_id) values (95, 1);
insert into license_links (license_id, region_id) values (96, 1);
insert into license_links (license_id, region_id) values (97, 1);
insert into license_links (license_id, region_id) values (98, 1);

-- Bows
insert into license_links (license_id, region_id) values (167, 1);
insert into license_links (license_id, region_id) values (168, 1);
insert into license_links (license_id, region_id) values (169, 1);
insert into license_links (license_id, region_id) values (170, 1);
insert into license_links (license_id, region_id) values (171, 1);
insert into license_links (license_id, region_id) values (172, 1);
insert into license_links (license_id, region_id) values (173, 1);
insert into license_links (license_id, region_id) values (174, 1);
insert into license_links (license_id, region_id) values (175, 1);

-- Augmentations
insert into license_links (license_id, region_id) values (103, 1);
insert into license_links (license_id, region_id) values (104, 1);
insert into license_links (license_id, region_id) values (106, 1);
insert into license_links (license_id, region_id) values (107, 1);
insert into license_links (license_id, region_id) values (108, 1);
insert into license_links (license_id, region_id) values (110, 1);
insert into license_links (license_id, region_id) values (130, 1);
insert into license_links (license_id, region_id) values (114, 1);
insert into license_links (license_id, region_id) values (115, 1);
insert into license_links (license_id, region_id) values (155, 1);
insert into license_links (license_id, region_id) values (156, 1);
insert into license_links (license_id, region_id) values (157, 1);
insert into license_links (license_id, region_id) values (161, 1);
insert into license_links (license_id, region_id) values (162, 1);
insert into license_links (license_id, region_id) values (163, 1);
insert into license_links (license_id, region_id) values (164, 1);
insert into license_links (license_id, region_id) values (165, 1);
insert into license_links (license_id, region_id) values (166, 1);
insert into license_links (license_id, region_id) values (149, 1);
insert into license_links (license_id, region_id) values (150, 1);
insert into license_links (license_id, region_id) values (151, 1);

-- Technicks
insert into license_links (license_id, region_id) values (44, 1);
insert into license_links (license_id, region_id) values (47, 1);
insert into license_links (license_id, region_id) values (45, 1);
insert into license_links (license_id, region_id) values (46, 1);
insert into license_links (license_id, region_id) values (52, 1);
insert into license_links (license_id, region_id) values (56, 1);
insert into license_links (license_id, region_id) values (53, 1);
insert into license_links (license_id, region_id) values (58, 1);
insert into license_links (license_id, region_id) values (61, 1);
insert into license_links (license_id, region_id) values (65, 1);
insert into license_links (license_id, region_id) values (67, 1);
insert into license_links (license_id, region_id) values (60, 1);

-- Light Armor
insert into license_links (license_id, region_id) values (281, 1);
insert into license_links (license_id, region_id) values (282, 1);
insert into license_links (license_id, region_id) values (283, 1);
insert into license_links (license_id, region_id) values (284, 1);
insert into license_links (license_id, region_id) values (285, 1);
insert into license_links (license_id, region_id) values (286, 1);
insert into license_links (license_id, region_id) values (287, 1);
insert into license_links (license_id, region_id) values (288, 1);
insert into license_links (license_id, region_id) values (289, 1);
insert into license_links (license_id, region_id) values (290, 1);
insert into license_links (license_id, region_id) values (291, 1);
insert into license_links (license_id, region_id) values (292, 1);
insert into license_links (license_id, region_id) values (293, 1);

-- Accessories
insert into license_links (license_id, region_id) values (68, 1);
insert into license_links (license_id, region_id) values (69, 1);
insert into license_links (license_id, region_id) values (70, 1);
insert into license_links (license_id, region_id) values (71, 1);
insert into license_links (license_id, region_id) values (72, 1);
insert into license_links (license_id, region_id) values (73, 1);
insert into license_links (license_id, region_id) values (74, 1);
insert into license_links (license_id, region_id) values (75, 1);
insert into license_links (license_id, region_id) values (76, 1);
insert into license_links (license_id, region_id) values (77, 1);
insert into license_links (license_id, region_id) values (78, 1);
insert into license_links (license_id, region_id) values (79, 1);
insert into license_links (license_id, region_id) values (80, 1);
insert into license_links (license_id, region_id) values (81, 1);
insert into license_links (license_id, region_id) values (82, 1);
insert into license_links (license_id, region_id) values (83, 1);
insert into license_links (license_id, region_id) values (84, 1);
insert into license_links (license_id, region_id) values (85, 1);
insert into license_links (license_id, region_id) values (86, 1);
insert into license_links (license_id, region_id) values (87, 1);
insert into license_links (license_id, region_id) values (88, 1);
insert into license_links (license_id, region_id) values (89, 1);
insert into license_links (license_id, region_id) values (90, 1);

-- Unlocked by Famfrit
-- HP Plus
insert into license_links (license_id, region_id) values (101, 2);
insert into license_links (license_id, region_id) values (102, 2);

-- Unlocked by Quickening 1
-- White Magicks
insert into license_links (license_id, region_id) values (18, 3);

-- Unlocked by Ultima or Zodiark
-- Technicks
insert into license_links (license_id, region_id) values (55, 4);
insert into license_links (license_id, region_id) values (57, 4);

-- Unlocked by Chaos
-- Magick Lores
insert into license_links (license_id, region_id) values (131, 5);
insert into license_links (license_id, region_id) values (132, 5);
insert into license_links (license_id, region_id) values (133, 5);
insert into license_links (license_id, region_id) values (134, 5);
insert into license_links (license_id, region_id) values (135, 5);

-- Unlocked by Shemhazai
-- Heavy Armor
insert into license_links (license_id, region_id) values (303, 6);
insert into license_links (license_id, region_id) values (304, 6);
insert into license_links (license_id, region_id) values (305, 6);

-- Shikari license links
-- Main region
-- Weapons
insert into license_links (license_id, region_id) values (176, 7);
insert into license_links (license_id, region_id) values (177, 7);
insert into license_links (license_id, region_id) values (178, 7);
insert into license_links (license_id, region_id) values (179, 7);
insert into license_links (license_id, region_id) values (180, 7);
insert into license_links (license_id, region_id) values (181, 7);
insert into license_links (license_id, region_id) values (182, 7);

-- Shields
insert into license_links (license_id, region_id) values (271, 7);
insert into license_links (license_id, region_id) values (272, 7);
insert into license_links (license_id, region_id) values (273, 7);
insert into license_links (license_id, region_id) values (274, 7);
insert into license_links (license_id, region_id) values (275, 7);
insert into license_links (license_id, region_id) values (276, 7);
insert into license_links (license_id, region_id) values (277, 7);

-- Light Armor
insert into license_links (license_id, region_id) values (281, 7);
insert into license_links (license_id, region_id) values (282, 7);
insert into license_links (license_id, region_id) values (283, 7);
insert into license_links (license_id, region_id) values (284, 7);
insert into license_links (license_id, region_id) values (285, 7);
insert into license_links (license_id, region_id) values (286, 7);
insert into license_links (license_id, region_id) values (287, 7);
insert into license_links (license_id, region_id) values (288, 7);
insert into license_links (license_id, region_id) values (289, 7);
insert into license_links (license_id, region_id) values (290, 7);
insert into license_links (license_id, region_id) values (291, 7);
insert into license_links (license_id, region_id) values (292, 7);
insert into license_links (license_id, region_id) values (293, 7);

-- Augmentations
insert into license_links (license_id, region_id) values (103, 7);
insert into license_links (license_id, region_id) values (104, 7);
insert into license_links (license_id, region_id) values (106, 7);
insert into license_links (license_id, region_id) values (107, 7);
insert into license_links (license_id, region_id) values (108, 7);
insert into license_links (license_id, region_id) values (110, 7);
insert into license_links (license_id, region_id) values (111, 7);
insert into license_links (license_id, region_id) values (113, 7);
insert into license_links (license_id, region_id) values (146, 7);
insert into license_links (license_id, region_id) values (147, 7);
insert into license_links (license_id, region_id) values (114, 7);
insert into license_links (license_id, region_id) values (115, 7);
insert into license_links (license_id, region_id) values (116, 7);
insert into license_links (license_id, region_id) values (117, 7);
insert into license_links (license_id, region_id) values (118, 7);
insert into license_links (license_id, region_id) values (119, 7);
insert into license_links (license_id, region_id) values (130, 7);
insert into license_links (license_id, region_id) values (131, 7);
insert into license_links (license_id, region_id) values (132, 7);
insert into license_links (license_id, region_id) values (133, 7);
insert into license_links (license_id, region_id) values (134, 7);
insert into license_links (license_id, region_id) values (155, 7);
insert into license_links (license_id, region_id) values (156, 7);
insert into license_links (license_id, region_id) values (157, 7);
insert into license_links (license_id, region_id) values (164, 7);
insert into license_links (license_id, region_id) values (165, 7);
insert into license_links (license_id, region_id) values (166, 7);
insert into license_links (license_id, region_id) values (149, 7);
insert into license_links (license_id, region_id) values (150, 7);
insert into license_links (license_id, region_id) values (151, 7);

-- Technicks
insert into license_links (license_id, region_id) values (47, 7);
insert into license_links (license_id, region_id) values (45, 7);
insert into license_links (license_id, region_id) values (57, 7);
insert into license_links (license_id, region_id) values (58, 7);
insert into license_links (license_id, region_id) values (61, 7);
insert into license_links (license_id, region_id) values (48, 7);

-- HP Plus
insert into license_links (license_id, region_id) values (91, 7);
insert into license_links (license_id, region_id) values (92, 7);
insert into license_links (license_id, region_id) values (93, 7);
insert into license_links (license_id, region_id) values (94, 7);
insert into license_links (license_id, region_id) values (95, 7);
insert into license_links (license_id, region_id) values (96, 7);
insert into license_links (license_id, region_id) values (97, 7);
insert into license_links (license_id, region_id) values (98, 7);
insert into license_links (license_id, region_id) values (99, 7);
insert into license_links (license_id, region_id) values (100, 7);

-- Accessories
insert into license_links (license_id, region_id) values (68, 7);
insert into license_links (license_id, region_id) values (69, 7);
insert into license_links (license_id, region_id) values (70, 7);
insert into license_links (license_id, region_id) values (71, 7);
insert into license_links (license_id, region_id) values (72, 7);
insert into license_links (license_id, region_id) values (73, 7);
insert into license_links (license_id, region_id) values (74, 7);
insert into license_links (license_id, region_id) values (75, 7);
insert into license_links (license_id, region_id) values (76, 7);
insert into license_links (license_id, region_id) values (77, 7);
insert into license_links (license_id, region_id) values (78, 7);
insert into license_links (license_id, region_id) values (79, 7);
insert into license_links (license_id, region_id) values (80, 7);
insert into license_links (license_id, region_id) values (81, 7);
insert into license_links (license_id, region_id) values (82, 7);
insert into license_links (license_id, region_id) values (83, 7);
insert into license_links (license_id, region_id) values (84, 7);
insert into license_links (license_id, region_id) values (85, 7);
insert into license_links (license_id, region_id) values (86, 7);
insert into license_links (license_id, region_id) values (87, 7);
insert into license_links (license_id, region_id) values (88, 7);
insert into license_links (license_id, region_id) values (89, 7);
insert into license_links (license_id, region_id) values (90, 7);

-- Unlocked by Quickening 2
-- Ninja swords
insert into license_links (license_id, region_id) values (184, 8);

-- Unlocked by Adrammelech
-- Technicks
insert into license_links (license_id, region_id) values (60, 9);

-- Unlocked by Mateus
-- Technicks
insert into license_links (license_id, region_id) values (56, 10);

-- Unlocked by Cuchulainn
-- White Magicks
insert into license_links (license_id, region_id) values (26, 11);

-- Unlocked by Ultima
-- Phoenix Lore
insert into license_links (license_id, region_id) values (161, 12);
insert into license_links (license_id, region_id) values (162, 12);

-- Unlocked by Exodus
-- Technicks
insert into license_links (license_id, region_id) values (59, 13);

-- Unlocked by Quickening 1
-- Ninja Swords
insert into license_links (license_id, region_id) values (183, 14);

-- Unlocked by Hashmal
-- Technicks
insert into license_links (license_id, region_id) values (63, 15);

-- Unlocked by Zalera
-- HP Plus
insert into license_links (license_id, region_id) values (101, 16);

-- Unlocked by Quickening 3
-- Ninja Swords
insert into license_links (license_id, region_id) values (185, 17);

-- Unlocked by Shemhazai
-- Guns
insert into license_links (license_id, region_id) values (191, 18);
insert into license_links (license_id, region_id) values (192, 18);

-- Unlocked by Quickening 4
-- Ninja Swords
insert into license_links (license_id, region_id) values (186, 19);