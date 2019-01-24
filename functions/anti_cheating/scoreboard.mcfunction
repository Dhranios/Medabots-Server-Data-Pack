#############################
# Medabots Server Functions #
#       Load Function       #
#############################

#Re-add any objectives that may have been removed
scoreboard objectives add AFKTime dummy
scoreboard objectives add ActionFloorNr dummy
scoreboard objectives add AntiFly dummy
scoreboard objectives add AntiTank dummy
scoreboard objectives add Attack minecraft.custom:minecraft.damage_dealt
scoreboard objectives add AuxiliaryCharge dummy
scoreboard objectives add AuxiliaryTime dummy
scoreboard objectives add Battle dummy
scoreboard objectives add BattlingMedabots dummy
scoreboard objectives add Boat minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add Break dummy
scoreboard objectives add Bug dummy
scoreboard objectives add BugTime dummy
scoreboard objectives add BugTimer dummy
scoreboard objectives add CannonFire dummy
scoreboard objectives add Charge dummy
scoreboard objectives add Cloud dummy
scoreboard objectives add Confuse dummy
scoreboard objectives add ConfuseTime dummy
scoreboard objectives add Constants dummy
scoreboard objectives add Damage dummy
scoreboard objectives add Death deathCount
scoreboard objectives add Defense dummy
scoreboard objectives add DefenseTime dummy
scoreboard objectives add Destroy dummy
scoreboard objectives add Detect dummy
scoreboard objectives add DetectTime dummy
scoreboard objectives add Dialog dummy
scoreboard objectives add DialogNr dummy
scoreboard objectives add Donor dummy
scoreboard objectives add Drop minecraft.custom:minecraft.drop
scoreboard objectives add EdgeGrabAble dummy
scoreboard objectives add EffectTimer dummy
scoreboard objectives add Error dummy
scoreboard objectives add Fall minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add Falling dummy
scoreboard objectives add Float dummy
scoreboard objectives add FloorSwitchTime dummy
scoreboard objectives add Fly dummy
scoreboard objectives add FlyCourse dummy
scoreboard objectives add FlyCourseFee dummy
scoreboard objectives add FlyCourseLapTime dummy
scoreboard objectives add FlyCourseLaps dummy
scoreboard objectives add FlyCoursePlace dummy
scoreboard objectives add FlyCourseSpeed trigger
scoreboard objectives add FlyCourseTime dummy
scoreboard objectives add FlyHackTime dummy
scoreboard objectives add FlyTime dummy
scoreboard objectives add Flying minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add Freeze dummy
scoreboard objectives add FreezeTime dummy
scoreboard objectives add Gatling dummy
scoreboard objectives add GoalSearch dummy
scoreboard objectives add GuardGravity dummy
scoreboard objectives add GuardGunpowder dummy
scoreboard objectives add GuardNr dummy
scoreboard objectives add GuardOptical dummy
scoreboard objectives add Hammer dummy
scoreboard objectives add HeadArmor dummy
scoreboard objectives add HeadDanger dummy
scoreboard objectives add HeadPer dummy
scoreboard objectives add HeadPower dummy
scoreboard objectives add HeadUses dummy
scoreboard objectives add HeadUsesDanger dummy
scoreboard objectives add HeadUsesPer dummy
scoreboard objectives add Heal dummy
scoreboard objectives add Health dummy
scoreboard objectives add Hearts health
scoreboard objectives add Hide dummy
scoreboard objectives add HideTime dummy
scoreboard objectives add Hold dummy
scoreboard objectives add HoldTime dummy
scoreboard objectives add HomeRot dummy
scoreboard objectives add HomeX dummy
scoreboard objectives add HomeY dummy
scoreboard objectives add HomeZ dummy
scoreboard objectives add Horse minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add Hunger food
scoreboard objectives add Ineffective dummy
scoreboard objectives add IneffectiveTime dummy
scoreboard objectives add Infect dummy
scoreboard objectives add InfectTime dummy
scoreboard objectives add InfectTimer dummy
scoreboard objectives add Jump minecraft.custom:minecraft.jump
scoreboard objectives add Killer playerKillCount
scoreboard objectives add Laser dummy
scoreboard objectives add LastPlaceTime dummy
scoreboard objectives add LeftArmArmor dummy
scoreboard objectives add LeftArmDanger dummy
scoreboard objectives add LeftArmPer dummy
scoreboard objectives add LeftArmPower dummy
scoreboard objectives add LegsDefense dummy
scoreboard objectives add LegsArmor dummy
scoreboard objectives add LegsDanger dummy
scoreboard objectives add LegsPer dummy
scoreboard objectives add Level level
scoreboard objectives add LifeTime dummy
scoreboard objectives add MagolorBattle dummy
scoreboard objectives add MasterCrazySpec trigger
scoreboard objectives add MaxHeadArmor dummy
scoreboard objectives add MaxHeadUses dummy
scoreboard objectives add MaxLeftArmArmor dummy
scoreboard objectives add MaxLegsArmor dummy
scoreboard objectives add MaxRightArmArmor dummy
scoreboard objectives add Medabot dummy
scoreboard objectives add MedabotMet dummy
scoreboard objectives add MedabotNr dummy
scoreboard objectives add Medaforce dummy
scoreboard objectives add MedaforceControl dummy
scoreboard objectives add MedaforceTimer dummy
scoreboard objectives add MedapartType dummy
scoreboard objectives add MeleeTrap dummy
scoreboard objectives add Melt dummy
scoreboard objectives add Message dummy
scoreboard objectives add Minecart minecraft.custom:minecraft.minecart_one_cm
scoreboard objectives add Missile dummy
scoreboard objectives add Moderator dummy
scoreboard objectives add Money dummy
scoreboard objectives add MotionX dummy
scoreboard objectives add MotionY dummy
scoreboard objectives add MotionZ dummy
scoreboard objectives add Moving dummy
scoreboard objectives add MtBattle dummy
scoreboard objectives add Music dummy
scoreboard objectives add MusicType dummy
scoreboard objectives add Napalm dummy
scoreboard objectives add NoDefend dummy
scoreboard objectives add NoDefendTime dummy
scoreboard objectives add Offline minecraft.custom:minecraft.leave_game
scoreboard objectives add OnlineTime dummy
scoreboard objectives add OtherX dummy
scoreboard objectives add OtherY dummy
scoreboard objectives add OtherZ dummy
scoreboard objectives add OverheatingFly dummy
scoreboard objectives add OverheatingMedal dummy
scoreboard objectives add Paralyze dummy
scoreboard objectives add ParalyzeTime dummy
scoreboard objectives add PerfectGuard dummy
scoreboard objectives add PerfectGuardTime dummy
scoreboard objectives add Pig minecraft.custom:minecraft.pig_one_cm
scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add Press dummy
scoreboard objectives add PreviousError dummy
scoreboard objectives add Question trigger
scoreboard objectives add RandomMessage dummy
scoreboard objectives add Range dummy
scoreboard objectives add Repair dummy
scoreboard objectives add Rifle dummy
scoreboard objectives add RightArmArmor dummy
scoreboard objectives add RightArmDanger dummy
scoreboard objectives add RightArmPer dummy
scoreboard objectives add RightArmPower dummy
scoreboard objectives add Rings dummy
scoreboard objectives add RingsTotal dummy
scoreboard objectives add RobattleMusic dummy
scoreboard objectives add Run minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add Sacrifice dummy
scoreboard objectives add Scout dummy
scoreboard objectives add ScoutTime dummy
scoreboard objectives add SelfDestruct minecraft.dropped:minecraft.nether_star
scoreboard objectives add SelfDestructTime dummy
scoreboard objectives add ServerStats dummy {"translate":"medabots_server:scoreboard.objective.server_stats"}
scoreboard objectives add SettingsCheck trigger
scoreboard objectives add ShootingTrap dummy
scoreboard objectives add Shopping trigger
scoreboard objectives add Sneak minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add Sneaking minecraft.custom:minecraft.sneak_time
scoreboard objectives add Sound dummy
scoreboard objectives add Stage dummy
scoreboard objectives add Stars dummy
scoreboard objectives add StatusClear dummy
scoreboard objectives add StreetPassCool dummy
scoreboard objectives add StreetPassHits dummy
scoreboard objectives add StreetPassTime dummy
scoreboard objectives add Swimming minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add Sword dummy
scoreboard objectives add TaskCheck trigger
scoreboard objectives add Time dummy
scoreboard objectives add Trading minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add UpToDate dummy
scoreboard objectives add UsePart minecraft.used:minecraft.fishing_rod
scoreboard objectives add Verified trigger
scoreboard objectives add Walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add WalkOnWater minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add WalkUnderWater minecraft.custom:minecraft.walk_under_water_one_cm
scoreboard objectives add Wave dummy
scoreboard objectives add WearsArmor armor

