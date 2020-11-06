insert into jobs (job_name) values ('Archer'), ('Shikari'), ('Machinist'), ('Monk'), ('Bushi'), ('Red Battlemage'), ('White Mage'), ('Black Mage'), ('Time Battlemage'), ('Uhlan'), ('Knight'), ('Foebreaker');

insert into unlocker_types (unlocker_type) values ('Default'), ('Quickening'), ('Esper');

insert into unlockers (unlocker_type_id, unlocker_name, unlocker_lp_cost) values (1, 'Default', 0), (2, 'Quickening 1', 50), (2, 'Quickening 2', 75), (2, 'Quickening 3', 100), (2, 'Quickening 4', 125), (3, 'Belias', 20), (3, 'Mateus', 30), (3, 'Zalera', 30), (3, 'Adrammelech', 35), (3, 'Cuchulainn', 50), (3, 'Shemhazai', 50), (3, 'Hashmal', 50), (3, 'Exodus', 65), (3, 'Zeromus', 65), (3, 'Famfrit', 100), (3, 'Chaos', 100), (3, 'Ultima', 115), (3, 'Zodiark', 200)

-- insert into quickenings (quickening_name, lp_cost) values ('Quickening 1', 50), ('Quickening 2', 75), ('Quickening 3', 100), ('Quickening 4', 125);

-- insert into espers (esper_name, lp_cost) values ('Belias', 20), ('Mateus', 30), ('Zalera', 30), ('Adrammelech', 35), ('Cuchulainn', 50), ('Shemhazai', 50), ('Hashmal', 50), ('Exodus', 65), ('Zeromus', 65), ('Famfrit', 100), ('Chaos', 100), ('Ultima', 115), ('Zodiark', 200);

insert into license_types (license_type) values ('Essentials'), ('Black Magick'), ('White Magick'), ('Green Magick'), ('Time Magick'), ('Arcane Magick'), ('Technicks'), ('Accessories'), ('Augmentations'), ('Weapons'), ('Armor');

-- Archer regions
-- main region, unlocked by Famfrit, unlocked by Quickening 1, unlocked by Ultima or Zodiark, unlocked by Chaos, unlocked by Shemhazai
insert into regions (job_id, description) values (1, 'Main region'),(1, 'Unlocked by Famfrit'),(1, 'Unlocked by Quickening 1'),(1, 'Unlocked by Ultima or Zodiark'),(1, 'Unlocked by Chaos'),(1, 'Unlocked by Shemhazai');

insert into unlocker_links (region_id, unlocker_id) values (1, 1), (2, 15), (3, 2), (4, 17), (4, 18), (5, 16), (6, 11);

-- Shikari regions
-- main region, unlocked by Quickening 2, unlocked by Adrammelech, unlocked by Mateus, unlocked by Cuchulainn, unlocked by Ultima, unlocked by Exodus, unlocked by Quickening 1, unlocked by Hashmal, unlocked by Zalera, unlocked by Quickening 3, unlocked by Shemhazai, unlocked by Quickening 4
insert into regions (job_id, description) values (2, 'Main region'),(2, 'Unlocked by Quickening 2'),(2, 'Unlocked by Adrammelech'),(2, 'Unlocked by Mateus'),(2, 'Unlocked by Cuchulainn'),(2, 'Unlocked by Ultima'),(2, 'Unlocked by Exodus'),(2, 'Unlocked by Quickening 1'),(2, 'Unlocked by Hashmal'),(2, 'Unlocked by Zalera'),(2, 'Unlocked by Quickening 3'),(2, 'Unlocked by Shemhazai'),(2, 'Unlocked by Quickening 4');

insert into unlocker_links (region_id, unlocker_id) values (7, 1), (8, 3), (9, 9), (10, 7), (11, 10), (12, 17), (13, 13), (14, 2), (15, 12), (16, 8), (17, 4), (18, 11), (19, 5);

-- Machinist regions
-- main region, unlocked by Exodus, unlocked by Chaos, unlocked by Famfrit, unlocked by Zeromus, unlocked by Shemhazai, unlocked by Cuchulainn, unlocked by Zodiark, unlocked by Ultima or Quickening 4
insert into regions (job_id, description) values (3, 'Main region'),(3, 'Unlocked by Exodus'),(3, 'Unlocked by Chaos'),(3, 'Unlocked by Famfrit'),(3, 'Unlocked by Zeromus'),(3, 'Unlocked by Shemhazai'),(3, 'Unlocked by Cuchulainn'),(3, 'Unlocked by Zodiark'),(3, 'Unlocked by Ultima or Quickening 4');

insert into unlocker_links (region_id, unlocker_id) values (20, 1), (21, 13), (22, 16), (23, 15), (24, 14), (25, 11), (26, 10), (27, 18), (28, 17), (28, 5);

-- Monk regions
-- main region, unlocked by Zalera, unlocked by Quickening 2, unlocked by Hashmal, unlocked by Shemhazai, unlocked by Exodus, unlocked by Famfrit, unlocked by Zodiark, unlocked by Ultima, unlocked by Chaos, unlocked by Zeromus, unlocked by Quickening 4
insert into regions (job_id, description) values (4, 'Main region'),(4, 'Unlocked by Zalera'),(4, 'Unlocked by Quickening 2'),(4, 'Unlocked by Hashmal'),(4, 'Unlocked by Shemhazai'),(4, 'Unlocked by Exodus'),(4, 'Unlocked by Famfrit'),(4, 'Unlocked by Zodiark'),(4, 'Unlocked by Ultima'),(4, 'Unlocked by Chaos'),(4, 'Unlocked by Zeromus'),(4, 'Unlocked by Quickening 4');

insert into unlocker_links (region_id, unlocker_id) values(29, 1), (30, 8), (31, 3), (32, 12), (33, 11), (34, 13), (35, 15), (36, 18), (37, 17), (38, 16), (39, 14), (40, 5);

-- Bushi regions
-- main region, unlocked by Belias, unlocked by Adrammelech, unlocked by Zalera, unlocked by Quickening 3, unlocked by Quickening 2, unlocked by Chaos, unlocked by Zodiark, unlocked by Quickening 4, unlocked by Ultima or Cuchulainn, unlocked by Zeromus, unlocked by Exodus, unlocked by Shemhazai
insert into regions (job_id, description) values (5, 'Main region'),(5, 'Unlocked by Belias'),(5, 'Unlocked by Adrammelech'),(5, 'Unlocked by Zalera'),(5, 'Unlocked by Quickening 3'),(5, 'Unlocked by Quickening 2'),(5, 'Unlocked by Chaos'),(5, 'Unlocked by Zodiark'),(5, 'Unlocked by Quickening 4'),(5, 'Unlocked by Ultima or Cuchulainn'),(5, 'Unlocked by Zeromus'),(5, 'Unlocked by Exodus'),(5, 'Unlocked by Shemhazai');

insert into unlocker_links (region_id, unlocker_id) values (41, 1), (42, 6), (43, 9), (44, 8), (45, 4), (46, 3), (47, 16), (48, 18), (49, 5), (50, 17), (50, 10), (51, 14), (52, 13), (53, 11);

-- Red Battlemage regions
-- main region, unlocked by Zeromus, unlocked by Hashmal, unlocked by Quickening 1, unlocked by Shemhazai, unlocked by Quickening 2, unlocked by Exodus, unlocked by Cuchulainn, unlocked by Famfrit, unlocked by Ultima, unlocked by Chaos, unlocked by Zodiark, unlocked by Quickening 4
insert into regions (job_id, description) values (6, 'Main region'),(6, 'Unlocked by Zeromus'),(6, 'Unlocked by Hashmal'),(6, 'Unlocked by Quickening 1'),(6, 'Unlocked by Shemhazai'),(6, 'Unlocked by Quickening 2'),(6, 'Unlocked by Exodus'),(6, 'Unlocked by Cuchulainn'),(6, 'Unlocked by Famfrit'),(6, 'Unlocked by Ultima'),(6, 'Unlocked by Chaos'),(6, 'Unlocked by Zodiark'),(6, 'Unlocked by Quickening 4');

insert into unlocker_links (region_id, unlocker_id) values (54, 1), (55, 14), (56, 12), (57, 2), (58, 11), (59, 3), (60, 13), (61, 10), (62, 15), (63, 17), (64, 16), (65, 18), (66, 5);

-- White Mage regions
-- main region, unlocked by Famfrit, unlocked by Zodiark, unlocked by Zeromus, unlocked by Cuchulainn, unlocked by Quickening 2, unlocked by Shemhazai, unlocked by Chaos, unlocked by Exodus, unlocked by Quickening 3, unlocked by Adrammelech, unlocked by Quickening 1
insert into regions (job_id, description) values (7, 'Main region'),(7, 'Unlocked by Famfrit'),(7, 'Unlocked by Zodiark'),(7, 'Unlocked by Zeromus'),(7, 'Unlocked by Cuchulainn'),(7, 'Unlocked by Quickening 2'),(7, 'Unlocked by Shemhazai'),(7, 'Unlocked by Chaos'),(7, 'Unlocked by Exodus'),(7, 'Unlocked by Quickening 3'),(7, 'Unlocked by Adrammelech'),(7, 'Unlocked by Quickening 1');

insert into unlocker_links (region_id, unlocker_id) values (67, 1), (68, 15), (69, 18), (70, 14), (71, 10), (72, 3), (73, 11), (74, 16), (75, 13), (76, 4), (77, 9), (78, 2);

-- Black Mage regions
-- main region, unlocked by Quickening 4, unlocked by Mateus, unlocked by Quickening 1, unlocked by Adrammelech, unlocked by Zalera, unlocked by Hashmal, unlocked by Shemhazai, unlocked by Exodus, unlocked by Zeromus, unlocked by Famfrit, unlocked by Ultima
insert into regions (job_id, description) values (8, 'Main region'),(8, 'Unlocked by Quickening 4'),(8, 'Unlocked by Mateus'),(8, 'Unlocked by Quickening 1'),(8, 'Unlocked by Adrammelech'),(8, 'Unlocked by Zalera'),(8, 'Unlocked by Hashmal'),(8, 'Unlocked by Shemhazai'),(8, 'Unlocked by Exodus'),(8, 'Unlocked by Zeromus'),(8, 'Unlocked by Famfrit'),(8, 'Unlocked by Ultima');

