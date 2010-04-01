## TeleNPC
replace into `creature_template` (`entry`, `difficulty_entry_1`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) values('90002','0','7061','0','7061','0','TeleNPC Employee','Teleport Master',NULL,'80','80','25000','25000','0','0','10000','35','35','65553','1','1.5','1','1763','1763','0','1511','1','1000','0','0','0','0','0','0','0','0','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','0','1','0','0','0','telenpc');

##TeleNPC Spawnat
replace into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values
('250000', '90002', '0', '1', '1', '7061', '0', '-4902.14', '-970.169', '501.445', '2.26234', '25', '0', '0', '25000', '0', '0', '0'),
('250001', '90002', '530', '1', '1', '7061', '0', '-1861.74', '5441.7', '-10.4638', '4.61735', '25', '0', '0', '25000', '0', '0', '0'),
('250002', '90002', '530', '1', '1', '0', '0', '9356.65', '-7280.5', '14.2403', '2.58004', '25', '0', '0', '25000', '0', '0', '0'),
('250003', '90002', '0', '1', '1', '7061', '0', '1813.53', '238.539', '60.4944', '0.102097', '25', '0', '0', '25000', '0', '0', '0'),
('250004', '90002', '1', '1', '1', '7061', '0', '-1291.55', '136.649', '131.106', '1.20406', '25', '0', '0', '25000', '0', '0', '0'),
('250005', '90002', '1', '1', '1', '7061', '0', '1579.17', '-4417.39', '7.84218', '3.48717', '25', '0', '0', '25000', '0', '0', '0'),
('250006', '90002', '0', '1', '1', '0', '0', '-14340.5', '599.961', '107.723', '1.55066', '25', '0', '0', '25000', '0', '0', '0'),
('250007', '90002', '0', '1', '1', '0', '0', '-14406.8', '571.105', '146.991', '5.74003', '25', '0', '0', '25000', '0', '0', '0'),
('250008', '90002', '0', '1', '1', '0', '0', '-8956.44', '511.693', '96.5971', '3.66388', '25', '0', '0', '25000', '0', '0', '0'),
('250009', '90002', '1', '1', '1', '0', '0', '9944.91', '2495.33', '1317.56', '4.4375', '25', '0', '0', '25000', '0', '0', '0'),
('250010', '90002', '530', '1', '1', '7061', '0', '-3950.83', '-11657.8', '-138.657', '2.43866', '25', '0', '0', '25000', '0', '0', '0'),
('250011', '90002', '571', '1', '1', '0', '0', '5818.81', '641.09', '647.81', '3.2', '25', '0', '0', '25000', '0', '0', '0'),
('250012', '90002', '0', '1', '1', '0', '0', '-14324.1', '600.97', '101.6', '6.18', '25', '0', '0', '25000', '0', '0', '0'),
('250013', '90002', '0', '1', '1', '0', '0', '-4573.31', '-3178.52', '34.22', '2.23', '25', '0', '0', '25000', '0', '0', '0'),
('250014', '90002', '0', '1', '1', '0', '0', '6729.21', '-4623.49', '720.96', '3.2', '25', '0', '0', '25000', '0', '0', '0'),
('250015', '90002', '1', '1', '1', '0', '0', '16235.6', '16268.8', '13.6325', '3.60263', '25', '0', '0', '25000', '0', '0', '0'), ##GM Island
('250016', '90002', '0', '1', '1', '0', '0', '2369.15', '-5672.21', '426.038', '3.17132', '25', '0', '0', '25000', '0', '0', '0'); ##Ebon Hold