# Set slots
scoreboard objectives setdisplay sidebar ServerStats
scoreboard objectives setdisplay list Stars
scoreboard objectives setdisplay belowName Level

# Set Server stats
scoreboard players set #0 Constants 0
scoreboard players set #1 Constants 1
scoreboard players set #10 Constants 10
scoreboard players set #20 Constants 20
scoreboard players set #40 Constants 40
scoreboard players set #70 Constants 70
scoreboard players set #100 Constants 100
scoreboard players set #1000 Constants 1000
scoreboard players set #1005 Constants 1005
scoreboard players set Medabots: ServerStats 69
scoreboard players set Stage_Versions: ServerStats 133
scoreboard players set Dev_Mode_Versions: ServerStats 0
scoreboard players set Stages: ServerStats 62
scoreboard players set Advancements: ServerStats 29
scoreboard players set Bosses: ServerStats 13
scoreboard players set Enemies: ServerStats 9
scoreboard players set Medals: ServerStats 8

# Re-add any teams that may have been removed
team add AFK {"translate":"medabots_server:scoreboard.team.afk"}
team add Advanced {"translate":"medabots_server:scoreboard.team.advanced"}
team add Bot {"translate":"medabots_server:scoreboard.team.bot"}
team add Donator {"translate":"medabots_server:scoreboard.team.donator"}
team add EnemyPlayer {"translate":"medabots_server:scoreboard.team.enemy"}
team add Moderator {"translate":"medabots_server:scoreboard.team.moderator"}
team add MtBattleMaster {"translate":"medabots_server:scoreboard.team.mt_battle_master"}
team add Passive
team add Rubberobo
team add StageBoss {"translate":"medabots_server:scoreboard.team.boss"}
team add StageEnemy {"translate":"medabots_server:scoreboard.team.enemy"}