insert into unlocker_links (region_id, unlocker_id) values (79, 1), (80, 5), (81, 7), (82, 2), (83, 9), (84, 8), (85, 12), (86, 11), (87, 13), (88, 14), (89, 15), (90, 17);

-- Time Battlemage regions
-- main region, unlocked by Famfrit, unlocked by Zeromus, unlocked by Exodus, unlocked by Hashmal, unlocked by Quickening 2, unlocked by Zalera, unlocked by Adrammelech, unlocked by Mateus, unlocked by Chaos, unlocked by Ultima, unlocked by Zodiark
insert into regions (job_id, description) values (9, 'Main region'),(9, 'Unlocked by Famfrit'),(9, 'Unlocked by Zeromus'),(9, 'Unlocked by Exodus'),(9, 'Unlocked by Hashmal'),(9, 'Unlocked by Quickening 2'),(9, 'Unlocked by Zalera'),(9, 'Unlocked by Adrammelech'),(9, 'Unlocked by Mateus'),(9, 'Unlocked by Chaos'),(9, 'Unlocked by Ultima'),(9, 'Unlocked by Zodiark');

insert into unlocker_links (region_id, unlocker_id) values (91, 1), (92, 15), (93, 14), (94, 13), (95, 12), (96, 3), (97, 8), (98, 9), (99, 7), (100, 16), (101, 17), (102, 18);

-- Uhlan regions
-- main region, unlocked by Adrammelech, unlocked by Quickening 3, unlocked by Ultima, unlocked by Chaos, unlocked by Hashmal, unlocked by Famfrit, unlocked by Cuchulainn, unlocked by Mateus
insert into regions (job_id, description) values (10, 'Main region'),(10, 'Unlocked by Adrammelech'),(10, 'Unlocked by Quickening 3'),(10, 'Unlocked by Ultima'),(10, 'Unlocked by Chaos'),(10, 'Unlocked by Hashmal'),(10, 'Unlocked by Famfrit'),(10, 'Unlocked by Cuchulainn'),(10, 'Unlocked by Mateus');

insert into unlocker_links (region_id, unlocker_id) values (103, 1), (104, 9), (105, 4), (106, 17), (107, 16), (108, 12), (109, 15), (110, 10), (111, 7);

-- Knight regions
-- main region, unlocked by Mateus, unlocked by Belias, unlocked by Shemhazai, unlocked by Cuchulainn, unlocked by Exodus, unlocked by Ultima, unlocked by Chaos or Zodiark or Quickening 4, unlocked by Hashmal
insert into regions (job_id, description) values (11, 'Main region'),(11, 'Unlocked by Mateus'),(11, 'Unlocked by Belias'),(11, 'Unlocked by Shemhazai'),(11, 'Unlocked by Cuchulainn'),(11, 'Unlocked by Exodus'),(11, 'Unlocked by Ultima'),(11, 'Unlocked by Chaos or Zodiark or Quickening 4'),(11, 'Unlocked by Hashmal');

insert into unlocker_links (region_id, unlocker_id) values (112, 1), (113, 7), (114, 6), (115, 11), (116, 10), (117, 13), (118, 17), (119, 16), (119, 18), (119, 5), (120, 12);

-- Foebreaker regions
-- main region, unlocked by Quickening 3, unlocked by Cuchulainn, unlocked by Hashmal, unlocked by Belias, unlocked by Ultima, unlocked by Famfrit, unlocked by Zalera, unlocked by Adrammelech, unlocked by Quickening 4, unlocked by Exodus or Zeromus
insert into regions (job_id, description) values (12, 'Main region'),(12, 'Unlocked by Quickening 3'),(12, 'Unlocked by Cuchulainn'),(12, 'Unlocked by Hashmal'),(12, 'Unlocked by Belias'),(12, 'Unlocked by Ultima'),(12, 'Unlocked by Famfrit'),(12, 'Unlocked by Zalera'),(12, 'Unlocked by Adrammelech'),(12, 'Unlocked by Quickening 4'),(12, 'Unlocked by Exodus or Zeromus');

insert into unlocker_links (region_id, unlocker_id) values (121, 1), (122, 4), (123, 10), (124, 12), (125, 6), (126, 17), (127, 15), (128, 8), (129, 9), (130, 5), (131, 13), (131, 14);

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
insert into licenses (license_name, description, lp_cost, license_type_id, subtype) values ('Inquisitor', 'Gain MP after dealing damage', 30, 9, 'Special Combat Modifiers');
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

-- Machinist license links
-- Main region
-- Guns
insert into license_links (license_id, region_id) values (187, 20);
insert into license_links (license_id, region_id) values (188, 20);
insert into license_links (license_id, region_id) values (189, 20);
insert into license_links (license_id, region_id) values (190, 20);
insert into license_links (license_id, region_id) values (191, 20);
insert into license_links (license_id, region_id) values (192, 20);
insert into license_links (license_id, region_id) values (193, 20);

-- Measures
insert into license_links (license_id, region_id) values (194, 20);
insert into license_links (license_id, region_id) values (195, 20);
insert into license_links (license_id, region_id) values (196, 20);
insert into license_links (license_id, region_id) values (197, 20);

-- Augmentations
insert into license_links (license_id, region_id) values (114, 20);
insert into license_links (license_id, region_id) values (115, 20);
insert into license_links (license_id, region_id) values (116, 20);
insert into license_links (license_id, region_id) values (130, 20);
insert into license_links (license_id, region_id) values (131, 20);
insert into license_links (license_id, region_id) values (132, 20);
insert into license_links (license_id, region_id) values (155, 20);
insert into license_links (license_id, region_id) values (156, 20);
insert into license_links (license_id, region_id) values (157, 20);
insert into license_links (license_id, region_id) values (161, 20);
insert into license_links (license_id, region_id) values (164, 20);
insert into license_links (license_id, region_id) values (165, 20);
insert into license_links (license_id, region_id) values (166, 20);
insert into license_links (license_id, region_id) values (158, 20);
insert into license_links (license_id, region_id) values (103, 20);
insert into license_links (license_id, region_id) values (104, 20);
insert into license_links (license_id, region_id) values (106, 20);
insert into license_links (license_id, region_id) values (107, 20);
insert into license_links (license_id, region_id) values (110, 20);
insert into license_links (license_id, region_id) values (149, 20);
insert into license_links (license_id, region_id) values (150, 20);
insert into license_links (license_id, region_id) values (151, 20);

-- Technicks
insert into license_links (license_id, region_id) values (44, 20);
insert into license_links (license_id, region_id) values (45, 20);
insert into license_links (license_id, region_id) values (46, 20);
insert into license_links (license_id, region_id) values (52, 20);
insert into license_links (license_id, region_id) values (56, 20);
insert into license_links (license_id, region_id) values (59, 20);
insert into license_links (license_id, region_id) values (53, 20);
insert into license_links (license_id, region_id) values (49, 20);
insert into license_links (license_id, region_id) values (62, 20);
insert into license_links (license_id, region_id) values (61, 20);

-- HP Plus
insert into license_links (license_id, region_id) values (91, 20);
insert into license_links (license_id, region_id) values (92, 20);
insert into license_links (license_id, region_id) values (93, 20);
insert into license_links (license_id, region_id) values (94, 20);
insert into license_links (license_id, region_id) values (95, 20);
insert into license_links (license_id, region_id) values (96, 20);
insert into license_links (license_id, region_id) values (97, 20);
insert into license_links (license_id, region_id) values (98, 20);

-- Light Armor
insert into license_links (license_id, region_id) values (281, 20);
insert into license_links (license_id, region_id) values (282, 20);
insert into license_links (license_id, region_id) values (283, 20);
insert into license_links (license_id, region_id) values (284, 20);
insert into license_links (license_id, region_id) values (285, 20);
insert into license_links (license_id, region_id) values (286, 20);
insert into license_links (license_id, region_id) values (287, 20);
insert into license_links (license_id, region_id) values (288, 20);
insert into license_links (license_id, region_id) values (289, 20);
insert into license_links (license_id, region_id) values (290, 20);
insert into license_links (license_id, region_id) values (291, 20);
insert into license_links (license_id, region_id) values (292, 20);
insert into license_links (license_id, region_id) values (293, 20);

-- Accessories
insert into license_links (license_id, region_id) values (68, 20);
insert into license_links (license_id, region_id) values (69, 20);
insert into license_links (license_id, region_id) values (70, 20);
insert into license_links (license_id, region_id) values (71, 20);
insert into license_links (license_id, region_id) values (72, 20);
insert into license_links (license_id, region_id) values (73, 20);
insert into license_links (license_id, region_id) values (74, 20);
insert into license_links (license_id, region_id) values (75, 20);
insert into license_links (license_id, region_id) values (76, 20);
insert into license_links (license_id, region_id) values (77, 20);
insert into license_links (license_id, region_id) values (78, 20);
insert into license_links (license_id, region_id) values (79, 20);
insert into license_links (license_id, region_id) values (80, 20);
insert into license_links (license_id, region_id) values (81, 20);
insert into license_links (license_id, region_id) values (82, 20);
insert into license_links (license_id, region_id) values (83, 20);
insert into license_links (license_id, region_id) values (84, 20);
insert into license_links (license_id, region_id) values (85, 20);
insert into license_links (license_id, region_id) values (86, 20);
insert into license_links (license_id, region_id) values (87, 20);
insert into license_links (license_id, region_id) values (88, 20);
insert into license_links (license_id, region_id) values (89, 20);
insert into license_links (license_id, region_id) values (90, 20);

-- Unlocked by Exodus
-- Green Magicks
insert into license_links (license_id, region_id) values (28, 21);

-- Unlocked by Chaos
-- HP Plus
insert into license_links (license_id, region_id) values (100, 22);

-- Unlocked by Famfrit
-- Time Magicks
insert into license_links (license_id, region_id) values (38, 23);
insert into license_links (license_id, region_id) values (39, 23);
insert into license_links (license_id, region_id) values (40, 23);

-- Unlocked by Zeromus
-- Hand-bombs
insert into license_links (license_id, region_id) values (270, 24);

-- Unlocked by Shemhazai
-- Hand-bombs
insert into license_links (license_id, region_id) values (269, 25);

-- Unlocked by Cuchulainn
-- Magick Lore
insert into license_links (license_id, region_id) values (133, 26);

-- Unlocked by Zodiark
-- HP Plus
insert into license_links (license_id, region_id) values (99, 27);

