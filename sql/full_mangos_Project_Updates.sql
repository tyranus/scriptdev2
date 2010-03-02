-- Culling of Stratholme
UPDATE `creature_template` SET `minhealth`='8600', `maxhealth`='8600' WHERE `entry` IN (31127, 31126, 28167, 28169);
UPDATE `creature_template` SET `minhealth`='8600', `maxhealth`='8600' WHERE `entry` IN (10002, 10003, 10004, 10005);
UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35' WHERE `entry` IN (31127, 31126, 28167, 28169);
UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35' WHERE `entry` IN (10002, 10003, 10004, 10005);
UPDATE `creature_template` SET `minhealth`='15000', `maxhealth`='15000' WHERE `entry` IN (27737);
UPDATE `creature_template` SET `minhealth`='25000', `maxhealth`='25000' WHERE `entry` IN (31208);

DELETE FROM `creature` WHERE (`id`=27744);
DELETE FROM `creature` WHERE (`id`=26530);
DELETE FROM `creature` WHERE (`id`=26529);
DELETE FROM `creature` WHERE (`id`=26532);
DELETE FROM `creature` WHERE (`id`=26533);

UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_arthas' WHERE `entry` IN (26499);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='dark_conversion' WHERE `entry` IN (31127, 31126, 28167, 28169);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_patricia' WHERE `entry` IN (31028);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_time_riftCS' WHERE `entry` IN (28409);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='boss_salramm' WHERE `entry` IN (26530);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='boss_meathook' WHERE `entry` IN (26529);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='boss_lord_epoch' WHERE `entry` IN (26532);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='boss_malganis' WHERE `entry` IN (26533);
UPDATE `instance_template` SET `script` = 'instance_culling_of_stratholme' WHERE map=595;
 
UPDATE `creature` SET `spawntimesecs`='3600' WHERE `id` IN (31127, 31126, 28167, 28169);

DELETE FROM `creature` WHERE (`guid`=4456649);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (4456649, 26499, 595, 1, 0, 0, 1920.87, 1287.12, 142.935, 6.25562, 25, 0, 0, 44100, 7988, 0, 0);

DELETE FROM `creature` WHERE (`guid`=4456653);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (4456653, 26497, 595, 1, 0, 0, 1895.48, 1292.66, 143.706, 0.023475, 25, 0, 0, 100800, 88140, 0, 0);

