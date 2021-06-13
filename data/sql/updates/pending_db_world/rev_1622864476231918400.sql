INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1622864476231918400');

SET @DIST = 4;
SET @FOLLOW_AI = 2;
SET @LEFT_BEARING = 300;
SET @RIGHT_BEARING = 60;

SET @GROUP1_LEADER = 33210;
SET @GROUP1_LEFT = 33226;
SET @GROUP1_RIGHT = 33241;

SET @GROUP2_LEADER = 33243;
SET @GROUP2_LEFT = 33229;
SET @GROUP2_RIGHT = 33228;

SET @GROUP3_LEADER = 33240;
SET @GROUP3_LEFT = 33209;
SET @GROUP3_RIGHT = 33208;

SET @GROUP4_LEADER = 33242;
SET @GROUP4_LEFT = 33211;
SET @GROUP4_RIGHT = 33227;

SET @GROUP5_LEADER = 33245;
SET @GROUP5_LEFT = 33230;
SET @GROUP5_RIGHT = 33231;

SET @GROUP6_LEADER = 33246;
SET @GROUP6_LEFT = 33214;
SET @GROUP6_RIGHT = 33215;

SET @GROUP7_LEADER = 33244;
SET @GROUP7_LEFT = 33212;
SET @GROUP7_RIGHT = 33213;

UPDATE `creature` SET `wander_distance` = 15, `MovementType` = 1 WHERE `guid` IN (
@GROUP1_LEADER,
@GROUP2_LEADER,
@GROUP3_LEADER,
@GROUP4_LEADER,
@GROUP5_LEADER,
@GROUP6_LEADER,
@GROUP7_LEADER
);

DELETE FROM `creature_formations` WHERE `memberGUID` IN 
(
@GROUP1_LEADER, @GROUP1_LEFT, @GROUP1_RIGHT,
@GROUP2_LEADER, @GROUP2_LEFT, @GROUP2_RIGHT,
@GROUP3_LEADER, @GROUP3_LEFT, @GROUP3_RIGHT,
@GROUP4_LEADER, @GROUP4_LEFT, @GROUP4_RIGHT,
@GROUP5_LEADER, @GROUP5_LEFT, @GROUP5_RIGHT,
@GROUP6_LEADER, @GROUP6_LEFT, @GROUP6_RIGHT,
@GROUP7_LEADER, @GROUP7_LEFT, @GROUP7_RIGHT
);

INSERT INTO `creature_formations` (leaderGUID, memberGUID, dist, angle, groupAI) VALUES 
(@GROUP1_LEADER, @GROUP1_LEADER, 0, 0, 0),
(@GROUP1_LEADER, @GROUP1_LEFT, @DIST, @LEFT_BEARING, @FOLLOW_AI),
(@GROUP1_LEADER, @GROUP1_RIGHT, @DIST, @RIGHT_BEARING, @FOLLOW_AI),
(@GROUP2_LEADER, @GROUP2_LEADER, 0, 0, 0),
(@GROUP2_LEADER, @GROUP2_LEFT, @DIST, @LEFT_BEARING, @FOLLOW_AI),
(@GROUP2_LEADER, @GROUP2_RIGHT, @DIST, @RIGHT_BEARING, @FOLLOW_AI),
(@GROUP3_LEADER, @GROUP3_LEADER, 0, 0, 0),
(@GROUP3_LEADER, @GROUP3_LEFT, @DIST, @LEFT_BEARING, @FOLLOW_AI),
(@GROUP3_LEADER, @GROUP3_RIGHT, @DIST, @RIGHT_BEARING, @FOLLOW_AI),
(@GROUP4_LEADER, @GROUP4_LEADER, 0, 0, 0),
(@GROUP4_LEADER, @GROUP4_LEFT, @DIST, @LEFT_BEARING, @FOLLOW_AI),
(@GROUP4_LEADER, @GROUP4_RIGHT, @DIST, @RIGHT_BEARING, @FOLLOW_AI),
(@GROUP5_LEADER, @GROUP5_LEADER, 0, 0, 0),
(@GROUP5_LEADER, @GROUP5_LEFT, @DIST, @LEFT_BEARING, @FOLLOW_AI),
(@GROUP5_LEADER, @GROUP5_RIGHT, @DIST, @RIGHT_BEARING, @FOLLOW_AI),
(@GROUP6_LEADER, @GROUP6_LEADER, 0, 0, 0),
(@GROUP6_LEADER, @GROUP6_LEFT, @DIST, @LEFT_BEARING, @FOLLOW_AI),
(@GROUP6_LEADER, @GROUP6_RIGHT, @DIST, @RIGHT_BEARING, @FOLLOW_AI),
(@GROUP7_LEADER, @GROUP7_LEADER, 0, 0, 0),
(@GROUP7_LEADER, @GROUP7_LEFT, @DIST, @LEFT_BEARING, @FOLLOW_AI),
(@GROUP7_LEADER, @GROUP7_RIGHT, @DIST, @RIGHT_BEARING, @FOLLOW_AI);