-- Unlocked by Ultima or Quickening 4
-- Magick Lore
insert into license_links (license_id, region_id) values (134, 28);
insert into license_links (license_id, region_id) values (135, 28);
insert into license_links (license_id, region_id) values (136, 28);

-- Monk license links
-- Main region
-- HP Plus
insert into license_links (license_id, region_id) values (91, 29);
insert into license_links (license_id, region_id) values (92, 29);
insert into license_links (license_id, region_id) values (93, 29);
insert into license_links (license_id, region_id) values (94, 29);
insert into license_links (license_id, region_id) values (95, 29);
insert into license_links (license_id, region_id) values (96, 29);
insert into license_links (license_id, region_id) values (97, 29);
insert into license_links (license_id, region_id) values (98, 29);
insert into license_links (license_id, region_id) values (99, 29);
insert into license_links (license_id, region_id) values (100, 29);
insert into license_links (license_id, region_id) values (101, 29);
insert into license_links (license_id, region_id) values (102, 29);

-- Technicks
insert into license_links (license_id, region_id) values (47, 29);
insert into license_links (license_id, region_id) values (45, 29);
insert into license_links (license_id, region_id) values (63, 29);
insert into license_links (license_id, region_id) values (53, 29);
insert into license_links (license_id, region_id) values (58, 29);
insert into license_links (license_id, region_id) values (49, 29);
insert into license_links (license_id, region_id) values (61, 29);
insert into license_links (license_id, region_id) values (64, 29);
insert into license_links (license_id, region_id) values (66, 29);
insert into license_links (license_id, region_id) values (60, 29);

-- Augmentations
insert into license_links (license_id, region_id) values (103, 29);
insert into license_links (license_id, region_id) values (104, 29);
insert into license_links (license_id, region_id) values (106, 29);
insert into license_links (license_id, region_id) values (107, 29);
insert into license_links (license_id, region_id) values (108, 29);
insert into license_links (license_id, region_id) values (110, 29);
insert into license_links (license_id, region_id) values (111, 29);
insert into license_links (license_id, region_id) values (113, 29);
insert into license_links (license_id, region_id) values (114, 29);
insert into license_links (license_id, region_id) values (115, 29);
insert into license_links (license_id, region_id) values (116, 29);
insert into license_links (license_id, region_id) values (117, 29);
insert into license_links (license_id, region_id) values (118, 29);
insert into license_links (license_id, region_id) values (119, 29);
insert into license_links (license_id, region_id) values (120, 29);
insert into license_links (license_id, region_id) values (121, 29);
insert into license_links (license_id, region_id) values (122, 29);
insert into license_links (license_id, region_id) values (123, 29);
insert into license_links (license_id, region_id) values (124, 29);
insert into license_links (license_id, region_id) values (125, 29);
insert into license_links (license_id, region_id) values (126, 29);
insert into license_links (license_id, region_id) values (127, 29);
insert into license_links (license_id, region_id) values (128, 29);
insert into license_links (license_id, region_id) values (129, 29);
insert into license_links (license_id, region_id) values (155, 29);
insert into license_links (license_id, region_id) values (156, 29);
insert into license_links (license_id, region_id) values (161, 29);
insert into license_links (license_id, region_id) values (149, 29);

-- Poles
insert into license_links (license_id, region_id) values (198, 29);
insert into license_links (license_id, region_id) values (199, 29);
insert into license_links (license_id, region_id) values (200, 29);
insert into license_links (license_id, region_id) values (201, 29);
insert into license_links (license_id, region_id) values (202, 29);
insert into license_links (license_id, region_id) values (203, 29);
insert into license_links (license_id, region_id) values (204, 29);
insert into license_links (license_id, region_id) values (205, 29);

-- Light Armor
insert into license_links (license_id, region_id) values (281, 29);
insert into license_links (license_id, region_id) values (282, 29);
insert into license_links (license_id, region_id) values (283, 29);
insert into license_links (license_id, region_id) values (284, 29);
insert into license_links (license_id, region_id) values (285, 29);
insert into license_links (license_id, region_id) values (286, 29);
insert into license_links (license_id, region_id) values (287, 29);
insert into license_links (license_id, region_id) values (288, 29);
insert into license_links (license_id, region_id) values (289, 29);
insert into license_links (license_id, region_id) values (290, 29);
insert into license_links (license_id, region_id) values (291, 29);
insert into license_links (license_id, region_id) values (292, 29);
insert into license_links (license_id, region_id) values (293, 29);

-- Accessories
insert into license_links (license_id, region_id) values (68, 29);
insert into license_links (license_id, region_id) values (69, 29);
insert into license_links (license_id, region_id) values (70, 29);
insert into license_links (license_id, region_id) values (71, 29);
insert into license_links (license_id, region_id) values (72, 29);
insert into license_links (license_id, region_id) values (73, 29);
insert into license_links (license_id, region_id) values (74, 29);
insert into license_links (license_id, region_id) values (75, 29);
insert into license_links (license_id, region_id) values (76, 29);
insert into license_links (license_id, region_id) values (77, 29);
insert into license_links (license_id, region_id) values (78, 29);
insert into license_links (license_id, region_id) values (79, 29);
insert into license_links (license_id, region_id) values (80, 29);
insert into license_links (license_id, region_id) values (81, 29);
insert into license_links (license_id, region_id) values (82, 29);
insert into license_links (license_id, region_id) values (83, 29);
insert into license_links (license_id, region_id) values (84, 29);
insert into license_links (license_id, region_id) values (85, 29);
insert into license_links (license_id, region_id) values (86, 29);
insert into license_links (license_id, region_id) values (87, 29);
insert into license_links (license_id, region_id) values (88, 29);
insert into license_links (license_id, region_id) values (89, 29);
insert into license_links (license_id, region_id) values (90, 29);

-- Unlocked by Zalera
-- Technicks
insert into license_links (license_id, region_id) values (61, 30);

-- Unlocked by Quickening 2
-- White Magicks
insert into license_links (license_id, region_id) values (23, 31);

-- Unlocked by Hashmal
-- White Magicks
insert into license_links (license_id, region_id) values (18, 32);

-- Unlocked by Shemhazai
-- Augmentations
insert into license_links (license_id, region_id) values (157, 33);

-- Unlocked by Exodus
-- Technincks
insert into license_links (license_id, region_id) values (50, 34);

-- Unlocked by Famfrit
-- White Magicks
insert into license_links (license_id, region_id) values (24, 35);

-- Unlocked by Zodiark
-- White Magicks
insert into license_links (license_id, region_id) values (27, 36);

-- Unlocked by Ultima
-- Augmentations
insert into license_links (license_id, region_id) values (150, 37);
insert into license_links (license_id, region_id) values (151, 37);

-- Unlocked by Chaos
-- White Magicks
insert into license_links (license_id, region_id) values (25, 38);
insert into license_links (license_id, region_id) values (26, 38);

-- Unlocked by Zeromus
-- Technicks
insert into license_links (license_id, region_id) values (51, 39);

-- Unlocked by Quickening 4
-- Augmentations
insert into license_links (license_id, region_id) values (162, 40);

-- Bushi license links
-- Main region
-- Katanas
insert into license_links (license_id, region_id) values (206, 41);
insert into license_links (license_id, region_id) values (207, 41);
insert into license_links (license_id, region_id) values (208, 41);
insert into license_links (license_id, region_id) values (209, 41);
insert into license_links (license_id, region_id) values (210, 41);
insert into license_links (license_id, region_id) values (211, 41);
insert into license_links (license_id, region_id) values (212, 41);

-- Augmentations
insert into license_links (license_id, region_id) values (103, 41);
insert into license_links (license_id, region_id) values (104, 41);
insert into license_links (license_id, region_id) values (106, 41);
insert into license_links (license_id, region_id) values (107, 41);
insert into license_links (license_id, region_id) values (112, 41);
insert into license_links (license_id, region_id) values (110, 41);
insert into license_links (license_id, region_id) values (109, 41);
insert into license_links (license_id, region_id) values (114, 41);
insert into license_links (license_id, region_id) values (115, 41);
insert into license_links (license_id, region_id) values (116, 41);
insert into license_links (license_id, region_id) values (117, 41);
insert into license_links (license_id, region_id) values (118, 41);
insert into license_links (license_id, region_id) values (119, 41);
insert into license_links (license_id, region_id) values (130, 41);
insert into license_links (license_id, region_id) values (131, 41);
insert into license_links (license_id, region_id) values (132, 41);
insert into license_links (license_id, region_id) values (133, 41);
insert into license_links (license_id, region_id) values (134, 41);
insert into license_links (license_id, region_id) values (135, 41);
insert into license_links (license_id, region_id) values (136, 41);
insert into license_links (license_id, region_id) values (137, 41);
insert into license_links (license_id, region_id) values (138, 41);
insert into license_links (license_id, region_id) values (139, 41);
insert into license_links (license_id, region_id) values (140, 41);
insert into license_links (license_id, region_id) values (141, 41);
insert into license_links (license_id, region_id) values (164, 41);
insert into license_links (license_id, region_id) values (165, 41);
insert into license_links (license_id, region_id) values (149, 41);
insert into license_links (license_id, region_id) values (150, 41);
insert into license_links (license_id, region_id) values (151, 41);

-- Technicks
insert into license_links (license_id, region_id) values (55, 41);
insert into license_links (license_id, region_id) values (56, 41);
insert into license_links (license_id, region_id) values (63, 41);
insert into license_links (license_id, region_id) values (57, 41);
insert into license_links (license_id, region_id) values (51, 41);
insert into license_links (license_id, region_id) values (60, 41);

-- HP Plus
insert into license_links (license_id, region_id) values (92, 41);
insert into license_links (license_id, region_id) values (93, 41);
insert into license_links (license_id, region_id) values (94, 41);
insert into license_links (license_id, region_id) values (95, 41);
insert into license_links (license_id, region_id) values (96, 41);
insert into license_links (license_id, region_id) values (97, 41);
insert into license_links (license_id, region_id) values (98, 41);

-- Mystic Armor
insert into license_links (license_id, region_id) values (306, 41);
insert into license_links (license_id, region_id) values (307, 41);
insert into license_links (license_id, region_id) values (308, 41);
insert into license_links (license_id, region_id) values (309, 41);
insert into license_links (license_id, region_id) values (310, 41);
insert into license_links (license_id, region_id) values (311, 41);
insert into license_links (license_id, region_id) values (312, 41);
insert into license_links (license_id, region_id) values (313, 41);
insert into license_links (license_id, region_id) values (314, 41);
insert into license_links (license_id, region_id) values (315, 41);
insert into license_links (license_id, region_id) values (316, 41);
insert into license_links (license_id, region_id) values (317, 41);
insert into license_links (license_id, region_id) values (318, 41);