# Set team data
team modify AFK collisionRule never
team modify AFK color black
team modify AFK friendlyFire false
team modify AFK nametagVisibility never
team modify AFK seeFriendlyInvisibles false
team modify AFK prefix {"translate":"medabots_server:entity.team.afk","extra":[{"text":" "}],"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:scoreboard.team.afk"}}}
team modify Advanced color aqua
team modify Advanced prefix {"translate":"medabots_server:entity.team.advanced","extra":[{"text":" "}],"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:scoreboard.team.advanced"}}}
team modify Bot color gray
team modify Bot prefix {"translate":"medabots_server:entity.team.bot","extra":[{"text":" "}],"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:scoreboard.team.bot"}}}
team modify Donator color gold
team modify Donator prefix {"translate":"medabots_server:entity.team.donator","extra":[{"text":" "}],"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:scoreboard.team.donator"}}}
team modify EnemyPlayer collisionRule never
team modify EnemyPlayer color green
team modify EnemyPlayer friendlyFire true
team modify EnemyPlayer nametagVisibility never
team modify EnemyPlayer seeFriendlyInvisibles false
team modify EnemyPlayer prefix {"translate":"medabots_server:entity.team.enemy","extra":[{"text":" "}],"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:scoreboard.team.enemy"}}}
team modify Moderator color red
team modify Moderator prefix {"translate":"medabots_server:entity.team.moderator","extra":[{"text":" "}],"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:scoreboard.team.moderator"}}}
team modify MtBattleMaster color light_purple
team modify MtBattleMaster prefix {"translate":"medabots_server:entity.team.mt_battle_master","extra":[{"text":" "}],"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:scoreboard.team.mt_battle_master"}}}
team modify StageBoss collisionRule never
team modify StageBoss color green
team modify StageBoss friendlyFire false
team modify StageBoss nametagVisibility never
team modify StageBoss seeFriendlyInvisibles false
team modify StageBoss prefix {"translate":"medabots_server:entity.team.boss","extra":[{"text":" "}],"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:scoreboard.team.boss"}}}
team modify StageEnemy collisionRule never
team modify StageEnemy color green
team modify StageEnemy friendlyFire false
team modify StageEnemy nametagVisibility never
team modify StageEnemy seeFriendlyInvisibles false
team modify StageEnemy prefix {"translate":"medabots_server:entity.team.enemy","extra":[{"text":" "}],"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:scoreboard.team.enemy"}}}