DELETE FROM `gameobject_template` WHERE (`entry`=188686);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES (188686, 0, 7831, 'Doodad_LD_hidden_door_room01', '', 1375, 6553632, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `gameobject_template` WHERE (`entry`=187711);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES (187711, 0, 3631, 'Crusaders\' Square Gate', '', 1375, 6553632, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `gameobject_template` WHERE (`entry`=187723);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES (187723, 0, 3631, 'Crusaders\' Square Gate', '', 1375, 6553632, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

UPDATE `gameobject` SET `state` = '1' WHERE `id` IN (187711);
UPDATE `gameobject` SET `spawntimesecs` = '-604800', `state` = '0' WHERE `id` IN (190663);
UPDATE gameobject_template SET faction = 0 WHERE entry=190663;

-- --  Arachnid Quarter
UPDATE `creature_template` SET `ScriptName`='mob_crypt_guard' WHERE `entry` IN (16573);
UPDATE `creature_template` SET `ScriptName`='mob_worshippers' WHERE `entry`='16506';
UPDATE `creature_template` SET `ScriptName`='mob_webwrap' WHERE `entry`='16486';
UPDATE `creature_template` SET `flags_extra` = '2' WHERE `entry` IN ('16486','30183');
DELETE FROM creature_ai_scripts WHERE creature_id IN (16506);
-- Construct Quarter
UPDATE `creature_template` SET `ScriptName`='boss_grobbulus' WHERE `entry`='15931';
UPDATE `creature_template` SET `ScriptName`='npc_grobbulus_poison_cloud' WHERE `entry`='16363';
UPDATE `creature_template` SET `ScriptName`='boss_thaddius', `unit_flags`=0 WHERE `entry`='15928';
UPDATE `creature_template` SET `ScriptName`='mob_stalagg' WHERE `entry`='15929';
UPDATE `creature_template` SET `ScriptName`='mob_feugen' WHERE `entry`='15930';
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry` = '16027';
UPDATE `creature_template` SET `ScriptName`='mob_zombie_chows' WHERE `entry` = '16360';
-- Military Quarter
UPDATE creature_template SET `attackpower` = `attackpower`*40 WHERE `entry` IN (16061,29940); -- Instructor Razuvious
UPDATE creature_template SET `attackpower` = `attackpower`*12 WHERE `entry` IN (16803,29941); -- Death Knight Understudy
UPDATE `creature_template` SET `spell1`=61696, `spell2`=29060, `spell3`=29061 WHERE `entry` IN (16803);
UPDATE `creature` SET `MovementType`=0, `spawndist`=0 WHERE `id`=16211;
UPDATE `creature_template` SET `ScriptName`='boss_gothik' WHERE `entry`='16060';
UPDATE `creature_template` SET `flags_extra` = '2' WHERE `entry` IN (16697);
UPDATE `gameobject` SET `spawntimesecs`=-604800 WHERE `id` IN ('181366','193426');
-- Plague Quarter
UPDATE `creature_template` SET `ScriptName`='boss_heigan' WHERE `entry`='15936';
UPDATE `creature_template` SET `ScriptName`='npc_loatheb_spores' WHERE `entry`='16286';
-- Frostwyrm Lair
UPDATE `creature_template` SET `ScriptName`='boss_kelthuzad' WHERE `entry`='15990';
UPDATE `creature_template` SET `ScriptName`='mob_shadow_issure', `flags_extra` = '2', `faction_A`=16, `faction_H`=16 WHERE `entry`='16129';
-- Adds
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `entry` IN (16981, 16427, 16429);
DELETE FROM creature_ai_scripts WHERE creature_id IN (16981, 16427, 16429);
INSERT INTO `creature_ai_scripts` VALUES
('1698101', '16981', '0', '0', '100', '3', '10000', '20000', '10000', '20000', '11', '54890', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('1698102', '16981', '0', '0', '100', '5', '10000', '20000', '10000', '20000', '11', '54891', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('1642701', '16427', '6', '0', '100', '3', '0', '0', '0', '0', '11', '28457', '6', '7', '0', '0', '0', '0', '0', '0', '0', '0', 'Soldiers of the Frozen Wastes - Dark Blast'),
('1642702', '16427', '6', '0', '100', '5', '0', '0', '0', '0', '11', '55714', '6', '7', '0', '0', '0', '0', '0', '0', '0', '0', 'Soldiers of the Frozen Wastes - Dark Blast'),
('1642901', '16429', '0', '0', '100', '3', '10000', '20000', '10000', '20000', '11', '28459', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soul Weaver - Wail of Souls'),
('1642902', '16429', '0', '0', '100', '5', '10000', '20000', '10000', '20000', '11', '55765', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Soul Weaver - Wail of Souls');
UPDATE gameobject SET `state`='1' WHERE `map`=533 AND `id` IN (181225,181124);
DELETE FROM spell_target_position WHERE `id` IN (28444);
INSERT INTO spell_target_position VALUES (28444, 533, 3005.776, -3483.284, 299.551, 1.552);
-- Portal at end
UPDATE `gameobject_template` SET `flags`=0 WHERE `entry` IN ('181575', '181576', '181577', '181578'); -- 16
DELETE FROM `gameobject` WHERE `id` IN ('181575', '181576', '181577', '181578');
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(181575, 533, 3, 1, 3521.34, -3942.85, 308.106, 2.12884, 0, 0, 1, 0, -604800, 0, 1),
(181576, 533, 3, 1, 3548.85, -2958.15, 302.688, 3.16206, 0, 0, 1, 0, -604800, 0, 1),
(181577, 533, 3, 1, 2909, -4025.02, 273.475, 3.14159, 0, 0, 1, 0, -604800, 0, 1),
(181578, 533, 3, 1, 2492.16, -2921.66, 241.276, 5.52219, 0, 0, 1, 0, -604800, 0, 1);

INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES('2','0','0','0','0','0','0','0','0','0','Erupt trigger','',NULL,'80','80','200','300','20','30','0','21','21','0','1','1','0','0','0','0','0','1','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','0','0','0','0','0','0','0','0','1','0','0','194','');


REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15384, 0, 18783, 0, 11686, 0, 'Plague Fissure', '', '', 83, 83, 4120, 4120, 0, 0, 0, 21, 21, 0, 1.1, 1, 0, 0, 0, 0, 0, 1, 2000, 0, 1, 33555206, 0, 0, 0, 0, 0, 0, 0, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.35, 1, 0, 1, 0, 0, 130, 'npc_heigan_eruption');

/* VIOLET HOLD */
UPDATE `instance_template` SET `script`='instance_violet_hold' WHERE `map`=608;
UPDATE `creature_template` SET `ScriptName`='npc_sinclari', npcflag='1',`minhealth`=ROUND(`minhealth`*4), `maxhealth`=ROUND(`maxhealth`*4) WHERE `entry`='30658'; -- 64
UPDATE `creature_template` SET `ScriptName`='npc_azure_saboteur' WHERE `entry`='31079';
UPDATE `creature_template` SET `ScriptName`='boss_cyanigosa' WHERE `entry`='31134';
UPDATE `creature_template` SET `ScriptName`='boss_erekem' WHERE `entry`='29315';
UPDATE `creature_template` SET `ScriptName`='mob_erekem_guard' WHERE `entry`='29395';
UPDATE `creature_template` SET `ScriptName`='boss_ichoron' WHERE `entry`='29313';
UPDATE `creature_template` SET `ScriptName`='mob_ichor_globule',`modelid_A`=5492, `modelid_H`=5492 WHERE `entry`='29321';
UPDATE `creature_template` SET `modelid_A`=5492, `modelid_H`=5492 WHERE `entry`='31515'; -- heroic
UPDATE `creature_template` SET `ScriptName`='boss_lavanthor' WHERE `entry`='29312';
UPDATE `creature_template` SET `ScriptName`='boss_moragg' WHERE `entry`='29316';
UPDATE `creature_template` SET `ScriptName`='boss_xevozz' WHERE `entry`='29266';
UPDATE `creature_template` SET `ScriptName`='mob_ethereal_sphere' WHERE `entry`='29271';
UPDATE `creature_template` SET `ScriptName`='boss_zuramat' WHERE `entry`='29314';
UPDATE `creature_template` SET `ScriptName`='mob_zuramat_sentry' WHERE `entry`='29364';
UPDATE `creature_template` SET `ScriptName`='npc_violet_portal' WHERE `entry`='31011';

DELETE FROM `creature` WHERE map = 608 AND `id`='31011';
DELETE FROM `creature` WHERE map = 608 AND `id`='31134'; -- cyanigosa should not spawn
UPDATE `gameobject_template` SET `flags`=`flags`|4 WHERE `entry` IN (191723,191564,191563,191562,191606,191722,191556,191566,191565); -- door untargetable

UPDATE `creature_template` SET AIName='EventAI',`ScriptName`='' WHERE `entry` IN ('30660','30695','30666','30668','30667','32191');
DELETE FROM creature_ai_scripts WHERE creature_id IN ('30660','30695','30666','30668','30667','32191');
INSERT INTO `creature_ai_scripts` VALUES
('3066001', '30660', '0', '0', '100', '1', '5000', '10000', '30000', '32000', '11', '58504', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Agonizing Strike'),
('3066002', '30660', '0', '0', '100', '1', '12000', '15000', '24000', '30000', '11', '58508', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Side Swipe'),
('3069501', '30695', '0', '0', '100', '3', '5000', '10000', '30000', '32000', '11', '58531', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Arcane Missiles'),
('3069502', '30695', '0', '0', '100', '1', '12000', '15000', '24000', '30000', '11', '58534', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deep Freeze'),
('3069503', '30695', '0', '0', '100', '3', '12000', '15000', '24000', '30000', '11', '58532', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Frostbolt Volley'),
('3069504', '30695', '0', '0', '100', '5', '5000', '10000', '30000', '32000', '11', '61593', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Arcane Missiles'),
('3069505', '30695', '0', '0', '100', '5', '12000', '15000', '24000', '30000', '11', '61594', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Frostbolt Volley'),
('3066601', '30666', '0', '0', '100', '1', '12000', '15000', '24000', '30000', '11', '32736', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mortal Strike'),
('3066602', '30666', '0', '0', '100', '3', '12000', '15000', '24000', '30000', '11', '41057', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Whirlwind'),
('3066603', '30666', '0', '0', '100', '5', '5000', '10000', '30000', '32000', '11', '41056', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Whirlwind'),
('3066801', '30668', '0', '0', '100', '1', '12000', '15000', '24000', '30000', '11', '60158', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Magic Reflection'),
('3066802', '30668', '0', '0', '100', '1', '12000', '15000', '24000', '30000', '11', '52719', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Concussion Blow'),
('3066701', '30667', '0', '0', '100', '3', '5000', '10000', '30000', '32000', '11', '60181', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Arcane Stream'),
('3066702', '30667', '0', '0', '100', '3', '12000', '15000', '24000', '30000', '11', '60182', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mana Detonation'),
('3066703', '30667', '0', '0', '100', '5', '5000', '10000', '30000', '32000', '11', '60204', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Arcane Stream'),
('3066704', '30667', '0', '0', '100', '5', '12000', '15000', '24000', '30000', '11', '60205', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mana Detonation'),
('3219101', '32191', '0', '0', '100', '1', '11000', '11000', '15000', '15000', '11', '58471', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Backstab'),
('3219102', '32191', '0', '0', '100', '1', '10000', '10000', '15000', '15000', '11', '58470', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tactical Blink');
DELETE FROM `spell_script_target` WHERE `entry` IN (54160,59474);
INSERT INTO spell_script_target VALUES (54160, 1, 29266);
INSERT INTO spell_script_target VALUES (59474, 1, 29266);

-- Violet hold
UPDATE creature_template SET ScriptName="npc_door_seal_vh", unit_flags=33816580 WHERE entry=30896;
UPDATE creature_template SET faction_A=35, faction_H=35 WHERE entry=30658;
UPDATE creature_template SET faction_A=1720, faction_H=1720, ScriptName="mob_vh_dragons", minlevel=70,maxlevel=70,minhealth=7000,maxhealth=8000  WHERE entry IN (30660, 30661, 30662, 30663, 30664, 30666, 30667, 30668, 32191, 30695);

-- ignis
UPDATE creature_template SET mechanic_immune_mask=617299803, scriptname='boss_ignis' WHERE entry=33118;
UPDATE creature_template SET minlevel=80, maxlevel=80, faction_h=1925, faction_a=1925, scale=0.5, scriptname='mob_scorch_target' WHERE entry=33221;
UPDATE creature_template SET scriptname='mob_iron_construct' WHERE entry=33121;

-- razorscale
UPDATE creature_template SET mechanic_immune_mask=617299803, scriptname='boss_razorscale' WHERE entry=33186;
UPDATE creature_template SET scriptname='mob_devouring_flame_target' WHERE entry=34188;
UPDATE creature_template SET scriptname='mob_dark_rune_watcher' WHERE entry=33453;
UPDATE creature_template SET scriptname='mob_dark_rune_sentinel' WHERE entry=33846;
UPDATE creature_template SET scriptname='mob_dark_rune_guardian' WHERE entry=33388;
UPDATE creature_template SET scriptname='npc_expedition_commander' WHERE entry=33210;

-- xt002
UPDATE creature_template SET mechanic_immune_mask=617299803, scriptname='boss_xt002' WHERE entry=33293;
UPDATE creature_template SET scriptname='mob_pummeler' WHERE entry=33344;
UPDATE creature_template SET speed=0.5, faction_a=1925, faction_h=1925, scriptname='mob_boombot' WHERE entry=33346;
UPDATE creature_template SET speed=0.5 WHERE entry=33343;
UPDATE creature_template SET mechanic_immune_mask=652951551, scriptname='mob_xtheart' WHERE entry=33329;

-- iron council
UPDATE creature_template SET scriptname='mob_ulduar_lightning_elemental' WHERE entry=32958;
UPDATE creature_template SET scriptname='mob_rune_of_power' WHERE entry=33705;
UPDATE creature_template SET scriptname='mob_rune_of_summoning' WHERE entry=33051;
UPDATE creature_template SET mechanic_immune_mask=619395071, scriptname='boss_brundir' WHERE entry=32857;
UPDATE creature_template SET mechanic_immune_mask=617299803, scriptname='boss_molgeim' WHERE entry=32927;
UPDATE creature_template SET mechanic_immune_mask=617299803, scriptname='boss_steelbreaker' WHERE entry=32867;

-- kologarn
DELETE FROM creature WHERE id IN (32933, 32934);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (9327991, 232933, 603, 3, 65535, 0, 0, 1799.68, -24.3599, 452.227, 3.14747, 604800, 0, 0, 543855, 0, 0, 0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES (9327992, 32934, 603, 3, 65535, 0, 0, 1799.68, -24.3599, 452.227, 3.14747, 604800, 0, 0, 543855, 0, 0, 0);
UPDATE creature_model_info SET bounding_radius=15, combat_reach=15 WHERE modelid IN (28638, 28822, 28821);
UPDATE creature_template SET mechanic_immune_mask=652951551, scriptname='boss_right_arm' WHERE entry=32934;
UPDATE creature_template SET mechanic_immune_mask=652951551, scriptname='boss_left_arm' WHERE entry=32933;
UPDATE creature_template SET scriptname='mob_ulduar_rubble' WHERE entry=33768;
UPDATE creature_template SET mechanic_immune_mask=617299803, scriptname='boss_kologarn' WHERE entry=32930;

-- auriaya
UPDATE creature_template SET minlevel=80, maxlevel=80, faction_h=14, faction_a=14, scriptname='mob_seeping_feral_essence' WHERE entry=34098;
UPDATE creature_template SET scriptname='mob_sanctum_sentry' WHERE entry=34014;
UPDATE creature_template SET mechanic_immune_mask=619395071, scriptname='mob_feral_defender' WHERE entry=34035;
UPDATE creature_template SET mechanic_immune_mask=583745371, scriptname='boss_auriaya' WHERE entry=33515;
-- naosei
UPDATE creature_template SET `faction_A` = '16',`faction_H` = '16',`minlevel` = '80',`maxlevel` = '80',`minhealth` = '9000',`maxhealth` = '9000',`minmana` = '1000',`maxmana` = '1000', ScriptName="mob_flame_orb" WHERE entry=30702;

DELETE FROM `creature_template_addon` WHERE `entry` IN (33113,33114);
INSERT INTO `creature_template_addon` (`entry` ,`mount` ,`bytes1` ,`bytes2` ,`emote` ,`moveflags` ,`vehicle_id` ,`passengers` ,`auras` )VALUES
('33113', '0', '0', '0', '0', '0', '340', NULL , NULL ),
('33114', '0', '0', '0', '0', '0', '341', NULL , NULL );

DELETE FROM `vehicle_seat_data`  WHERE `seat` IN(3043,3065,3071,3072,3070,3044,3075,3076); 
INSERT INTO `vehicle_seat_data` (`seat`, `flags`) VALUES
('3043', '0'), ('3065', '0'), ('3071', '0'), ('3072', '0'),
('3070', '0'), ('3044', '0'), ('3075', '0'), ('3076', '0');

REPLACE INTO `creature_template_addon` (
`entry` ,
`mount` ,
`bytes1` ,
`bytes2` ,
`emote` ,
`moveflags` ,
`vehicle_id` ,
`passengers` ,
`auras` 
)
VALUES (
'33060', '0', '0', '0', '0', '0', '336', NULL , NULL 
), (
'33062', '0', '0', '0', '0', '0', '335', NULL , NULL 
), (
'33067', '0', '0', '0', '0', '0', '337', NULL , NULL 
), (
'33109', '0', '0', '0', '0', '0', '338', NULL , NULL 
), (
'33167', '0', '0', '0', '0', '0', '345', NULL , NULL 
);

REPLACE INTO `vehicle_data` (
`entry` ,
`flags` ,
`Spell1` ,
`Spell2` ,
`Spell3` ,
`Spell4` ,
`Spell5` ,
`Spell6` ,
`Spell7` ,
`Spell8` ,
`Spell9` ,
`Spell10` ,
`req_aura` 
)
VALUES (
'336', '0', '62345', '62522', '62346', '0', '0', '0', '0', '0', '0', '0', '0'
), (
'337', '1', '64979', '62358', '64677', '0', '0', '0', '0', '0', '0', '0', '0'
), (
'335', '0', '62299', '62974', '62286', '64660', '0', '0', '0', '0', '0', '0', '0'
), (
'338', '0', '62306', '62490', '62308', '62324', '0', '0', '0', '0', '0', '0', '0'
), (
'345', '1', '62634', '64979', '62482', '62471', '64414', '0', '0', '0', '0', '0', '0'
);

REPLACE INTO `mangos`.`vehicle_seat_data` (
`seat` ,
`flags` 
)
VALUES (
'3006', '3'
), (
'4026', '2'
), (
'4027', '2'
), (
'3009', '2'
), (
'3005', '3'
), (
'3004', '2'
), (
'3010', '3'
), (
'3011', '3'
), (
'3146', '2'
), (
'3013', '2'
), (
'3147', '2'
), (
'3077', '3'
), (
'3106', '10'
);

UPDATE `npc_spellclick_spells` SET `spell_id`= 60968 WHERE npc_entry IN (33060, 33062, 33067, 33109, 33167);


UPDATE `creature_template` SET `InhabitType` = '4' WHERE `entry`=30702;

DELETE FROM `creature` WHERE `id`=26712;
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(26712, 600, 3, 1, 17188, 0, -365.477, -724.849, 32.2241, 3.92699, 3600, 5, 0, 4050, 0, 0, 1),
(26712, 600, 3, 1, 17188, 0, -365.368, -751.128, 32.3213, 2.35619, 3600, 5, 0, 4050, 0, 0, 1),
(26712, 600, 3, 1, 17188, 0, -392.123, -750.941, 32.2796, 0.680678, 3600, 5, 0, 4050, 0, 0, 1),
(26712, 600, 3, 1, 17188, 0, -392.455, -724.809, 32.1685, 5.35816, 3600, 5, 0, 4050, 0, 0, 1);

DELETE FROM `creature_template` WHERE (`entry`=26710);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (26710, 0, 0, 0, 0, 0, 2536, 1160, 9829, 14952, 'Channel Target', '', '', 0, 1, 1, 8, 8, 0, 0, 7, 190, 190, 0, 1, 1, 0, 2, 2, 0, 24, 7.5, 2000, 0, 1, 33587200, 0, 0, 0, 0, 0, 0, 1, 1, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 0.2, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=26712);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (26712, 0, 0, 0, 0, 0, 169, 0, 17188, 0, 'Crystal Channel Target', '', '', 0, 70, 70, 4050, 4050, 0, 0, 6719, 16, 16, 0, 1, 1, 0, 252, 357, 0, 304, 1, 2000, 0, 1, 33554436, 0, 0, 0, 0, 0, 0, 215, 320, 44, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'crystal_channel');

DELETE FROM `creature_template` WHERE (`entry`=26714);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (26714, 0, 0, 0, 0, 0, 2536, 1160, 9829, 14952, 'Dead Crystal Holder', '', '', 0, 1, 1, 8, 8, 0, 0, 7, 190, 190, 0, 1, 1, 0, 2, 2, 0, 24, 7.5, 2000, 0, 1, 32768, 0, 0, 0, 0, 0, 0, 1, 1, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 0.2, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, '');

-- King Dred

DELETE FROM creature WHERE id IN (27709, 27753, 27490);

DELETE FROM `creature` WHERE `id`=26632;
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(26632, 600, 3, 1, 0, 0, -237.176, -675.768, 131.866, 4.66859, 25, 0, 0, 512278, 4169, 0, 0);

DELETE FROM `creature_template` WHERE (`entry`=26632);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (26632, 31360, 0, 0, 0, 0, 27072, 0, 27072, 0, 'The Prophet Tharon\'ja', '', '', 76, 77, 275025, 275025, 0, 0, 0, 16, 16, 0, 1, 1, 1, 350, 450, 0, 400, 7.5, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 350, 450, 75, 6, 72, 26632, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'boss_tharonja');

DELETE FROM `creature_template` WHERE (`entry`=31360);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (31360, 0, 0, 0, 0, 0, 27072, 0, 27072, 0, 'The Prophet Tharon\'ja (1)', '', '', 82, 82, 512278, 512278, 4169, 4169, 0, 16, 16, 0, 1, 1, 1, 450, 650, 0, 750, 13, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 350, 530, 100, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 38, 1, 0, 43670, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, '');

INSERT INTO spell_script_target VALUES (49555, 2, 27753);

UPDATE creature_template SET minhealth = 1885, maxhealth = 1885 WHERE entry = 27753;

DELETE FROM `creature_template` WHERE (`entry`=26627);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (26627, 31344, 0, 0, 0, 0, 24500, 0, 24500, 0, 'Crystal Handler', '', '', 0, 75, 75, 21270, 21270, 0, 0, 0, 15, 15, 0, 1, 1, 1, 500, 1000, 0, 500, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2.5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'crystal_handler');

DELETE FROM `creature_template` WHERE (`entry`=31344);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (31344, 0, 0, 0, 0, 0, 24500, 0, 24500, 0, 'Crystal Handler (1)', '', '', 0, 81, 81, 41704, 41704, 8979, 8979, 0, 15, 15, 0, 1, 1, 1, 1000, 1500, 0, 500, 2, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=27597);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (27597, 31348, 0, 0, 0, 0, 22337, 0, 22337, 0, 'Hulking Corpse', '', '', 0, 74, 74, 12338, 12338, 0, 0, 0, 15, 15, 0, 1, 1, 1, 500, 1000, 0, 500, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1.2, 1, 0, 0, 0, 0, 0, 0, 0, 88, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=31348);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (31348, 0, 0, 0, 0, 0, 22337, 0, 22337, 0, 'Hulking Corpse (1)', '', '', 0, 80, 80, 25200, 25200, 0, 0, 0, 15, 15, 0, 1, 1, 1, 1000, 1500, 0, 500, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0, 88, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=27598);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (27598, 31873, 0, 0, 0, 0, 10978, 0, 10972, 0, 'Fetid Troll Corpse', '', '', 0, 74, 74, 2056, 2056, 0, 0, 0, 15, 15, 0, 1, 1, 0, 200, 400, 0, 500, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0.2, 1, 0, 0, 0, 0, 0, 0, 0, 73, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=31873);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (31873, 0, 0, 0, 0, 0, 10978, 0, 10972, 0, 'Fetid Troll Corpse (1)', '', '', 0, 80, 80, 3780, 3780, 0, 0, 0, 15, 15, 0, 1, 1, 0, 500, 1000, 0, 500, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0.3, 1, 0, 0, 0, 0, 0, 0, 0, 73, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=27600);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (27600, 31356, 0, 0, 0, 0, 2606, 0, 2606, 0, 'Risen Shadowcaster', '', '', 0, 74, 74, 1645, 1645, 7809, 7809, 0, 15, 15, 0, 1, 1, 0, 200, 400, 0, 500, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0.2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=31356);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (31356, 0, 0, 0, 0, 0, 2606, 0, 2606, 0, 'Risen Shadowcaster (1)', '', '', 0, 81, 81, 3128, 3128, 8979, 8979, 0, 15, 15, 0, 1, 1, 0, 500, 1000, 0, 500, 2, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0.3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');

UPDATE creature_template SET AIName = '', ScriptName = 'boss_trollgore' WHERE entry = 26630;
UPDATE creature_template SET AIName = '', ScriptName = 'boss_novos' WHERE entry = 26631;
UPDATE creature_template SET AIName = '', ScriptName = 'crystal_handler' WHERE entry = 26627;
UPDATE creature_template SET AIName = '', ScriptName = 'crystal_channel' WHERE entry = 26712;
UPDATE creature_template SET AIName = '', ScriptName = 'risen_shadowcaster' WHERE entry = 27600;
UPDATE creature_template SET AIName = '', ScriptName = 'boss_dred' WHERE entry = 27483;
UPDATE creature_template SET AIName = '', ScriptName = 'boss_tharonja' WHERE entry = 26632;


DELETE FROM creature_template_addon WHERE entry IN (30385, 31474);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES
('30385', '0', '8', '1', '0', '0', NULL),
('31474', '0', '8', '1', '0', '0', NULL);

DELETE FROM creature_template WHERE entry IN (31474, 30385, 29310, 31465);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(29310, 31465, 0, 0, 0, 0, 26777, 0, 26777, 0, 'Jedoga Shadowseeker', '', '', 0, 75, 75, 212700, 212700, 0, 0, 8204, 16, 16, 0, 1, 1, 1, 339, 481, 0, 370, 7.5, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 293, 436, 53, 7, 0, 29310, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4176, 6960, '', 0, 3, 20, 20, 0, 0, 0, 0, 0, 0, 0, 172, 1, 1575, 0, 0, 'boss_jedoga'),
(30385, 31474, 0, 0, 0, 0, 27382, 27384, 27383, 27385, 'Twilight Volunteer', '', '', 0, 74, 74, 25705, 25705, 0, 0, 0, 16, 16, 0, 0.55, 1, 1, 0, 0, 0, 0, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2.5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 93, 0, 0, 'npc_twilight_volunteer'),
(31465, 0, 0, 0, 0, 0, 26777, 0, 26777, 0, 'Jedoga Shadowseeker (1)', '', '', 0, 82, 82, 431392, 431392, 0, 0, 10253, 16, 16, 0, 1, 1, 1, 463, 640, 0, 726, 13, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 360, 520, 91, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8352, 13920, '', 0, 3, 32, 20, 0, 0, 0, 0, 0, 0, 0, 172, 1, 0, 0, 1, ''),
(31474, 0, 0, 0, 0, 0, 27382, 27384, 27383, 27385, 'Twilight Volunteer (1)', '', '', 0, 81, 81, 58648, 58648, 0, 0, 0, 16, 16, 0, 0.55, 1, 1, 0, 0, 0, 0, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 4.5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');

DELETE FROM creature_addon WHERE guid=131953;
DELETE FROM creature WHERE guid=131953;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(131953, 29310, 619, 3, 1, 26777, 0, 357.353, -692.808, -10.7028, 5.56541, 14400, 5, 0, 212700, 0, 0, 1);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(14531544, 194394, 619, 2, 1, 371.842, -701.621, -16.1797, 5.67851, 0, 0, 0.297751, -0.954644, -10, 0, 1);

UPDATE creature_template SET faction_A = 16, faction_H = 16 WHERE entry IN (26627, 31344, 27597, 31348, 27598, 31873, 27600, 31356);

-- instance
UPDATE instance_template SET script='instance_trial_of_the_champion' WHERE map=650;

-- announcers
UPDATE creature_template SET npcflag=1, scriptname='npc_toc5_announcer' WHERE entry IN (35004, 35005);

-- grand champions
UPDATE creature_template SET scriptname='mob_toc5_warrior' WHERE entry IN (34705, 35572);
UPDATE creature_template SET scriptname='mob_toc5_mage' WHERE entry IN (34702, 35569);
UPDATE creature_template SET scriptname='mob_toc5_shaman' WHERE entry IN (34701, 35571);
UPDATE creature_template SET scriptname='mob_toc5_hunter' WHERE entry IN (34657, 35570);
UPDATE creature_template SET scriptname='mob_toc5_rogue' WHERE entry IN (34703, 35617);

-- argent challenge
UPDATE creature_template SET scriptname='boss_eadric' WHERE entry=35119;
UPDATE creature_template SET scriptname='boss_paletress' WHERE entry=34928;
UPDATE creature_template SET scriptname='mob_toc5_memory' WHERE entry IN (35052, 35041, 35033, 35046, 35043, 35047, 35044, 35039, 35034, 35049, 35030, 34942, 35050, 35042, 35045, 35037, 35031, 35038, 35029, 35048, 35032, 35028, 35040, 35036, 35051);

-- black knight
UPDATE creature_template SET faction_a=14, faction_h=14, scriptname='mob_toc5_risen_ghoul' WHERE entry IN (35545, 35564);
UPDATE creature_template SET scriptname='boss_black_knight' WHERE entry=35451;

UPDATE creature_template SET unit_flags=0, difficulty_entry_1=0 WHERE entry IN (30258, 30391, 30435);
UPDATE creature_template SET ScriptName="npc_amanitar_mushroom" WHERE entry IN (30391, 30435);
UPDATE creature_template SET ScriptName="boss_amanitar", mindmg=488, maxdmg=648, attackpower=782, dmg_multiplier=13  WHERE entry = 30258;

INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
#Amanitar
(30258, 619, 2, 1, 0, 0, 340.433, -884.8, -74.6965, 6.10105, 9800, 0, 0, 1, 0, 0, 0),

#Mushrooms
(30391, 619, 2, 1, 0, 0, 358.386, -885.553, -76.1054, 3.06235, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 355.893, -871.712, -76.1473, 2.37356, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 350.343, -874.985, -76.7057, 3.40793, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 339.429, -875.16, -75.6668, 2.76233, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 333.095, -874.652, -73.8099, 3.95457, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 324.208, -878.923, -70.915, 3.95457, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 319.612, -893.614, -66.4438, 6.25892, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 335.775, -899.115, -76.1423, 0.282045, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 344.644, -898.122, -77.6435, 0.282045, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 353.341, -894.159, -77.208, 0.282045, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 363.279, -897.252, -79.5129, 0.282045, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 364.47, -903.557, -80.3345, 4.7651, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 366.219, -915.939, -82.5392, 5.04784, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 368.297, -920.562, -82.5588, 5.59919, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 381.647, -923.685, -82.4737, 0.190153, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 389.079, -916.929, -81.4451, 1.40831, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 386.916, -909.718, -79.9835, 1.40831, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 386.976, -898.374, -79.2561, 2.5652, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 390.349, -882.168, -76.0919, 1.56146, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 387.136, -871.625, -75.4158, 2.15051, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 378.056, -864.542, -73.8699, 3.01759, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 363.749, -858.04, -75.1185, 3.01759, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 352.564, -862.387, -74.7834, 3.01759, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 343.924, -860.44, -74.5909, 2.23533, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 339.94, -852.104, -74.3732, 0.995972, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 347.839, -848.228, -73.7097, 6.23065, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 324.306, -858.725, -75.0947, 3.68596, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 347.971, -882.318, -75.884, 3.55872, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 347.965, -889.829, -76.747, 3.55872, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 368.578, -877.354, -75.676, 1.46878, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 378.003, -852.353, -73.5427, 0.519235, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 361.828, -841.2, -70.86, 2.94298, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 346.972, -839.523, -73.5286, 2.94298, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 337.009, -843.074, -74.3865, 2.94298, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 330.036, -847.017, -74.318, 3.25321, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 328.839, -838.69, -72.921, 1.8929, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 322.452, -829.799, -73.5624, 2.6563, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 316.367, -822.016, -73.1033, 1.71618, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 320.592, -812.011, -73.8038, 0.957487, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 322.619, -803.898, -72.9384, 2.07668, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 331.481, -811.702, -72.9227, 5.46332, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 341.894, -826.849, -73.049, 5.46332, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 387.58, -856.341, -71.0935, 5.72486, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 401.977, -867.49, -73.3215, 5.27247, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 408.72, -872.115, -73.0256, 6.03823, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 416.438, -875.336, -70.4833, 5.08397, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 403.004, -895.527, -75.561, 5.60391, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 409.35, -902.562, -77.2837, 5.22927, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 414.538, -911.69, -79.8006, 5.22927, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 419.727, -920.818, -80.7403, 5.22927, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 428.151, -920.833, -79.0992, 0.892305, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 436.712, -911.759, -78.8367, 0.0605679, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 461.167, -910.276, -77.4777, 0.0605679, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 419.827, -930.386, -77.7951, 4.29465, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 418.017, -939.624, -80.2493, 4.29465, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 417.247, -948.532, -79.3315, 4.29465, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 409.236, -952.042, -80.6495, 4.29465, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 410.077, -959.059, -78.9977, 4.29465, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 403.871, -964.208, -77.8873, 4.29465, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 401.693, -970.428, -77.3012, 4.90255, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 402.379, -980.099, -75.4585, 4.60567, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 399.272, -984.535, -75.9494, 3.15425, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 380.102, -984.145, -74.2926, 2.13402, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 369.565, -973.481, -77.4914, 2.56756, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 360.748, -967.779, -79.832, 2.56756, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 350.138, -958.988, -79.4422, 2.16229, 30, 0, 0, 1, 0, 0, 0),
(30391, 619, 2, 1, 0, 0, 342.879, -944.352, -79.8533, 1.64157, 30, 0, 0, 1, 0, 0, 0);

UPDATE creature_template SET modelid_A=11686, modelid_H=11686 WHERE entry IN (30391, 30435);

UPDATE `creature_template` SET `difficulty_entry_1` = '31476',
`modelid_A` = '14702',
`modelid_H` = '14702',
`minhealth` = '20000',
`maxhealth` = '20000',
`armor` = '8000',
`speed` = '0.7',
`unit_flags` = '0',
`type_flags` = '0',
`equipment_id` = '0',
`ScriptName` = 'mob_twisted_visage' WHERE `entry` =30621;

UPDATE `creature_template` SET `difficulty_entry_1` = '31477',
`modelid_A` = '19702',
`modelid_H` = '19702',
`name` = 'Ancient Voidwalker',
`minhealth` = '360000',
`maxhealth` = '360000',
`minmana` = '50000',
`maxmana` = '50000',
`armor` = '10000',
`mindmg` = '400',
`maxdmg` = '550',
`attackpower` = '670',
`dmg_multiplier` = '7.5',
`unit_flags` = '0',
`type_flags` = '0',
`equipment_id` = '0',
`RegenHealth` = 0,
`ScriptName` = 'mob_ancient_void' WHERE `entry` =30622;

UPDATE `creature_template` SET `modelid_A` = '14702',
`modelid_H` = '14702',
`name` = 'Twisted Visage (1)',
`minhealth` = '40000',
`maxhealth` = '40000',
`speed` = '0.7',
`unit_flags` = '0',
`type_flags` = '0' WHERE `entry` =31476;

UPDATE `creature_template` SET `modelid_A` = '19702',
`modelid_H` = '19702',
`name` = 'Ancient Voidwalker (1)',
`minhealth` = '460000',
`maxhealth` = '460000',
`minmana` = '70000',
`maxmana` = '70000',
`armor` = '10000',
`mindmg` = '580',
`maxdmg` = '680',
`attackpower` = '870',
`dmg_multiplier` = '13',
`RegenHealth` = 0,
`type_flags` = '0' WHERE `entry` =31477;

UPDATE creature_template SET AIname="EventAI" WHERE entry=30176;
INSERT IGNORE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
('3017610', '30176', '11', '0', '100', '6', '0', '0', '0', '0', '11', '56151', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('3017611', '30176', '8', '0', '100', '6', '56153', '0', '0', '0', '28', '0', '56153', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');

-- Soul Weaver
UPDATE creature_template SET minlevel = 80, maxlevel = 80, minhealth = 56700, maxhealth = 56700 WHERE entry = 16429;
-- Guardian of Icecrown 10 men
UPDATE creature_template SET minlevel = 80, maxlevel = 80, minhealth = 2520000, maxhealth = 2520000, dmg_multiplier = 1.5, mechanic_immune_mask = 1073741823 WHERE entry = 16441;
-- Guardian of Icecrown 25 men
UPDATE creature_template SET minlevel = 80, maxlevel = 80, minhealth = 6300000, maxhealth = 6300000, armor = 7369, dmg_multiplier = 1.8, mechanic_immune_mask = 1073741823 WHERE entry = 30057;
-- Shadow Fissure
UPDATE creature_template SET faction_A = 35, faction_H = 35, flags_extra = 130 WHERE entry = 16129;

UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 193426;

DELETE FROM gameobject WHERE guid=21640;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`, `animprogress`,`state`) VALUES
(21640,193426, 533, 2, 1, 2511.51, -2943.93, 245.552, 5.48707, 0, 0, 0.387631, -0.921815, -604800, 100, 1);

DELETE FROM spell_script_target WHERE entry=55479;
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`) VALUES (55479, 1, 16803);               

DELETE FROM npc_gossip WHERE npc_guid IN (128352, 128353);
DELETE FROM npc_text WHERE ID=100;
INSERT INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (128352, 100);
INSERT INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (128353, 100);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES (100, 'Hi. In front of you is standing a Instructor Razuvious. To defeat this boss, you ll need to use Mind Control. If you don t have any priest in your group, press button below.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

UPDATE creature SET spawnMask = 1 WHERE id = 29912;

DELETE FROM `creature_template` WHERE (`entry`=16803);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (16803, 29941, 0, 0, 0, 0, 16539, 0, 16539, 0, 'Death Knight Understudy', '', '', 0, 82, 82, 404430, 404430, 0, 0, 49905, 21, 21, 0, 1, 1, 1, 488, 642, 0, 782, 7.5, 2000, 0, 1, 32832, 0, 0, 0, 0, 0, 0, 363, 521, 121, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61696, 29060, 29061, 0, 0, 0, 0, 'EventAI', 0, 3, 30, 2, 0, 22708, 0, 0, 0, 0, 0, 144, 1, 1728, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=29941);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (29941, 0, 0, 0, 0, 0, 16539, 0, 16539, 0, 'Death Knight Understudy (1)', '', '', 0, 82, 82, 404430, 404430, 0, 0, 49905, 14, 14, 0, 1.5, 1, 1, 488, 642, 0, 782, 13, 2000, 0, 1, 32832, 0, 0, 0, 0, 0, 0, 363, 521, 121, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 30, 2, 0, 22708, 0, 0, 0, 0, 0, 144, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=16061);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (16061, 29940, 0, 0, 0, 0, 16582, 0, 16582, 0, 'Instructor Razuvious', '', '', 0, 83, 83, 3346800, 3346800, 0, 0, 10673, 21, 21, 0, 1.6, 1, 3, 1000, 1200, 0, 800, 70, 3500, 0, 1, 32832, 0, 0, 0, 0, 0, 0, 371, 535, 135, 6, 76, 16061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1253602, 1532181, '', 0, 3, 240, 2, 0, 0, 0, 0, 0, 0, 0, 167, 1, 1718, 617299803, 1, 'boss_razuvious');

DELETE FROM `creature_template` WHERE (`entry`=29940);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (29940, 0, 0, 0, 0, 0, 16582, 0, 16582, 0, 'Instructor Razuvious (1)', '', '', 0, 83, 83, 10110125, 10110125, 0, 0, 10673, 21, 21, 0, 2, 1, 3, 1000, 1200, 0, 800, 70, 3500, 0, 1, 32832, 0, 0, 0, 0, 0, 0, 371, 535, 135, 6, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2507204, 3064362, '', 0, 3, 725, 2, 0, 0, 0, 0, 0, 0, 0, 167, 1, 0, 617299803, 1, '');

DELETE FROM `creature_template` WHERE (`entry`=29912);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (29912, 0, 0, 0, 0, 0, 26620, 0, 26620, 0, 'Obedience Crystal', '', 'Interact', 0, 80, 80, 12600, 12600, 0, 0, 9729, 35, 35, 1, 1, 1, 0, 422, 586, 0, 642, 1, 2000, 0, 1, 64, 0, 0, 0, 0, 0, 0, 345, 509, 103, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_obedience_crystal');

UPDATE creature SET id = 29956 WHERE guid = 128353;

UPDATE creature SET MovementType = 2 WHERE guid = 128312;
DELETE FROM creature_movement WHERE id = 128312;
INSERT INTO creature_movement (id,POINT,position_x,position_y,position_z) VALUES
(128312,1,2777.138672,-3110.880859,267.684509),
(128312,2,2781.611328,-3106.903076,267.684509),
(128312,3,2784.291748,-3098.885254,267.684509),
(128312,4,2781.093018,-3090.532959,267.684509),
(128312,5,2773.239014,-3085.609619,267.684509),
(128312,6,2765.775146,-3086.021240,267.684509),
(128312,7,2758.100586,-3091.694824,267.684509),
(128312,8,2755.643555,-3097.803467,267.684509),
(128312,9,2756.769775,-3104.073975,267.684509),
(128312,10,2760.447021,-3109.536621,267.684509),
(128312,11,2766.769531,-3112.940918,267.684509);


-- Into the Realm of Shadows
UPDATE `creature_template` SET `ScriptName`='npc_salanar_the_horseman',ainame="" WHERE `entry`='28653';
UPDATE `creature_template` SET `ScriptName`='mob_dark_rider_of_acherus',ainame="" WHERE `entry`='28768';

-- The Gift That Keeps On Giving
UPDATE `creature_template` SET `ScriptName`='mob_scarlet_miner',ainame="" WHERE `entry`='28822';

-- How To Win Friends And Influence Enemies
UPDATE `creature_template` SET `ScriptName`='npc_crusade_persuaded',ainame="" WHERE `entry` IN (28939,28940,28610);


-- Ambush At The Overlook
DELETE FROM `creature` WHERE `id` = 28957;
INSERT INTO `creature` (`id`, `map`, `phaseMask`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(28957, 609, 4, 1, 0, 0, 1416.466, -6017.807, 116.357, 1, 360, 0, 0, 1, 0, 0, 1);
UPDATE `creature_template` SET `ScriptName`='mob_scarlet_courier_controller',flags_extra=130,ainame="" WHERE `entry`='28957';
UPDATE `creature_template` SET `ScriptName`='mob_scarlet_courier',ainame="" WHERE `entry`='29076';

-- Bloody Breakout
UPDATE `creature_template` SET `ScriptName`='mob_high_inquisitor_valroth',minmana=6489,maxmana=6489,unit_flags=32768,ainame="" WHERE `entry`='29001';
UPDATE `creature_template` SET `AIName`='EventAI',minmana=1020,maxmana=1058,unit_flags=32768 WHERE (`entry`='29007');
DELETE FROM creature_ai_scripts WHERE id BETWEEN 90030 AND 90033;
INSERT INTO `creature_ai_scripts` VALUES ('90030', '29007', '0', '0', '100', '1', '1000', '4000', '1000', '4000', '11', '15498', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Crimson Acolyte - Holy Smite');
INSERT INTO `creature_ai_scripts` VALUES ('90031', '29007', '0', '0', '100', '1', '1000', '10000', '20000', '21000', '11', '34809', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Crimson Acolyte - Holy Fury');
INSERT INTO `creature_ai_scripts` VALUES ('90032', '29007', '0', '0', '100', '1', '1000', '5000', '1000', '5000', '11', '19725', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Crimson Acolyte - Turn Undead');
INSERT INTO `creature_ai_scripts` VALUES ('90033', '29007', '4', '0', '100', '0', '0', '0', '0', '0', '11', '15498', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Crimson Acolyte aggro');

-- The Light of Dawn (to do)
UPDATE `creature_template` SET `ScriptName`='npc_highlord_darion_mograine',ainame="" WHERE `entry`='29173';
UPDATE `creature_template` SET `ScriptName`='npc_the_lich_king_tirion_dawn',ainame="" WHERE `entry` IN (29183,29175);
UPDATE creature_template SET AIName='EventAI',unit_flags=0,type_flags=8 WHERE entry IN (29199,29204,29200,29174,29182,29186,29190,29219,29206,29176,29178,29179,29180,29177,29181);
DELETE FROM `spell_script_target` WHERE `entry` IN (53658, 53679, 53701, 53705, 53706, 53677, 53685);
-- insert into spell_script_target values (53658, 1, 29173);
INSERT INTO spell_script_target VALUES (53679, 1, 29183);
INSERT INTO spell_script_target VALUES (53701, 1, 29175);
INSERT INTO spell_script_target VALUES (53705, 1, 29183);
INSERT INTO spell_script_target VALUES (53706, 1, 29183);
INSERT INTO spell_script_target VALUES (53677, 1, 29227);
INSERT INTO spell_script_target VALUES (53685, 1, 29175);

DELETE FROM `gameobject` WHERE `id` IN (191330);
INSERT INTO `gameobject` (guid, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(19133001, '191330','609','1','128','2283.896','-5287.914','83.066','1','0.0','0.0','0.0','1.0','180','0','1');

DELETE FROM creature_ai_scripts WHERE id BETWEEN 90051 AND 90084;
INSERT INTO `creature_ai_scripts` VALUES ('90051', '29199', '0', '0', '100', '3', '10000', '20000', '10000', '20000', '11', '52374', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Koltira Deathweaver - SPELL_BLOOD_STRIKE1');
INSERT INTO `creature_ai_scripts` VALUES ('90052', '29199', '0', '0', '100', '3', '10000', '20000', '10000', '20000', '11', '49576', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Koltira Deathweaver - SPELL_DEATH_GRIP');
INSERT INTO `creature_ai_scripts` VALUES ('90053', '29199', '0', '0', '100', '3', '10000', '20000', '10000', '20000', '11', '52372', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Koltira Deathweaver - SPELL_ICY_TOUCH2');
INSERT INTO `creature_ai_scripts` VALUES ('90054', '29199', '0', '0', '100', '3', '10000', '20000', '10000', '20000', '11', '50668', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Koltira Deathweaver - SPELL_PLAGUE_STRIKE1');
INSERT INTO `creature_ai_scripts` VALUES ('90055', '29204', '0', '0', '100', '3', '10000', '20000', '10000', '20000', '11', '52374', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Orbaz Bloodbane - SPELL_BLOOD_STRIKE1');
INSERT INTO `creature_ai_scripts` VALUES ('90056', '29204', '0', '0', '100', '3', '10000', '20000', '10000', '20000', '11', '49576', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Orbaz Bloodbane - SPELL_DEATH_GRIP');
INSERT INTO `creature_ai_scripts` VALUES ('90057', '29204', '0', '0', '100', '3', '10000', '20000', '10000', '20000', '11', '52372', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Orbaz Bloodbane - SPELL_ICY_TOUCH2');
INSERT INTO `creature_ai_scripts` VALUES ('90058', '29204', '0', '0', '100', '3', '10000', '20000', '10000', '20000', '11', '50668', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Orbaz Bloodbane - SPELL_PLAGUE_STRIKE1');
INSERT INTO `creature_ai_scripts` VALUES ('90059', '29200', '0', '0', '100', '3', '10000', '20000', '10000', '20000', '11', '52374', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Thassarian - SPELL_BLOOD_STRIKE1');
INSERT INTO `creature_ai_scripts` VALUES ('90060', '29200', '0', '0', '100', '3', '10000', '20000', '10000', '20000', '11', '49576', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Thassarian - SPELL_DEATH_GRIP');
INSERT INTO `creature_ai_scripts` VALUES ('90061', '29200', '0', '0', '100', '3', '10000', '20000', '10000', '20000', '11', '52372', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Thassarian - SPELL_ICY_TOUCH2');
INSERT INTO `creature_ai_scripts` VALUES ('90062', '29200', '0', '0', '100', '3', '10000', '20000', '10000', '20000', '11', '50668', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Thassarian - SPELL_PLAGUE_STRIKE1');
INSERT INTO `creature_ai_scripts` VALUES ('90063', '29174', '14', '0', '100', '3', '10000', '20', '5000', '10000', '11', '29427', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Defender of the Light - SPELL_HOLY_LIGHT1');
INSERT INTO `creature_ai_scripts` VALUES ('90064', '29174', '4', '0', '100', '0', '0', '0', '0', '0', '11', '53625', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0', 'Defender of the Light aggro');
INSERT INTO `creature_ai_scripts` VALUES ('90065', '29174', '0', '0', '100', '3', '10000', '20000', '10000', '20000', '11', '53625', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defender of the Light - SPELL_HEROIC_LEAP');
INSERT INTO `creature_ai_scripts` VALUES ('90066', '29174', '0', '0', '100', '3', '10000', '20000', '10000', '20000', '11', '53643', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defender of the Light - SPELL_HOLY_STRIKE');
INSERT INTO `creature_ai_scripts` VALUES ('90067', '29174', '0', '0', '100', '3', '10000', '20000', '10000', '20000', '11', '53638', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defender of the Light - SPELL_HOLY_WRATH');
INSERT INTO `creature_ai_scripts` VALUES ('90068', '29174', '0', '0', '100', '3', '10000', '20000', '10000', '20000', '11', '53629', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defender of the Light - SPELL_UPPERCUT');
INSERT INTO `creature_ai_scripts` VALUES ('90069', '29182', '14', '0', '100', '3', '10000', '20', '5000', '10000', '11', '33642', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Rimblat Earthshatter - SPELL_CHAIN_HEAL');
INSERT INTO `creature_ai_scripts` VALUES ('90070', '29182', '0', '0', '100', '3', '10000', '20000', '10000', '10000', '11', '53630', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rimblat Earthshatter - SPELL_THUNDER');
INSERT INTO `creature_ai_scripts` VALUES ('90071', '29186', '0', '0', '100', '3', '10000', '20000', '10000', '10000', '11', '53633', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rampaging Abomination - SPELL_CLEAVE1');
INSERT INTO `creature_ai_scripts` VALUES ('90072', '29186', '0', '0', '100', '3', '10000', '20000', '10000', '10000', '11', '50335', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rampaging Abomination - SPELL_SCOURGE_HOOK');
INSERT INTO `creature_ai_scripts` VALUES ('90073', '29190', '0', '0', '100', '3', '10000', '20000', '10000', '10000', '11', '53634', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Flesh Behemoth - SPELL_SCOURGE_HOOK');
INSERT INTO `creature_ai_scripts` VALUES ('90074', '29190', '0', '0', '100', '3', '10000', '20000', '10000', '10000', '11', '36706', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Flesh Behemoth - SPELL_THUNDERCLAP');
INSERT INTO `creature_ai_scripts` VALUES ('90075', '29190', '0', '0', '100', '3', '5000', '10000', '5000', '10000', '11', '53627', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Flesh Behemoth - SPELL_THUNDERCLAP');
INSERT INTO `creature_ai_scripts` VALUES ('90076', '29219', '0', '0', '100', '3', '10000', '20000', '10000', '10000', '11', '53632', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Volatile Ghoul - SPELL_GHOULPLOSION');
INSERT INTO `creature_ai_scripts` VALUES ('90077', '29206', '0', '0', '100', '3', '10000', '20000', '10000', '10000', '11', '53631', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Warrior of the Frozen Wastes - SPELL_CLEAVE');
INSERT INTO `creature_ai_scripts` VALUES ('90078', '29176', '0', '0', '100', '3', '10000', '20000', '10000', '10000', '11', '53631', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Korfax - SPELL_CLEAVE');
INSERT INTO `creature_ai_scripts` VALUES ('90079', '29176', '0', '0', '100', '3', '10000', '20000', '10000', '10000', '11', '53625', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Korfax - SPELL_CLEAVE');
INSERT INTO `creature_ai_scripts` VALUES ('90080', '29177', '14', '0', '100', '3', '10000', '20', '5000', '10000', '11', '37979', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Commander Eligor Dawnbringer - SPELL_HOLY_LIGHT2');
INSERT INTO `creature_ai_scripts` VALUES ('90081', '29181', '14', '0', '100', '3', '10000', '20', '5000', '10000', '11', '20664', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Rayne - SPELL_REJUVENATION');
INSERT INTO `creature_ai_scripts` VALUES ('90082', '29181', '14', '0', '100', '3', '10000', '20', '5000', '10000', '11', '25817', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Rayne - SPELL_TRANQUILITY');
INSERT INTO `creature_ai_scripts` VALUES ('90083', '29181', '0', '0', '100', '3', '10000', '20000', '10000', '20000', '11', '20678', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rayne - SPELL_STARFALL');
INSERT INTO `creature_ai_scripts` VALUES ('90084', '29181', '0', '0', '100', '3', '10000', '20000', '10000', '20000', '11', '21807', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rayne - SPELL_WRATH');