-- Genji Armor
insert into license_links (license_id, region_id) values (319, 41);

-- Accessories
insert into license_links (license_id, region_id) values (68, 41);
insert into license_links (license_id, region_id) values (69, 41);
insert into license_links (license_id, region_id) values (70, 41);
insert into license_links (license_id, region_id) values (71, 41);
insert into license_links (license_id, region_id) values (72, 41);
insert into license_links (license_id, region_id) values (73, 41);
insert into license_links (license_id, region_id) values (74, 41);
insert into license_links (license_id, region_id) values (75, 41);
insert into license_links (license_id, region_id) values (76, 41);
insert into license_links (license_id, region_id) values (77, 41);
insert into license_links (license_id, region_id) values (78, 41);
insert into license_links (license_id, region_id) values (79, 41);
insert into license_links (license_id, region_id) values (80, 41);
insert into license_links (license_id, region_id) values (81, 41);
insert into license_links (license_id, region_id) values (82, 41);
insert into license_links (license_id, region_id) values (83, 41);
insert into license_links (license_id, region_id) values (84, 41);
insert into license_links (license_id, region_id) values (85, 41);
insert into license_links (license_id, region_id) values (86, 41);
insert into license_links (license_id, region_id) values (87, 41);
insert into license_links (license_id, region_id) values (88, 41);
insert into license_links (license_id, region_id) values (89, 41);
insert into license_links (license_id, region_id) values (90, 41);

-- Unlocked by Belias
-- Technicks
insert into license_links (license_id, region_id) values (45, 42);

-- Unlocked by Adrammelech
-- Technicks
insert into license_links (license_id, region_id) values (50, 43);

-- Unlocked by Zalera
-- Swords
insert into license_links (license_id, region_id) values (250, 44);
insert into license_links (license_id, region_id) values (251, 44);

-- Unlocked by Quickening 3
-- Battle Lore
insert into license_links (license_id, region_id) values (120, 45);

-- HP Plus
insert into license_links (license_id, region_id) values (100, 45);

-- Unlocked by Quickening 2
-- Battle Lore
insert into license_links (license_id, region_id) values (121, 46);

-- HP Plus
insert into license_links (license_id, region_id) values (99, 46);

-- Unlocked by Chaos
-- Augmentations
insert into license_links (license_id, region_id) values (113, 47);

-- Unlocked by Zodiark
-- Heavy Armor
insert into license_links (license_id, region_id) values (302, 48);
insert into license_links (license_id, region_id) values (303, 48);
insert into license_links (license_id, region_id) values (304, 48);

-- Unlocked by Quickening 4
-- HP Plus
insert into license_links (license_id, region_id) values (101, 49);

-- Unlocked by Ultima or Cuchulainn
-- Technicks
insert into license_links (license_id, region_id) values (59, 50);

-- Unlocked by Zeromus
-- Magick Lore
insert into license_links (license_id, region_id) values (142, 51);
insert into license_links (license_id, region_id) values (143, 51);

-- Unlocked by Exodus
-- HP Plus
insert into license_links (license_id, region_id) values (102, 52);

-- Unlocked by Shemhazai
-- Augmentations
insert into license_links (license_id, region_id) values (146, 53);

-- Red Battlemage license links
-- Main region
-- Augmentations
insert into license_links (license_id, region_id) values (158, 54);
insert into license_links (license_id, region_id) values (149, 54);
insert into license_links (license_id, region_id) values (103, 54);
insert into license_links (license_id, region_id) values (104, 54);
insert into license_links (license_id, region_id) values (106, 54);
insert into license_links (license_id, region_id) values (107, 54);
insert into license_links (license_id, region_id) values (105, 54);
insert into license_links (license_id, region_id) values (112, 54);
insert into license_links (license_id, region_id) values (109, 54);
insert into license_links (license_id, region_id) values (114, 54);
insert into license_links (license_id, region_id) values (130, 54);
insert into license_links (license_id, region_id) values (131, 54);
insert into license_links (license_id, region_id) values (132, 54);
insert into license_links (license_id, region_id) values (133, 54);
insert into license_links (license_id, region_id) values (134, 54);
insert into license_links (license_id, region_id) values (135, 54);
insert into license_links (license_id, region_id) values (136, 54);
insert into license_links (license_id, region_id) values (137, 54);
insert into license_links (license_id, region_id) values (138, 54);
insert into license_links (license_id, region_id) values (139, 54);
insert into license_links (license_id, region_id) values (140, 54);
insert into license_links (license_id, region_id) values (141, 54);
insert into license_links (license_id, region_id) values (152, 54);
insert into license_links (license_id, region_id) values (153, 54);

-- HP Plus
insert into license_links (license_id, region_id) values (93, 54);
insert into license_links (license_id, region_id) values (95, 54);
insert into license_links (license_id, region_id) values (97, 54);

-- Technicks
insert into license_links (license_id, region_id) values (54, 54);
insert into license_links (license_id, region_id) values (50, 54);

-- Maces
insert into license_links (license_id, region_id) values (213, 54);
insert into license_links (license_id, region_id) values (214, 54);
insert into license_links (license_id, region_id) values (215, 54);
insert into license_links (license_id, region_id) values (216, 54);
insert into license_links (license_id, region_id) values (217, 54);

-- Shields
insert into license_links (license_id, region_id) values (271, 54);
insert into license_links (license_id, region_id) values (272, 54);
insert into license_links (license_id, region_id) values (273, 54);
insert into license_links (license_id, region_id) values (274, 54);
insert into license_links (license_id, region_id) values (275, 54);
insert into license_links (license_id, region_id) values (276, 54);
insert into license_links (license_id, region_id) values (277, 54);
insert into license_links (license_id, region_id) values (278, 54);
insert into license_links (license_id, region_id) values (279, 54);
insert into license_links (license_id, region_id) values (280, 54);

-- White Magicks
insert into license_links (license_id, region_id) values (17, 54);
insert into license_links (license_id, region_id) values (18, 54);
insert into license_links (license_id, region_id) values (19, 54);
insert into license_links (license_id, region_id) values (20, 54);

-- Black Magicks
insert into license_links (license_id, region_id) values (4, 54);
insert into license_links (license_id, region_id) values (5, 54);
insert into license_links (license_id, region_id) values (6, 54);
insert into license_links (license_id, region_id) values (7, 54);
insert into license_links (license_id, region_id) values (10, 54);

-- Time Magicks
insert into license_links (license_id, region_id) values (31, 54);
insert into license_links (license_id, region_id) values (32, 54);
insert into license_links (license_id, region_id) values (33, 54);

-- Arcane Magicks
insert into license_links (license_id, region_id) values (41, 54);
insert into license_links (license_id, region_id) values (42, 54);
insert into license_links (license_id, region_id) values (43, 54);

-- Green Magicks
insert into license_links (license_id, region_id) values (28, 54);
insert into license_links (license_id, region_id) values (29, 54);
insert into license_links (license_id, region_id) values (30, 54);

-- Mystic Armor
insert into license_links (license_id, region_id) values (306, 54);
insert into license_links (license_id, region_id) values (307, 54);
insert into license_links (license_id, region_id) values (308, 54);
insert into license_links (license_id, region_id) values (309, 54);
insert into license_links (license_id, region_id) values (310, 54);
insert into license_links (license_id, region_id) values (311, 54);
insert into license_links (license_id, region_id) values (312, 54);
insert into license_links (license_id, region_id) values (313, 54);
insert into license_links (license_id, region_id) values (314, 54);
insert into license_links (license_id, region_id) values (315, 54);
insert into license_links (license_id, region_id) values (316, 54);
insert into license_links (license_id, region_id) values (317, 54);
insert into license_links (license_id, region_id) values (318, 54);

-- Accessories
insert into license_links (license_id, region_id) values (68, 54);
insert into license_links (license_id, region_id) values (69, 54);
insert into license_links (license_id, region_id) values (70, 54);
insert into license_links (license_id, region_id) values (71, 54);
insert into license_links (license_id, region_id) values (72, 54);
insert into license_links (license_id, region_id) values (73, 54);
insert into license_links (license_id, region_id) values (74, 54);
insert into license_links (license_id, region_id) values (75, 54);
insert into license_links (license_id, region_id) values (76, 54);
insert into license_links (license_id, region_id) values (77, 54);
insert into license_links (license_id, region_id) values (78, 54);
insert into license_links (license_id, region_id) values (79, 54);
insert into license_links (license_id, region_id) values (80, 54);
insert into license_links (license_id, region_id) values (81, 54);
insert into license_links (license_id, region_id) values (82, 54);
insert into license_links (license_id, region_id) values (83, 54);
insert into license_links (license_id, region_id) values (84, 54);
insert into license_links (license_id, region_id) values (85, 54);
insert into license_links (license_id, region_id) values (86, 54);
insert into license_links (license_id, region_id) values (87, 54);
insert into license_links (license_id, region_id) values (88, 54);
insert into license_links (license_id, region_id) values (89, 54);
insert into license_links (license_id, region_id) values (90, 54);

-- Unlocked by Zeromus
-- Augmentations
insert into license_links (license_id, region_id) values (154, 55);

-- Unlocked by Hashmal
-- Technicks
insert into license_links (license_id, region_id) values (44, 56);

-- Unlocked by Quickening 1
-- White Magicks
insert into license_links (license_id, region_id) values (16, 57);

-- Unlocked by Shemhazai
-- White Magicks
insert into license_links (license_id, region_id) values (21, 58);

-- Unlocked by Quickening 2
-- HP Plus
insert into license_links (license_id, region_id) values (96, 59);

-- Unlocked by Exodus
-- Heavy Armor
insert into license_links (license_id, region_id) values (301, 60);
insert into license_links (license_id, region_id) values (302, 60);
insert into license_links (license_id, region_id) values (303, 60);

-- Unlocked by Cuchulainn
-- Black Magicks
insert into license_links (license_id, region_id) values (10, 61);
insert into license_links (license_id, region_id) values (11, 61);

-- Unlocked by Famfrit
-- Battle Lore
insert into license_links (license_id, region_id) values (115, 62);
insert into license_links (license_id, region_id) values (116, 62);