# Re-add any bossbars that may have been removed
bossbar add medabots_server:grassland_a/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:rock_a/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:jungle_a/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:seashore_a/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:snowfield_a/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:iceberg_a/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:ruins_out_a/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:ruins_in_a/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:laboratory_a/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:grassland_b/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:rock_b/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:jungle_b/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:seashore_b/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:snowfield_b/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:iceberg_b/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:ruins_out_b/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:ruins_in_b/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:laboratory_b/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:park_a/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:park_b/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:paradise_a/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:paradise_b/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:grassland_c/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:jungle_c/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:seashore_c/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:iceberg_c/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:ruins_out_c/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:laboratory_c/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:boxer/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:grassland_d/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:jungle_d/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:snowfield_d/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:iceberg_d/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:ruins_in_d/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:laboratory_d/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:grassland_e/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:rock_e/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:jungle_e/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:seashore_e/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:snowfield_e/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:iceberg_e/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:ruins_out_e/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:ruins_in_e/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:rock_f/time {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}

# Set bossbar data
bossbar set medabots_server:grassland_a/time style notched_6
bossbar set medabots_server:rock_a/time style notched_6
bossbar set medabots_server:jungle_a/time style notched_6
bossbar set medabots_server:seashore_a/time style notched_6
bossbar set medabots_server:snowfield_a/time style notched_6
bossbar set medabots_server:iceberg_a/time style notched_6
bossbar set medabots_server:ruins_out_a/time style notched_6
bossbar set medabots_server:ruins_in_a/time style notched_6
bossbar set medabots_server:laboratory_a/time style notched_6
bossbar set medabots_server:grassland_b/time style notched_6
bossbar set medabots_server:rock_b/time style notched_6
bossbar set medabots_server:jungle_b/time style notched_6
bossbar set medabots_server:seashore_b/time style notched_6
bossbar set medabots_server:snowfield_b/time style notched_6
bossbar set medabots_server:iceberg_b/time style notched_6
bossbar set medabots_server:ruins_out_b/time style notched_6
bossbar set medabots_server:ruins_in_b/time style notched_6
bossbar set medabots_server:laboratory_b/time style notched_6
bossbar set medabots_server:park_a/time style notched_6
bossbar set medabots_server:park_b/time style notched_6
bossbar set medabots_server:paradise_a/time style notched_6
bossbar set medabots_server:paradise_b/time style notched_6
bossbar set medabots_server:grassland_c/time style notched_6
bossbar set medabots_server:jungle_c/time style notched_6
bossbar set medabots_server:seashore_c/time style notched_6
bossbar set medabots_server:iceberg_c/time style notched_6
bossbar set medabots_server:ruins_out_c/time style notched_6
bossbar set medabots_server:laboratory_c/time style notched_6
bossbar set medabots_server:boxer/time style notched_6
bossbar set medabots_server:grassland_d/time style notched_6
bossbar set medabots_server:jungle_d/time style notched_6
bossbar set medabots_server:snowfield_d/time style notched_6
bossbar set medabots_server:iceberg_d/time style notched_6
bossbar set medabots_server:ruins_in_d/time style notched_6
bossbar set medabots_server:laboratory_d/time style notched_6
bossbar set medabots_server:grassland_e/time style notched_6
bossbar set medabots_server:rock_e/time style notched_6
bossbar set medabots_server:jungle_e/time style notched_6
bossbar set medabots_server:seashore_e/time style notched_6
bossbar set medabots_server:snowfield_e/time style notched_6
bossbar set medabots_server:iceberg_e/time style notched_6
bossbar set medabots_server:ruins_out_e/time style notched_6
bossbar set medabots_server:ruins_in_e/time style notched_6
bossbar set medabots_server:rock_f/time style notched_6
bossbar set medabots_server:grassland_a/time max 3600
bossbar set medabots_server:rock_a/time max 3600
bossbar set medabots_server:jungle_a/time max 3600
bossbar set medabots_server:seashore_a/time max 3600
bossbar set medabots_server:snowfield_a/time max 3600
bossbar set medabots_server:iceberg_a/time max 3600
bossbar set medabots_server:ruins_out_a/time max 3600
bossbar set medabots_server:ruins_in_a/time max 3600
bossbar set medabots_server:laboratory_a/time max 3600
bossbar set medabots_server:grassland_b/time max 3600
bossbar set medabots_server:rock_b/time max 3600
bossbar set medabots_server:jungle_b/time max 3600
bossbar set medabots_server:seashore_b/time max 3600
bossbar set medabots_server:snowfield_b/time max 3600
bossbar set medabots_server:iceberg_b/time max 3600
bossbar set medabots_server:ruins_out_b/time max 3600
bossbar set medabots_server:ruins_in_b/time max 3600
bossbar set medabots_server:laboratory_b/time max 3600
bossbar set medabots_server:park_a/time max 3600
bossbar set medabots_server:park_b/time max 3600
bossbar set medabots_server:paradise_a/time max 3600
bossbar set medabots_server:paradise_b/time max 3600
bossbar set medabots_server:grassland_c/time max 3600
bossbar set medabots_server:jungle_c/time max 3600
bossbar set medabots_server:seashore_c/time max 3600
bossbar set medabots_server:iceberg_c/time max 3600
bossbar set medabots_server:ruins_out_c/time max 3600
bossbar set medabots_server:laboratory_c/time max 3600
bossbar set medabots_server:boxer/time max 3600
bossbar set medabots_server:grassland_d/time max 3600
bossbar set medabots_server:jungle_d/time max 3600
bossbar set medabots_server:snowfield_d/time max 3600
bossbar set medabots_server:iceberg_d/time max 3600
bossbar set medabots_server:ruins_in_d/time max 3600
bossbar set medabots_server:laboratory_d/time max 3600
bossbar set medabots_server:grassland_e/time max 3600
bossbar set medabots_server:rock_e/time max 3600
bossbar set medabots_server:jungle_e/time max 3600
bossbar set medabots_server:seashore_e/time max 3600
bossbar set medabots_server:snowfield_e/time max 3600
bossbar set medabots_server:iceberg_e/time max 3600
bossbar set medabots_server:ruins_out_e/time max 3600
bossbar set medabots_server:ruins_in_e/time max 3600
bossbar set medabots_server:rock_f/time max 3600
bossbar set medabots_server:grassland_a/time color green
bossbar set medabots_server:rock_a/time color green
bossbar set medabots_server:jungle_a/time color green
bossbar set medabots_server:seashore_a/time color green
bossbar set medabots_server:snowfield_a/time color green
bossbar set medabots_server:iceberg_a/time color green
bossbar set medabots_server:ruins_out_a/time color green
bossbar set medabots_server:ruins_in_a/time color green
bossbar set medabots_server:laboratory_a/time color green
bossbar set medabots_server:grassland_b/time color green
bossbar set medabots_server:rock_b/time color green
bossbar set medabots_server:jungle_b/time color green
bossbar set medabots_server:seashore_b/time color green
bossbar set medabots_server:snowfield_b/time color green
bossbar set medabots_server:iceberg_b/time color green
bossbar set medabots_server:ruins_out_b/time color green
bossbar set medabots_server:ruins_in_b/time color green
bossbar set medabots_server:laboratory_b/time color green
bossbar set medabots_server:park_a/time color green
bossbar set medabots_server:park_b/time color green
bossbar set medabots_server:paradise_a/time color green
bossbar set medabots_server:paradise_b/time color green
bossbar set medabots_server:grassland_c/time color green
bossbar set medabots_server:jungle_c/time color green
bossbar set medabots_server:seashore_c/time color green
bossbar set medabots_server:iceberg_c/time color green
bossbar set medabots_server:ruins_out_c/time color green
bossbar set medabots_server:laboratory_c/time color green
bossbar set medabots_server:boxer/time color green
bossbar set medabots_server:grassland_d/time color green
bossbar set medabots_server:jungle_d/time color green
bossbar set medabots_server:snowfield_d/time color green
bossbar set medabots_server:iceberg_d/time color green
bossbar set medabots_server:ruins_in_d/time color green
bossbar set medabots_server:laboratory_d/time color green
bossbar set medabots_server:grassland_e/time color green
bossbar set medabots_server:rock_e/time color green
bossbar set medabots_server:jungle_e/time color green
bossbar set medabots_server:seashore_e/time color green
bossbar set medabots_server:snowfield_e/time color green
bossbar set medabots_server:iceberg_e/time color green
bossbar set medabots_server:ruins_out_e/time color green
bossbar set medabots_server:ruins_in_e/time color green
bossbar set medabots_server:rock_f/time color green