-- Unlocked by Ultima
-- Greatswords
insert into license_links (license_id, region_id) values (252, 63);
insert into license_links (license_id, region_id) values (253, 63);

-- Unlocked by Chaos
-- Greatswords
insert into license_links (license_id, region_id) values (254, 64);

-- Unlocked by Zodiark
-- Greatswords
insert into license_links (license_id, region_id) values (255, 65);

-- Unlocked by Quickening 4
-- HP Plus
insert into license_links (license_id, region_id) values (101, 66);

-- White Mage license links
-- Main Region
-- Rods
insert into license_links (license_id, region_id) values (218, 67);
insert into license_links (license_id, region_id) values (219, 67);
insert into license_links (license_id, region_id) values (220, 67);
insert into license_links (license_id, region_id) values (221, 67);
insert into license_links (license_id, region_id) values (222, 67);

-- Augmentations
insert into license_links (license_id, region_id) values (114, 67);
insert into license_links (license_id, region_id) values (115, 67);
insert into license_links (license_id, region_id) values (116, 67);
insert into license_links (license_id, region_id) values (117, 67);
insert into license_links (license_id, region_id) values (130, 67);
insert into license_links (license_id, region_id) values (131, 67);
insert into license_links (license_id, region_id) values (132, 67);
insert into license_links (license_id, region_id) values (133, 67);
insert into license_links (license_id, region_id) values (134, 67);
insert into license_links (license_id, region_id) values (135, 67);
insert into license_links (license_id, region_id) values (136, 67);
insert into license_links (license_id, region_id) values (137, 67);
insert into license_links (license_id, region_id) values (138, 67);
insert into license_links (license_id, region_id) values (139, 67);
insert into license_links (license_id, region_id) values (140, 67);
insert into license_links (license_id, region_id) values (141, 67);
insert into license_links (license_id, region_id) values (142, 67);
insert into license_links (license_id, region_id) values (143, 67);
insert into license_links (license_id, region_id) values (144, 67);
insert into license_links (license_id, region_id) values (152, 67);
insert into license_links (license_id, region_id) values (153, 67);
insert into license_links (license_id, region_id) values (154, 67);
insert into license_links (license_id, region_id) values (149, 67);
insert into license_links (license_id, region_id) values (150, 67);
insert into license_links (license_id, region_id) values (158, 67);
insert into license_links (license_id, region_id) values (159, 67);
insert into license_links (license_id, region_id) values (103, 67);
insert into license_links (license_id, region_id) values (104, 67);
insert into license_links (license_id, region_id) values (106, 67);
insert into license_links (license_id, region_id) values (107, 67);
insert into license_links (license_id, region_id) values (105, 67);
insert into license_links (license_id, region_id) values (112, 67);
insert into license_links (license_id, region_id) values (109, 67);

-- HP Plus
insert into license_links (license_id, region_id) values (91, 67);
insert into license_links (license_id, region_id) values (92, 67);
insert into license_links (license_id, region_id) values (93, 67);

-- Technicks
insert into license_links (license_id, region_id) values (52, 67);
insert into license_links (license_id, region_id) values (59, 67);
insert into license_links (license_id, region_id) values (53, 67);

-- White Magicks
insert into license_links (license_id, region_id) values (15, 67);
insert into license_links (license_id, region_id) values (16, 67);
insert into license_links (license_id, region_id) values (17, 67);
insert into license_links (license_id, region_id) values (18, 67);
insert into license_links (license_id, region_id) values (19, 67);
insert into license_links (license_id, region_id) values (20, 67);
insert into license_links (license_id, region_id) values (21, 67);
insert into license_links (license_id, region_id) values (22, 67);
insert into license_links (license_id, region_id) values (23, 67);
insert into license_links (license_id, region_id) values (24, 67);
insert into license_links (license_id, region_id) values (25, 67);
insert into license_links (license_id, region_id) values (26, 67);
insert into license_links (license_id, region_id) values (27, 67);

-- Green Magicks
insert into license_links (license_id, region_id) values (28, 67);
insert into license_links (license_id, region_id) values (29, 67);
insert into license_links (license_id, region_id) values (30, 67);

-- Mystic Armor
insert into license_links (license_id, region_id) values (306, 67);
insert into license_links (license_id, region_id) values (307, 67);
insert into license_links (license_id, region_id) values (308, 67);
insert into license_links (license_id, region_id) values (309, 67);
insert into license_links (license_id, region_id) values (310, 67);
insert into license_links (license_id, region_id) values (311, 67);
insert into license_links (license_id, region_id) values (312, 67);
insert into license_links (license_id, region_id) values (313, 67);
insert into license_links (license_id, region_id) values (314, 67);
insert into license_links (license_id, region_id) values (315, 67);
insert into license_links (license_id, region_id) values (316, 67);
insert into license_links (license_id, region_id) values (317, 67);
insert into license_links (license_id, region_id) values (318, 67);

-- Accessories
insert into license_links (license_id, region_id) values (68, 67);
insert into license_links (license_id, region_id) values (69, 67);
insert into license_links (license_id, region_id) values (70, 67);
insert into license_links (license_id, region_id) values (71, 67);
insert into license_links (license_id, region_id) values (72, 67);
insert into license_links (license_id, region_id) values (73, 67);
insert into license_links (license_id, region_id) values (74, 67);
insert into license_links (license_id, region_id) values (75, 67);
insert into license_links (license_id, region_id) values (76, 67);
insert into license_links (license_id, region_id) values (77, 67);
insert into license_links (license_id, region_id) values (78, 67);
insert into license_links (license_id, region_id) values (79, 67);
insert into license_links (license_id, region_id) values (80, 67);
insert into license_links (license_id, region_id) values (81, 67);
insert into license_links (license_id, region_id) values (82, 67);
insert into license_links (license_id, region_id) values (83, 67);
insert into license_links (license_id, region_id) values (84, 67);
insert into license_links (license_id, region_id) values (85, 67);
insert into license_links (license_id, region_id) values (86, 67);
insert into license_links (license_id, region_id) values (87, 67);
insert into license_links (license_id, region_id) values (88, 67);
insert into license_links (license_id, region_id) values (89, 67);
insert into license_links (license_id, region_id) values (90, 67);

-- Unlocked by Famfrit
-- Daggers
insert into license_links (license_id, region_id) values (180, 68);

-- Technicks
insert into license_links (license_id, region_id) values (49, 68);

-- Unlocked by Zodiark
-- Greatswords
insert into license_links (license_id, region_id) values (252, 69);

-- Unlocked by Zeromus
-- HP Plus
insert into license_links (license_id, region_id) values (97, 70);

-- Cuchulainn
-- Technicks
insert into license_links (license_id, region_id) values (45, 71);

-- Unlocked by Quickening 2
-- HP Plus
insert into license_links (license_id, region_id) values (95, 72);

-- Unlocked by Shemhazai
-- HP Plus
insert into license_links (license_id, region_id) values (96, 73);

-- Unlocked by Chaos
-- HP PLus
insert into license_links (license_id, region_id) values (98, 74);

-- Greatswords
insert into license_links (license_id, region_id) values (253, 74);

-- Unlocked by Exodus
-- Battle Lore
insert into license_links (license_id, region_id) values (119, 75);

-- Unlocked by Quickening 3
-- Battle Lore
insert into license_links (license_id, region_id) values (118, 76);

-- Unlocked by Adrammelech
-- Battle Lore
insert into license_links (license_id, region_id) values (120, 77);

-- Technicks
insert into license_links (license_id, region_id) values (50, 77);

-- Unlocked by Quickening 1
-- HP Plus
insert into license_links (license_id, region_id) values (94, 78);

-- Black Mage license links
-- Main Region
-- Staves
insert into license_links (license_id, region_id) values (223, 79);
insert into license_links (license_id, region_id) values (224, 79);
insert into license_links (license_id, region_id) values (225, 79);
insert into license_links (license_id, region_id) values (226, 79);
insert into license_links (license_id, region_id) values (227, 79);
insert into license_links (license_id, region_id) values (228, 79);

-- HP Plus
insert into license_links (license_id, region_id) values (94, 79);
insert into license_links (license_id, region_id) values (97, 79);

-- Augmentations
insert into license_links (license_id, region_id) values (130, 79);
insert into license_links (license_id, region_id) values (131, 79);
insert into license_links (license_id, region_id) values (132, 79);
insert into license_links (license_id, region_id) values (133, 79);
insert into license_links (license_id, region_id) values (134, 79);
insert into license_links (license_id, region_id) values (135, 79);
insert into license_links (license_id, region_id) values (136, 79);
insert into license_links (license_id, region_id) values (137, 79);
insert into license_links (license_id, region_id) values (138, 79);
insert into license_links (license_id, region_id) values (139, 79);
insert into license_links (license_id, region_id) values (140, 79);
insert into license_links (license_id, region_id) values (141, 79);
insert into license_links (license_id, region_id) values (142, 79);
insert into license_links (license_id, region_id) values (143, 79);
insert into license_links (license_id, region_id) values (144, 79);
insert into license_links (license_id, region_id) values (145, 79);
insert into license_links (license_id, region_id) values (152, 79);
insert into license_links (license_id, region_id) values (153, 79);
insert into license_links (license_id, region_id) values (154, 79);
insert into license_links (license_id, region_id) values (149, 79);
insert into license_links (license_id, region_id) values (150, 79);
insert into license_links (license_id, region_id) values (158, 79);
insert into license_links (license_id, region_id) values (159, 79);
insert into license_links (license_id, region_id) values (160, 79);
insert into license_links (license_id, region_id) values (103, 79);
insert into license_links (license_id, region_id) values (104, 79);
insert into license_links (license_id, region_id) values (106, 79);
insert into license_links (license_id, region_id) values (107, 79);
insert into license_links (license_id, region_id) values (105, 79);
insert into license_links (license_id, region_id) values (112, 79);
insert into license_links (license_id, region_id) values (109, 79);

-- Technicks
insert into license_links (license_id, region_id) values (52, 79);
insert into license_links (license_id, region_id) values (54, 79);

-- Black Magicks
insert into license_links (license_id, region_id) values (2, 79);
insert into license_links (license_id, region_id) values (3, 79);
insert into license_links (license_id, region_id) values (4, 79);
insert into license_links (license_id, region_id) values (5, 79);
insert into license_links (license_id, region_id) values (6, 79);
insert into license_links (license_id, region_id) values (7, 79);
insert into license_links (license_id, region_id) values (8, 79);
insert into license_links (license_id, region_id) values (9, 79);
insert into license_links (license_id, region_id) values (10, 79);
insert into license_links (license_id, region_id) values (11, 79);
insert into license_links (license_id, region_id) values (12, 79);
insert into license_links (license_id, region_id) values (13, 79);
insert into license_links (license_id, region_id) values (14, 79);

-- Green
insert into license_links (license_id, region_id) values (28, 79);
insert into license_links (license_id, region_id) values (29, 79);
insert into license_links (license_id, region_id) values (30, 79);

-- Mystic Armor
insert into license_links (license_id, region_id) values (306, 79);
insert into license_links (license_id, region_id) values (307, 79);
insert into license_links (license_id, region_id) values (308, 79);
insert into license_links (license_id, region_id) values (309, 79);
insert into license_links (license_id, region_id) values (310, 79);
insert into license_links (license_id, region_id) values (311, 79);
insert into license_links (license_id, region_id) values (312, 79);
insert into license_links (license_id, region_id) values (313, 79);
insert into license_links (license_id, region_id) values (314, 79);
insert into license_links (license_id, region_id) values (315, 79);
insert into license_links (license_id, region_id) values (316, 79);
insert into license_links (license_id, region_id) values (317, 79);
insert into license_links (license_id, region_id) values (318, 79);

-- Accessories
insert into license_links (license_id, region_id) values (68, 79);
insert into license_links (license_id, region_id) values (69, 79);
insert into license_links (license_id, region_id) values (70, 79);
insert into license_links (license_id, region_id) values (71, 79);
insert into license_links (license_id, region_id) values (72, 79);
insert into license_links (license_id, region_id) values (73, 79);
insert into license_links (license_id, region_id) values (74, 79);
insert into license_links (license_id, region_id) values (75, 79);
insert into license_links (license_id, region_id) values (76, 79);
insert into license_links (license_id, region_id) values (77, 79);
insert into license_links (license_id, region_id) values (78, 79);
insert into license_links (license_id, region_id) values (79, 79);
insert into license_links (license_id, region_id) values (80, 79);
insert into license_links (license_id, region_id) values (81, 79);
insert into license_links (license_id, region_id) values (82, 79);
insert into license_links (license_id, region_id) values (83, 79);
insert into license_links (license_id, region_id) values (84, 79);
insert into license_links (license_id, region_id) values (85, 79);
insert into license_links (license_id, region_id) values (86, 79);
insert into license_links (license_id, region_id) values (87, 79);
insert into license_links (license_id, region_id) values (88, 79);
insert into license_links (license_id, region_id) values (89, 79);
insert into license_links (license_id, region_id) values (90, 79);

-- Unlocked by Quickening 4
-- HP Plus
insert into license_links (license_id, region_id) values (100, 80);

-- Unlocked by Mateus
-- Hand-bombs
insert into license_links (license_id, region_id) values (269, 81);

-- Unlocked by Quickening 1
-- HP Plus
insert into license_links (license_id, region_id) values (91, 82);

-- Unlocked by Adrammelech
-- Hand-bombs
insert into license_links (license_id, region_id) values (268, 83);

-- Unlocked by Zalera
-- Technicks
insert into license_links (license_id, region_id) values (44, 84);
insert into license_links (license_id, region_id) values (46, 84);

-- Unlocked by Hashmal
-- Hand-bombs
insert into license_links (license_id, region_id) values (270, 85);

-- Unlocked by Shemhazai
-- Heavy Armor
insert into license_links (license_id, region_id) values (300, 86);

-- Unlocked by Exodus
-- Heavy Armor
insert into license_links (license_id, region_id) values (301, 87);

-- Unlocked by Zeromus
-- Heavy Armor
insert into license_links (license_id, region_id) values (302, 88);

-- Unlocked by Famfrit
-- HP Plus
insert into license_links (license_id, region_id) values (95, 89);
insert into license_links (license_id, region_id) values (96, 89);
insert into license_links (license_id, region_id) values (98, 89);

-- Unlocked by Ultima
-- Technicks
insert into license_links (license_id, region_id) values (48, 90);

-- Time Battlemage license links
-- Main Region
-- Crossbows
insert into license_links (license_id, region_id) values (229, 91);
insert into license_links (license_id, region_id) values (230, 91);
insert into license_links (license_id, region_id) values (231, 91);
insert into license_links (license_id, region_id) values (232, 91);

-- Augmentations
insert into license_links (license_id, region_id) values (114, 91);
insert into license_links (license_id, region_id) values (115, 91);
insert into license_links (license_id, region_id) values (116, 91);
insert into license_links (license_id, region_id) values (117, 91);
insert into license_links (license_id, region_id) values (118, 91);
insert into license_links (license_id, region_id) values (119, 91);
insert into license_links (license_id, region_id) values (120, 91);
insert into license_links (license_id, region_id) values (121, 91);
insert into license_links (license_id, region_id) values (122, 91);
insert into license_links (license_id, region_id) values (130, 91);
insert into license_links (license_id, region_id) values (131, 91);
insert into license_links (license_id, region_id) values (132, 91);
insert into license_links (license_id, region_id) values (133, 91);
insert into license_links (license_id, region_id) values (134, 91);
insert into license_links (license_id, region_id) values (135, 91);
insert into license_links (license_id, region_id) values (136, 91);
insert into license_links (license_id, region_id) values (137, 91);
insert into license_links (license_id, region_id) values (138, 91);
insert into license_links (license_id, region_id) values (139, 91);
insert into license_links (license_id, region_id) values (152, 91);
insert into license_links (license_id, region_id) values (153, 91);
insert into license_links (license_id, region_id) values (149, 91);
insert into license_links (license_id, region_id) values (150, 91);
insert into license_links (license_id, region_id) values (151, 91);
insert into license_links (license_id, region_id) values (164, 91);
insert into license_links (license_id, region_id) values (165, 91);
insert into license_links (license_id, region_id) values (158, 91);
insert into license_links (license_id, region_id) values (159, 91);
insert into license_links (license_id, region_id) values (103, 91);
insert into license_links (license_id, region_id) values (104, 91);
insert into license_links (license_id, region_id) values (106, 91);
insert into license_links (license_id, region_id) values (107, 91);
insert into license_links (license_id, region_id) values (105, 91);
insert into license_links (license_id, region_id) values (112, 91);
insert into license_links (license_id, region_id) values (109, 91);
insert into license_links (license_id, region_id) values (110, 91);

-- Technicks
insert into license_links (license_id, region_id) values (46, 91);
insert into license_links (license_id, region_id) values (54, 91);
insert into license_links (license_id, region_id) values (59, 91);
insert into license_links (license_id, region_id) values (49, 91);
insert into license_links (license_id, region_id) values (62, 91);

-- HP Plus
insert into license_links (license_id, region_id) values (93, 91);
insert into license_links (license_id, region_id) values (95, 91);

-- Time Magicks
insert into license_links (license_id, region_id) values (31, 91);
insert into license_links (license_id, region_id) values (32, 91);
insert into license_links (license_id, region_id) values (33, 91);
insert into license_links (license_id, region_id) values (34, 91);
insert into license_links (license_id, region_id) values (35, 91);
insert into license_links (license_id, region_id) values (36, 91);
insert into license_links (license_id, region_id) values (37, 91);
insert into license_links (license_id, region_id) values (38, 91);
insert into license_links (license_id, region_id) values (39, 91);
insert into license_links (license_id, region_id) values (40, 91);

-- Green Magicks
insert into license_links (license_id, region_id) values (28, 91);
insert into license_links (license_id, region_id) values (29, 91);
insert into license_links (license_id, region_id) values (30, 91);

-- Heavy Armor
insert into license_links (license_id, region_id) values (294, 91);
insert into license_links (license_id, region_id) values (295, 91);
insert into license_links (license_id, region_id) values (296, 91);
insert into license_links (license_id, region_id) values (297, 91);
insert into license_links (license_id, region_id) values (298, 91);
insert into license_links (license_id, region_id) values (299, 91);
insert into license_links (license_id, region_id) values (300, 91);
insert into license_links (license_id, region_id) values (301, 91);
insert into license_links (license_id, region_id) values (302, 91);
insert into license_links (license_id, region_id) values (303, 91);
insert into license_links (license_id, region_id) values (304, 91);
insert into license_links (license_id, region_id) values (305, 91);

-- Accessories
insert into license_links (license_id, region_id) values (68, 91);
insert into license_links (license_id, region_id) values (69, 91);
insert into license_links (license_id, region_id) values (70, 91);
insert into license_links (license_id, region_id) values (71, 91);
insert into license_links (license_id, region_id) values (72, 91);
insert into license_links (license_id, region_id) values (73, 91);
insert into license_links (license_id, region_id) values (74, 91);
insert into license_links (license_id, region_id) values (75, 91);
insert into license_links (license_id, region_id) values (76, 91);
insert into license_links (license_id, region_id) values (77, 91);
insert into license_links (license_id, region_id) values (78, 91);
insert into license_links (license_id, region_id) values (79, 91);
insert into license_links (license_id, region_id) values (80, 91);
insert into license_links (license_id, region_id) values (81, 91);
insert into license_links (license_id, region_id) values (82, 91);
insert into license_links (license_id, region_id) values (83, 91);
insert into license_links (license_id, region_id) values (84, 91);
insert into license_links (license_id, region_id) values (85, 91);
insert into license_links (license_id, region_id) values (86, 91);
insert into license_links (license_id, region_id) values (87, 91);
insert into license_links (license_id, region_id) values (88, 91);
insert into license_links (license_id, region_id) values (89, 91);
insert into license_links (license_id, region_id) values (90, 91);

-- Unlocked by Famfrit
-- Battle Lore
insert into license_links (license_id, region_id) values (124, 92);

-- Unlocked by Zeromus
-- Technicks
insert into license_links (license_id, region_id) values (65, 93);
insert into license_links (license_id, region_id) values (67, 93);

-- Unlocked by Exodus
-- Battle Lore
insert into license_links (license_id, region_id) values (123, 94);

-- Unlocked by Hashmal
-- Channeling
insert into license_links (license_id, region_id) values (154, 95);

-- Unlocked by Quickening 2
-- HP Plus
insert into license_links (license_id, region_id) values (94, 96);

-- Unlocked by Zalera
-- Ether Lore
insert into license_links (license_id, region_id) values (160, 97);

-- Unlocked by Adrammelech
-- White Magicks
insert into license_links (license_id, region_id) values (18, 98);

-- Unlocked by Mateus
-- HP Plus
insert into license_links (license_id, region_id) values (96, 99);

-- Unlocked by Chaos
-- HP Plus
insert into license_links (license_id, region_id) values (97, 100);

-- Unlocked by Ultima
-- Swords
insert into license_links (license_id, region_id) values (247, 101);
insert into license_links (license_id, region_id) values (248, 101);

-- Unlocked by Zodiark
-- Swords
insert into license_links (license_id, region_id) values (249, 102);

-- Uhlan license links
-- Main region
-- Spears
insert into license_links (license_id, region_id) values (233, 103);
insert into license_links (license_id, region_id) values (234, 103);
insert into license_links (license_id, region_id) values (235, 103);
insert into license_links (license_id, region_id) values (236, 103);
insert into license_links (license_id, region_id) values (237, 103);
insert into license_links (license_id, region_id) values (238, 103);
insert into license_links (license_id, region_id) values (239, 103);
insert into license_links (license_id, region_id) values (240, 103);

-- Augmentations
insert into license_links (license_id, region_id) values (155, 103);
insert into license_links (license_id, region_id) values (156, 103);
insert into license_links (license_id, region_id) values (161, 103);
insert into license_links (license_id, region_id) values (162, 103);
insert into license_links (license_id, region_id) values (164, 103);
insert into license_links (license_id, region_id) values (166, 103);
insert into license_links (license_id, region_id) values (149, 103);
insert into license_links (license_id, region_id) values (150, 103);
insert into license_links (license_id, region_id) values (103, 103);
insert into license_links (license_id, region_id) values (104, 103);
insert into license_links (license_id, region_id) values (106, 103);
insert into license_links (license_id, region_id) values (107, 103);
insert into license_links (license_id, region_id) values (110, 103);
insert into license_links (license_id, region_id) values (108, 103);
insert into license_links (license_id, region_id) values (111, 103);
insert into license_links (license_id, region_id) values (114, 103);
insert into license_links (license_id, region_id) values (115, 103);
insert into license_links (license_id, region_id) values (116, 103);
insert into license_links (license_id, region_id) values (117, 103);
insert into license_links (license_id, region_id) values (118, 103);
insert into license_links (license_id, region_id) values (119, 103);
insert into license_links (license_id, region_id) values (120, 103);
insert into license_links (license_id, region_id) values (121, 103);
insert into license_links (license_id, region_id) values (122, 103);
insert into license_links (license_id, region_id) values (123, 103);
insert into license_links (license_id, region_id) values (124, 103);
insert into license_links (license_id, region_id) values (125, 103);
insert into license_links (license_id, region_id) values (126, 103);
insert into license_links (license_id, region_id) values (130, 103);
insert into license_links (license_id, region_id) values (131, 103);
insert into license_links (license_id, region_id) values (132, 103);
insert into license_links (license_id, region_id) values (133, 103);

-- Technicks
insert into license_links (license_id, region_id) values (47, 103);
insert into license_links (license_id, region_id) values (46, 103);
insert into license_links (license_id, region_id) values (52, 103);
insert into license_links (license_id, region_id) values (55, 103);
insert into license_links (license_id, region_id) values (50, 103);
insert into license_links (license_id, region_id) values (53, 103);
insert into license_links (license_id, region_id) values (58, 103);
insert into license_links (license_id, region_id) values (60, 103);

-- HP Plus
insert into license_links (license_id, region_id) values (91, 103);
insert into license_links (license_id, region_id) values (92, 103);
insert into license_links (license_id, region_id) values (93, 103);
insert into license_links (license_id, region_id) values (94, 103);
insert into license_links (license_id, region_id) values (95, 103);
insert into license_links (license_id, region_id) values (96, 103);
insert into license_links (license_id, region_id) values (97, 103);
insert into license_links (license_id, region_id) values (98, 103);
insert into license_links (license_id, region_id) values (99, 103);

-- Heavy Armor
insert into license_links (license_id, region_id) values (294, 103);
insert into license_links (license_id, region_id) values (295, 103);
insert into license_links (license_id, region_id) values (296, 103);
insert into license_links (license_id, region_id) values (297, 103);
insert into license_links (license_id, region_id) values (298, 103);
insert into license_links (license_id, region_id) values (299, 103);
insert into license_links (license_id, region_id) values (300, 103);
insert into license_links (license_id, region_id) values (301, 103);
insert into license_links (license_id, region_id) values (302, 103);
insert into license_links (license_id, region_id) values (303, 103);
insert into license_links (license_id, region_id) values (304, 103);
insert into license_links (license_id, region_id) values (305, 103);

-- Accessories
insert into license_links (license_id, region_id) values (68, 103);
insert into license_links (license_id, region_id) values (69, 103);
insert into license_links (license_id, region_id) values (70, 103);
insert into license_links (license_id, region_id) values (71, 103);
insert into license_links (license_id, region_id) values (72, 103);
insert into license_links (license_id, region_id) values (73, 103);
insert into license_links (license_id, region_id) values (74, 103);
insert into license_links (license_id, region_id) values (75, 103);
insert into license_links (license_id, region_id) values (76, 103);
insert into license_links (license_id, region_id) values (77, 103);
insert into license_links (license_id, region_id) values (78, 103);
insert into license_links (license_id, region_id) values (79, 103);
insert into license_links (license_id, region_id) values (80, 103);
insert into license_links (license_id, region_id) values (81, 103);
insert into license_links (license_id, region_id) values (82, 103);
insert into license_links (license_id, region_id) values (83, 103);
insert into license_links (license_id, region_id) values (84, 103);
insert into license_links (license_id, region_id) values (85, 103);
insert into license_links (license_id, region_id) values (86, 103);
insert into license_links (license_id, region_id) values (87, 103);
insert into license_links (license_id, region_id) values (88, 103);
insert into license_links (license_id, region_id) values (89, 103);
insert into license_links (license_id, region_id) values (90, 103);

-- Unlocked by Adrammelech
-- Battle Lore
insert into license_links (license_id, region_id) values (127, 104);

-- Unlocked by Quickening 3
-- Black Magicks
insert into license_links (license_id, region_id) values (6, 105);
insert into license_links (license_id, region_id) values (7, 105);

-- Unlocked by Ultima
-- Technicks
insert into license_links (license_id, region_id) values (66, 106);

-- Unlocked by Chaos
-- Black Magicks
insert into license_links (license_id, region_id) values (8, 107);
insert into license_links (license_id, region_id) values (9, 107);

-- Unlocked by Hashmal
-- Technicks
insert into license_links (license_id, region_id) values (63, 108);

-- Unlocked by Famfrit
-- Potion Lore
insert into license_links (license_id, region_id) values (157, 109);

-- Unlocked by Cuchulainn
-- Technicks
insert into license_links (license_id, region_id) values (64, 110);

-- Unlocked by Mateus
-- Magick Lore
insert into license_links (license_id, region_id) values (134, 111);
insert into license_links (license_id, region_id) values (135, 111);

-- Knight license links
-- Main region
-- Swords
insert into license_links (license_id, region_id) values (241, 112);
insert into license_links (license_id, region_id) values (242, 112);
insert into license_links (license_id, region_id) values (243, 112);
insert into license_links (license_id, region_id) values (244, 112);
insert into license_links (license_id, region_id) values (245, 112);
insert into license_links (license_id, region_id) values (246, 112);
insert into license_links (license_id, region_id) values (247, 112);
insert into license_links (license_id, region_id) values (248, 112);
insert into license_links (license_id, region_id) values (249, 112);
insert into license_links (license_id, region_id) values (250, 112);
insert into license_links (license_id, region_id) values (251, 112);

-- Greatswords
insert into license_links (license_id, region_id) values (252, 112);
insert into license_links (license_id, region_id) values (253, 112);
insert into license_links (license_id, region_id) values (254, 112);
insert into license_links (license_id, region_id) values (255, 112);
insert into license_links (license_id, region_id) values (256, 112);
insert into license_links (license_id, region_id) values (258, 112);

-- Shields
insert into license_links (license_id, region_id) values (271, 112);
insert into license_links (license_id, region_id) values (272, 112);
insert into license_links (license_id, region_id) values (273, 112);
insert into license_links (license_id, region_id) values (274, 112);
insert into license_links (license_id, region_id) values (275, 112);
insert into license_links (license_id, region_id) values (276, 112);
insert into license_links (license_id, region_id) values (277, 112);
insert into license_links (license_id, region_id) values (278, 112);
insert into license_links (license_id, region_id) values (279, 112);
insert into license_links (license_id, region_id) values (280, 112);

-- HP Plus
insert into license_links (license_id, region_id) values (91, 112);
insert into license_links (license_id, region_id) values (92, 112);
insert into license_links (license_id, region_id) values (93, 112);
insert into license_links (license_id, region_id) values (94, 112);
insert into license_links (license_id, region_id) values (95, 112);
insert into license_links (license_id, region_id) values (96, 112);
insert into license_links (license_id, region_id) values (97, 112);
insert into license_links (license_id, region_id) values (98, 112);

-- Technicks
insert into license_links (license_id, region_id) values (47, 112);
insert into license_links (license_id, region_id) values (55, 112);
insert into license_links (license_id, region_id) values (50, 112);
insert into license_links (license_id, region_id) values (51, 112);

-- Augmentations
insert into license_links (license_id, region_id) values (114, 112);
insert into license_links (license_id, region_id) values (115, 112);
insert into license_links (license_id, region_id) values (116, 112);
insert into license_links (license_id, region_id) values (117, 112);
insert into license_links (license_id, region_id) values (118, 112);
insert into license_links (license_id, region_id) values (119, 112);
insert into license_links (license_id, region_id) values (120, 112);
insert into license_links (license_id, region_id) values (121, 112);
insert into license_links (license_id, region_id) values (122, 112);
insert into license_links (license_id, region_id) values (123, 112);
insert into license_links (license_id, region_id) values (149, 112);
insert into license_links (license_id, region_id) values (146, 112);
insert into license_links (license_id, region_id) values (147, 112);
insert into license_links (license_id, region_id) values (148, 112);
insert into license_links (license_id, region_id) values (103, 112);
insert into license_links (license_id, region_id) values (104, 112);
insert into license_links (license_id, region_id) values (106, 112);
insert into license_links (license_id, region_id) values (107, 112);
insert into license_links (license_id, region_id) values (110, 112);
insert into license_links (license_id, region_id) values (108, 112);
insert into license_links (license_id, region_id) values (111, 112);

-- Heavy Armor
insert into license_links (license_id, region_id) values (294, 112);
insert into license_links (license_id, region_id) values (295, 112);
insert into license_links (license_id, region_id) values (296, 112);
insert into license_links (license_id, region_id) values (297, 112);
insert into license_links (license_id, region_id) values (298, 112);
insert into license_links (license_id, region_id) values (299, 112);
insert into license_links (license_id, region_id) values (300, 112);
insert into license_links (license_id, region_id) values (301, 112);
insert into license_links (license_id, region_id) values (302, 112);
insert into license_links (license_id, region_id) values (303, 112);
insert into license_links (license_id, region_id) values (304, 112);
insert into license_links (license_id, region_id) values (305, 112);

-- Genji Armor
insert into license_links (license_id, region_id) values (319, 112);

-- Accessories
insert into license_links (license_id, region_id) values (68, 112);
insert into license_links (license_id, region_id) values (69, 112);
insert into license_links (license_id, region_id) values (70, 112);
insert into license_links (license_id, region_id) values (71, 112);
insert into license_links (license_id, region_id) values (72, 112);
insert into license_links (license_id, region_id) values (73, 112);
insert into license_links (license_id, region_id) values (74, 112);
insert into license_links (license_id, region_id) values (75, 112);
insert into license_links (license_id, region_id) values (76, 112);
insert into license_links (license_id, region_id) values (77, 112);
insert into license_links (license_id, region_id) values (78, 112);
insert into license_links (license_id, region_id) values (79, 112);
insert into license_links (license_id, region_id) values (80, 112);
insert into license_links (license_id, region_id) values (81, 112);
insert into license_links (license_id, region_id) values (82, 112);
insert into license_links (license_id, region_id) values (83, 112);
insert into license_links (license_id, region_id) values (84, 112);
insert into license_links (license_id, region_id) values (85, 112);
insert into license_links (license_id, region_id) values (86, 112);
insert into license_links (license_id, region_id) values (87, 112);
insert into license_links (license_id, region_id) values (88, 112);
insert into license_links (license_id, region_id) values (89, 112);
insert into license_links (license_id, region_id) values (90, 112);

-- Unlocked by Mateus
-- White Magicks
insert into license_links (license_id, region_id) values (20, 113);
insert into license_links (license_id, region_id) values (21, 113);

-- Unlocked by Belias
-- Potion Lore
insert into license_links (license_id, region_id) values (155, 114);

-- Unlocked by Shemhazai
-- Potion Lore
insert into license_links (license_id, region_id) values (156, 115);

-- Unlocked by Cuchulainn
-- Battle Lore
insert into license_links (license_id, region_id) values (124, 116);

-- Unlocked by Exodus
-- HP Plus
insert into license_links (license_id, region_id) values (99, 117);

-- Unlocked by Ultima
-- Battle Lore
insert into license_links (license_id, region_id) values (125, 118);

-- Technicks
insert into license_links (license_id, region_id) values (48, 118);

-- Unlocked by Chaos or Zodiark or Quickening 4
-- HP Plus
insert into license_links (license_id, region_id) values (100, 119);

-- Technicks
insert into license_links (license_id, region_id) values (58, 119);

-- Greatswords
insert into license_links (license_id, region_id) values (257, 119);

-- Unlocked by Hashmal
-- White Magicks
insert into license_links (license_id, region_id) values (22, 120);
insert into license_links (license_id, region_id) values (23, 120);

-- Foebreaker license links
-- Main region
-- Axes & Hammers
insert into license_links (license_id, region_id) values (259, 121);
insert into license_links (license_id, region_id) values (260, 121);
insert into license_links (license_id, region_id) values (261, 121);
insert into license_links (license_id, region_id) values (262, 121);
insert into license_links (license_id, region_id) values (263, 121);
insert into license_links (license_id, region_id) values (264, 121);
insert into license_links (license_id, region_id) values (265, 121);
insert into license_links (license_id, region_id) values (266, 121);

-- Hand-bombs
insert into license_links (license_id, region_id) values (267, 121);
insert into license_links (license_id, region_id) values (268, 121);
insert into license_links (license_id, region_id) values (269, 121);
insert into license_links (license_id, region_id) values (270, 121);

-- Shields
insert into license_links (license_id, region_id) values (271, 121);
insert into license_links (license_id, region_id) values (272, 121);
insert into license_links (license_id, region_id) values (273, 121);
insert into license_links (license_id, region_id) values (274, 121);
insert into license_links (license_id, region_id) values (275, 121);
insert into license_links (license_id, region_id) values (276, 121);
insert into license_links (license_id, region_id) values (277, 121);
insert into license_links (license_id, region_id) values (278, 121);
insert into license_links (license_id, region_id) values (279, 121);
insert into license_links (license_id, region_id) values (280, 121);

-- HP Plus
insert into license_links (license_id, region_id) values (91, 121);
insert into license_links (license_id, region_id) values (92, 121);
insert into license_links (license_id, region_id) values (93, 121);
insert into license_links (license_id, region_id) values (94, 121);
insert into license_links (license_id, region_id) values (95, 121);
insert into license_links (license_id, region_id) values (96, 121);
insert into license_links (license_id, region_id) values (97, 121);
insert into license_links (license_id, region_id) values (98, 121);
insert into license_links (license_id, region_id) values (99, 121);

-- Technicks
insert into license_links (license_id, region_id) values (55, 121);
insert into license_links (license_id, region_id) values (51, 121);
insert into license_links (license_id, region_id) values (64, 121);
insert into license_links (license_id, region_id) values (65, 121);
insert into license_links (license_id, region_id) values (66, 121);
insert into license_links (license_id, region_id) values (67, 121);

-- Augmentations
insert into license_links (license_id, region_id) values (114, 121);
insert into license_links (license_id, region_id) values (115, 121);
insert into license_links (license_id, region_id) values (116, 121);
insert into license_links (license_id, region_id) values (117, 121);
insert into license_links (license_id, region_id) values (118, 121);
insert into license_links (license_id, region_id) values (119, 121);
insert into license_links (license_id, region_id) values (120, 121);
insert into license_links (license_id, region_id) values (121, 121);
insert into license_links (license_id, region_id) values (122, 121);
insert into license_links (license_id, region_id) values (123, 121);
insert into license_links (license_id, region_id) values (124, 121);
insert into license_links (license_id, region_id) values (149, 121);
insert into license_links (license_id, region_id) values (146, 121);
insert into license_links (license_id, region_id) values (147, 121);
insert into license_links (license_id, region_id) values (148, 121);
insert into license_links (license_id, region_id) values (103, 121);
insert into license_links (license_id, region_id) values (104, 121);
insert into license_links (license_id, region_id) values (106, 121);
insert into license_links (license_id, region_id) values (107, 121);
insert into license_links (license_id, region_id) values (110, 121);
insert into license_links (license_id, region_id) values (108, 121);
insert into license_links (license_id, region_id) values (111, 121);

-- Heavy Armor
insert into license_links (license_id, region_id) values (294, 121);
insert into license_links (license_id, region_id) values (295, 121);
insert into license_links (license_id, region_id) values (296, 121);
insert into license_links (license_id, region_id) values (297, 121);
insert into license_links (license_id, region_id) values (298, 121);
insert into license_links (license_id, region_id) values (299, 121);
insert into license_links (license_id, region_id) values (300, 121);
insert into license_links (license_id, region_id) values (301, 121);
insert into license_links (license_id, region_id) values (302, 121);
insert into license_links (license_id, region_id) values (303, 121);
insert into license_links (license_id, region_id) values (304, 121);
insert into license_links (license_id, region_id) values (305, 121);

-- Genji Armor
insert into license_links (license_id, region_id) values (319, 121);

-- Accessories
insert into license_links (license_id, region_id) values (68, 121);
insert into license_links (license_id, region_id) values (69, 121);
insert into license_links (license_id, region_id) values (70, 121);
insert into license_links (license_id, region_id) values (71, 121);
insert into license_links (license_id, region_id) values (72, 121);
insert into license_links (license_id, region_id) values (73, 121);
insert into license_links (license_id, region_id) values (74, 121);
insert into license_links (license_id, region_id) values (75, 121);
insert into license_links (license_id, region_id) values (76, 121);
insert into license_links (license_id, region_id) values (77, 121);
insert into license_links (license_id, region_id) values (78, 121);
insert into license_links (license_id, region_id) values (79, 121);
insert into license_links (license_id, region_id) values (80, 121);
insert into license_links (license_id, region_id) values (81, 121);
insert into license_links (license_id, region_id) values (82, 121);
insert into license_links (license_id, region_id) values (83, 121);
insert into license_links (license_id, region_id) values (84, 121);
insert into license_links (license_id, region_id) values (85, 121);
insert into license_links (license_id, region_id) values (86, 121);
insert into license_links (license_id, region_id) values (87, 121);
insert into license_links (license_id, region_id) values (88, 121);
insert into license_links (license_id, region_id) values (89, 121);
insert into license_links (license_id, region_id) values (90, 121);

-- Unlocked by Quickening 3
-- HP Plus
insert into license_links (license_id, region_id) values (100, 122);

-- Unlocked by Cuchulainn
-- Technicks
insert into license_links (license_id, region_id) values (60, 123);

-- Unlocked by Hashmal
-- Swiftness
insert into license_links (license_id, region_id) values (150, 124);

-- Unlocked by Belias
-- Technicks
insert into license_links (license_id, region_id) values (62, 125);

-- Unlocked by Ultima
-- Swiftness
insert into license_links (license_id, region_id) values (151, 126);

-- Unlocked by Famfrit
-- Magick Lore
insert into license_links (license_id, region_id) values (134, 127);

-- Unlocked by Zalera
-- Technicks
insert into license_links (license_id, region_id) values (61, 128);

-- Unlocked by Adrammelech
-- Battle Lore
insert into license_links (license_id, region_id) values (125, 129);

-- Unlocked by Quickening 4
-- Battle Lore
insert into license_links (license_id, region_id) values (126, 130);

-- Unlocked by Exodus or Zeromus
-- Magick Lore
insert into license_links (license_id, region_id) values (130, 131);
insert into license_links (license_id, region_id) values (131, 131);
insert into license_links (license_id, region_id) values (132, 131);
insert into license_links (license_id, region_id) values (133, 131);