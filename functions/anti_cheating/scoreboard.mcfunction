#############################
# Medabots Server Functions #
#       Load Function       #
#############################

# Say server is (re)loaded
tellraw @a {"text":"[Server] Reload complete."}

#Re-add any objectives that may have been removed
scoreboard objectives add AFKTime dummy
scoreboard objectives add ActionFloorNr dummy
scoreboard objectives add AntiFly dummy
scoreboard objectives add AntiTank dummy
scoreboard objectives add ArrowID dummy
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
scoreboard objectives add BuyMedapart trigger
scoreboard objectives add CannonFire dummy
scoreboard objectives add ChaosTime dummy
scoreboard objectives add Charge dummy
scoreboard objectives add Cloud dummy
scoreboard objectives add Confuse dummy
scoreboard objectives add ConfuseTime dummy
scoreboard objectives add Constants dummy
scoreboard objectives add Damage dummy
scoreboard objectives add DeathTime dummy
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
scoreboard objectives add GamemodeTime dummy
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
scoreboard objectives add Killer dummy
scoreboard objectives add Laser dummy
scoreboard objectives add LastPlaceTime dummy
scoreboard objectives add LeaveStage trigger
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
scoreboard objectives add SelfDestruct minecraft.dropped:minecraft.gold_ingot
scoreboard objectives add SelfDestructTime dummy
scoreboard objectives add ServerStats dummy {"translate":"medabots_server:scoreboard.objective.server_stats"}
scoreboard objectives add SettingsCheck trigger
scoreboard objectives add ShootingTrap dummy
scoreboard objectives add ShopIndex1 trigger
scoreboard objectives add ShopIndex2 trigger
scoreboard objectives add ShopIndex3 trigger
scoreboard objectives add ShopIndex4 trigger
scoreboard objectives add Shopping trigger
scoreboard objectives add Sneak minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add Sneaking minecraft.custom:minecraft.sneak_time
scoreboard objectives add Sound dummy
scoreboard objectives add Stage dummy
scoreboard objectives add Stars dummy
scoreboard objectives add StatusClear dummy
scoreboard objectives add Steps dummy
scoreboard objectives add StreetPassCool dummy
scoreboard objectives add StreetPassHits dummy
scoreboard objectives add StreetPassTime dummy
scoreboard objectives add Swimming minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add Sword dummy
scoreboard objectives add TaskCheck trigger
scoreboard objectives add Time dummy
scoreboard objectives add Trading minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add Transform dummy
scoreboard objectives add TransformHID dummy
scoreboard objectives add TransformHTime dummy
scoreboard objectives add TransformLID dummy
scoreboard objectives add TransformLTime dummy
scoreboard objectives add TransformRID dummy
scoreboard objectives add TransformRTime dummy
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
scoreboard players set #-1 Constants -1
scoreboard players set #0 Constants 0
scoreboard players set #1 Constants 1
scoreboard players set #4 Constants 4
scoreboard players set #10 Constants 10
scoreboard players set #20 Constants 20
scoreboard players set #40 Constants 40
scoreboard players set #70 Constants 70
scoreboard players set #100 Constants 100
scoreboard players set #1000 Constants 1000
scoreboard players set #1005 Constants 1005
scoreboard players set Medabots: ServerStats 69
scoreboard players set Medals: ServerStats 12
scoreboard players set Bosses: ServerStats 13
scoreboard players set Enemies: ServerStats 9
scoreboard players set Passes: ServerStats 19
scoreboard players set Dev_Mode_Versions: ServerStats 0

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
bossbar add medabots_server:grassland_a/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:rock_a/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:jungle_a/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:seashore_a/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:snowfield_a/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:iceberg_a/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:ruins_out_a/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:ruins_in_a/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:laboratory_a/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:grassland_b/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:rock_b/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:jungle_b/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:seashore_b/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:snowfield_b/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:iceberg_b/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:ruins_out_b/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:ruins_in_b/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:laboratory_b/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:park_a/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:park_b/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:paradise_a/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:paradise_b/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:grassland_c/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:jungle_c/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:seashore_c/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:iceberg_c/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:ruins_out_c/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:laboratory_c/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:boxer/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:grassland_d/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:jungle_d/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:snowfield_d/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:iceberg_d/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:ruins_in_d/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:laboratory_d/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:grassland_e/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:rock_e/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:jungle_e/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:seashore_e/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:snowfield_e/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:iceberg_e/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:ruins_out_e/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:ruins_in_e/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:rock_f/robattle {"translate":"medabots_server:scoreboard.bossbar.time","color":"green"}
bossbar add medabots_server:argorok {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.argorok","color":"green"}]}
bossbar add medabots_server:argorok/mt_battle {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.argorok","color":"green"}]}
bossbar add medabots_server:argorok/arena {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.argorok","color":"green"}]}
bossbar add medabots_server:hr_d3 {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.hr_d3","color":"green"}]}
bossbar add medabots_server:hr_d3/mt_battle {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.hr_d3","color":"green"}]}
bossbar add medabots_server:hr_d3/arena {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.hr_d3","color":"green"}]}
bossbar add medabots_server:topmaniac {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.topmaniac","color":"green"}]}
bossbar add medabots_server:topmaniac/mt_battle {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.topmaniac","color":"green"}]}
bossbar add medabots_server:topmaniac/arena {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.topmaniac","color":"green"}]}
bossbar add medabots_server:lor_starcutter {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.lor_starcutter","color":"green"}]}
bossbar add medabots_server:lor_starcutter/mt_battle {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.lor_starcutter","color":"green"}]}
bossbar add medabots_server:lor_starcutter/arena {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.lor_starcutter","color":"green"}]}
bossbar add medabots_server:magolor {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.magolor","color":"green"}]}
bossbar add medabots_server:magolor/mt_battle {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.magolor","color":"green"}]}
bossbar add medabots_server:magolor/arena {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.magolor","color":"green"}]}
bossbar add medabots_server:magolor_soul {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.magolor_soul","color":"green"}]}
bossbar add medabots_server:magolor_soul/mt_battle {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.magolor_soul","color":"green"}]}
bossbar add medabots_server:magolor_soul/arena {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.magolor_soul","color":"green"}]}
bossbar add medabots_server:master_hand/1 {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.master_hand","color":"green"}]}
bossbar add medabots_server:master_hand/2 {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.master_hand","color":"green"}]}
bossbar add medabots_server:master_hand/3 {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.master_hand","color":"green"}]}
bossbar add medabots_server:master_hand/4 {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.master_hand","color":"green"}]}
bossbar add medabots_server:master_hand/mt_battle {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.master_hand","color":"green"}]}
bossbar add medabots_server:master_hand/arena {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.master_hand","color":"green"}]}
bossbar add medabots_server:crazy_hand/2 {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.crazy_hand","color":"green"}]}
bossbar add medabots_server:crazy_hand/3 {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.crazy_hand","color":"green"}]}
bossbar add medabots_server:crazy_hand/4 {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.crazy_hand","color":"green"}]}
bossbar add medabots_server:crazy_hand/mt_battle {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.crazy_hand","color":"green"}]}
bossbar add medabots_server:crazy_hand/arena {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.crazy_hand","color":"green"}]}
bossbar add medabots_server:master_giant {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.master_giant","color":"green"}]}
bossbar add medabots_server:master_giant/mt_battle {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.master_giant","color":"green"}]}
bossbar add medabots_server:master_giant/arena {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.master_giant","color":"green"}]}
bossbar add medabots_server:master_beast {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.master_beast","color":"green"}]}
bossbar add medabots_server:master_beast/mt_battle {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.master_beast","color":"green"}]}
bossbar add medabots_server:master_beast/arena {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.master_beast","color":"green"}]}
bossbar add medabots_server:master_edges {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.master_edges","color":"green"}]}
bossbar add medabots_server:master_edges/mt_battle {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.master_edges","color":"green"}]}
bossbar add medabots_server:master_edges/arena {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.master_edges","color":"green"}]}
bossbar add medabots_server:galleom/mt_battle {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.galleom","color":"green"}]}
bossbar add medabots_server:galleom/arena {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.galleom","color":"green"}]}
bossbar add medabots_server:dimentio/mt_battle {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.dimentio","color":"green"}]}
bossbar add medabots_server:dimentio/arena {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.dimentio","color":"green"}]}
bossbar add medabots_server:landia {"translate":"medabots_server:entity.team.boss","color":"green","extra":[{"text":" "},{"translate":"medabots_server:entity.landia","color":"green"}]}

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
bossbar set medabots_server:grassland_a/time max 72000
bossbar set medabots_server:rock_a/time max 72000
bossbar set medabots_server:jungle_a/time max 72000
bossbar set medabots_server:seashore_a/time max 72000
bossbar set medabots_server:snowfield_a/time max 72000
bossbar set medabots_server:iceberg_a/time max 72000
bossbar set medabots_server:ruins_out_a/time max 72000
bossbar set medabots_server:ruins_in_a/time max 72000
bossbar set medabots_server:laboratory_a/time max 72000
bossbar set medabots_server:grassland_b/time max 72000
bossbar set medabots_server:rock_b/time max 72000
bossbar set medabots_server:jungle_b/time max 72000
bossbar set medabots_server:seashore_b/time max 72000
bossbar set medabots_server:snowfield_b/time max 72000
bossbar set medabots_server:iceberg_b/time max 72000
bossbar set medabots_server:ruins_out_b/time max 72000
bossbar set medabots_server:ruins_in_b/time max 72000
bossbar set medabots_server:laboratory_b/time max 72000
bossbar set medabots_server:park_a/time max 72000
bossbar set medabots_server:park_b/time max 72000
bossbar set medabots_server:paradise_a/time max 72000
bossbar set medabots_server:paradise_b/time max 72000
bossbar set medabots_server:grassland_c/time max 72000
bossbar set medabots_server:jungle_c/time max 72000
bossbar set medabots_server:seashore_c/time max 72000
bossbar set medabots_server:iceberg_c/time max 72000
bossbar set medabots_server:ruins_out_c/time max 72000
bossbar set medabots_server:laboratory_c/time max 72000
bossbar set medabots_server:boxer/time max 72000
bossbar set medabots_server:grassland_d/time max 72000
bossbar set medabots_server:jungle_d/time max 72000
bossbar set medabots_server:snowfield_d/time max 72000
bossbar set medabots_server:iceberg_d/time max 72000
bossbar set medabots_server:ruins_in_d/time max 72000
bossbar set medabots_server:laboratory_d/time max 72000
bossbar set medabots_server:grassland_e/time max 72000
bossbar set medabots_server:rock_e/time max 72000
bossbar set medabots_server:jungle_e/time max 72000
bossbar set medabots_server:seashore_e/time max 72000
bossbar set medabots_server:snowfield_e/time max 72000
bossbar set medabots_server:iceberg_e/time max 72000
bossbar set medabots_server:ruins_out_e/time max 72000
bossbar set medabots_server:ruins_in_e/time max 72000
bossbar set medabots_server:rock_f/time max 72000
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
bossbar set medabots_server:grassland_a/robattle style notched_6
bossbar set medabots_server:rock_a/robattle style notched_6
bossbar set medabots_server:jungle_a/robattle style notched_6
bossbar set medabots_server:seashore_a/robattle style notched_6
bossbar set medabots_server:snowfield_a/robattle style notched_6
bossbar set medabots_server:iceberg_a/robattle style notched_6
bossbar set medabots_server:ruins_out_a/robattle style notched_6
bossbar set medabots_server:ruins_in_a/robattle style notched_6
bossbar set medabots_server:laboratory_a/robattle style notched_6
bossbar set medabots_server:grassland_b/robattle style notched_6
bossbar set medabots_server:rock_b/robattle style notched_6
bossbar set medabots_server:jungle_b/robattle style notched_6
bossbar set medabots_server:seashore_b/robattle style notched_6
bossbar set medabots_server:snowfield_b/robattle style notched_6
bossbar set medabots_server:iceberg_b/robattle style notched_6
bossbar set medabots_server:ruins_out_b/robattle style notched_6
bossbar set medabots_server:ruins_in_b/robattle style notched_6
bossbar set medabots_server:laboratory_b/robattle style notched_6
bossbar set medabots_server:park_a/robattle style notched_6
bossbar set medabots_server:park_b/robattle style notched_6
bossbar set medabots_server:paradise_a/robattle style notched_6
bossbar set medabots_server:paradise_b/robattle style notched_6
bossbar set medabots_server:grassland_c/robattle style notched_6
bossbar set medabots_server:jungle_c/robattle style notched_6
bossbar set medabots_server:seashore_c/robattle style notched_6
bossbar set medabots_server:iceberg_c/robattle style notched_6
bossbar set medabots_server:ruins_out_c/robattle style notched_6
bossbar set medabots_server:laboratory_c/robattle style notched_6
bossbar set medabots_server:boxer/robattle style notched_6
bossbar set medabots_server:grassland_d/robattle style notched_6
bossbar set medabots_server:jungle_d/robattle style notched_6
bossbar set medabots_server:snowfield_d/robattle style notched_6
bossbar set medabots_server:iceberg_d/robattle style notched_6
bossbar set medabots_server:ruins_in_d/robattle style notched_6
bossbar set medabots_server:laboratory_d/robattle style notched_6
bossbar set medabots_server:grassland_e/robattle style notched_6
bossbar set medabots_server:rock_e/robattle style notched_6
bossbar set medabots_server:jungle_e/robattle style notched_6
bossbar set medabots_server:seashore_e/robattle style notched_6
bossbar set medabots_server:snowfield_e/robattle style notched_6
bossbar set medabots_server:iceberg_e/robattle style notched_6
bossbar set medabots_server:ruins_out_e/robattle style notched_6
bossbar set medabots_server:ruins_in_e/robattle style notched_6
bossbar set medabots_server:rock_f/robattle style notched_6
bossbar set medabots_server:grassland_a/robattle max 3600
bossbar set medabots_server:rock_a/robattle max 3600
bossbar set medabots_server:jungle_a/robattle max 3600
bossbar set medabots_server:seashore_a/robattle max 3600
bossbar set medabots_server:snowfield_a/robattle max 3600
bossbar set medabots_server:iceberg_a/robattle max 3600
bossbar set medabots_server:ruins_out_a/robattle max 3600
bossbar set medabots_server:ruins_in_a/robattle max 3600
bossbar set medabots_server:laboratory_a/robattle max 3600
bossbar set medabots_server:grassland_b/robattle max 3600
bossbar set medabots_server:rock_b/robattle max 3600
bossbar set medabots_server:jungle_b/robattle max 3600
bossbar set medabots_server:seashore_b/robattle max 3600
bossbar set medabots_server:snowfield_b/robattle max 3600
bossbar set medabots_server:iceberg_b/robattle max 3600
bossbar set medabots_server:ruins_out_b/robattle max 3600
bossbar set medabots_server:ruins_in_b/robattle max 3600
bossbar set medabots_server:laboratory_b/robattle max 3600
bossbar set medabots_server:park_a/robattle max 3600
bossbar set medabots_server:park_b/robattle max 3600
bossbar set medabots_server:paradise_a/robattle max 3600
bossbar set medabots_server:paradise_b/robattle max 3600
bossbar set medabots_server:grassland_c/robattle max 3600
bossbar set medabots_server:jungle_c/robattle max 3600
bossbar set medabots_server:seashore_c/robattle max 3600
bossbar set medabots_server:iceberg_c/robattle max 3600
bossbar set medabots_server:ruins_out_c/robattle max 3600
bossbar set medabots_server:laboratory_c/robattle max 3600
bossbar set medabots_server:boxer/robattle max 3600
bossbar set medabots_server:grassland_d/robattle max 3600
bossbar set medabots_server:jungle_d/robattle max 3600
bossbar set medabots_server:snowfield_d/robattle max 3600
bossbar set medabots_server:iceberg_d/robattle max 3600
bossbar set medabots_server:ruins_in_d/robattle max 3600
bossbar set medabots_server:laboratory_d/robattle max 3600
bossbar set medabots_server:grassland_e/robattle max 3600
bossbar set medabots_server:rock_e/robattle max 3600
bossbar set medabots_server:jungle_e/robattle max 3600
bossbar set medabots_server:seashore_e/robattle max 3600
bossbar set medabots_server:snowfield_e/robattle max 3600
bossbar set medabots_server:iceberg_e/robattle max 3600
bossbar set medabots_server:ruins_out_e/robattle max 3600
bossbar set medabots_server:ruins_in_e/robattle max 3600
bossbar set medabots_server:rock_f/robattle max 3600
bossbar set medabots_server:grassland_a/robattle color green
bossbar set medabots_server:rock_a/robattle color green
bossbar set medabots_server:jungle_a/robattle color green
bossbar set medabots_server:seashore_a/robattle color green
bossbar set medabots_server:snowfield_a/robattle color green
bossbar set medabots_server:iceberg_a/robattle color green
bossbar set medabots_server:ruins_out_a/robattle color green
bossbar set medabots_server:ruins_in_a/robattle color green
bossbar set medabots_server:laboratory_a/robattle color green
bossbar set medabots_server:grassland_b/robattle color green
bossbar set medabots_server:rock_b/robattle color green
bossbar set medabots_server:jungle_b/robattle color green
bossbar set medabots_server:seashore_b/robattle color green
bossbar set medabots_server:snowfield_b/robattle color green
bossbar set medabots_server:iceberg_b/robattle color green
bossbar set medabots_server:ruins_out_b/robattle color green
bossbar set medabots_server:ruins_in_b/robattle color green
bossbar set medabots_server:laboratory_b/robattle color green
bossbar set medabots_server:park_a/robattle color green
bossbar set medabots_server:park_b/robattle color green
bossbar set medabots_server:paradise_a/robattle color green
bossbar set medabots_server:paradise_b/robattle color green
bossbar set medabots_server:grassland_c/robattle color green
bossbar set medabots_server:jungle_c/robattle color green
bossbar set medabots_server:seashore_c/robattle color green
bossbar set medabots_server:iceberg_c/robattle color green
bossbar set medabots_server:ruins_out_c/robattle color green
bossbar set medabots_server:laboratory_c/robattle color green
bossbar set medabots_server:boxer/robattle color green
bossbar set medabots_server:grassland_d/robattle color green
bossbar set medabots_server:jungle_d/robattle color green
bossbar set medabots_server:snowfield_d/robattle color green
bossbar set medabots_server:iceberg_d/robattle color green
bossbar set medabots_server:ruins_in_d/robattle color green
bossbar set medabots_server:laboratory_d/robattle color green
bossbar set medabots_server:grassland_e/robattle color green
bossbar set medabots_server:rock_e/robattle color green
bossbar set medabots_server:jungle_e/robattle color green
bossbar set medabots_server:seashore_e/robattle color green
bossbar set medabots_server:snowfield_e/robattle color green
bossbar set medabots_server:iceberg_e/robattle color green
bossbar set medabots_server:ruins_out_e/robattle color green
bossbar set medabots_server:ruins_in_e/robattle color green
bossbar set medabots_server:rock_f/robattle color green
bossbar set medabots_server:argorok style progress
bossbar set medabots_server:argorok/mt_battle style progress
bossbar set medabots_server:argorok/arena style progress
bossbar set medabots_server:hr_d3 style progress
bossbar set medabots_server:hr_d3/mt_battle style progress
bossbar set medabots_server:hr_d3/arena style progress
bossbar set medabots_server:topmaniac style progress
bossbar set medabots_server:topmaniac/mt_battle style progress
bossbar set medabots_server:topmaniac/arena style progress
bossbar set medabots_server:lor_starcutter style progress
bossbar set medabots_server:lor_starcutter/mt_battle style progress
bossbar set medabots_server:lor_starcutter/arena style progress
bossbar set medabots_server:magolor style progress
bossbar set medabots_server:magolor/mt_battle style progress
bossbar set medabots_server:magolor/arena style progress
bossbar set medabots_server:magolor_soul style progress
bossbar set medabots_server:magolor_soul/mt_battle style progress
bossbar set medabots_server:magolor_soul/arena style progress
bossbar set medabots_server:master_hand/1 style progress
bossbar set medabots_server:master_hand/2 style progress
bossbar set medabots_server:master_hand/3 style progress
bossbar set medabots_server:master_hand/4 style progress
bossbar set medabots_server:master_hand/mt_battle style progress
bossbar set medabots_server:master_hand/arena style progress
bossbar set medabots_server:crazy_hand/2 style progress
bossbar set medabots_server:crazy_hand/3 style progress
bossbar set medabots_server:crazy_hand/4 style progress
bossbar set medabots_server:crazy_hand/mt_battle style progress
bossbar set medabots_server:crazy_hand/arena style progress
bossbar set medabots_server:master_giant style progress
bossbar set medabots_server:master_giant/mt_battle style progress
bossbar set medabots_server:master_giant/arena style progress
bossbar set medabots_server:master_beast style progress
bossbar set medabots_server:master_beast/mt_battle style progress
bossbar set medabots_server:master_beast/arena style progress
bossbar set medabots_server:master_edges style progress
bossbar set medabots_server:master_edges/mt_battle style progress
bossbar set medabots_server:master_edges/arena style progress
bossbar set medabots_server:galleom/mt_battle style progress
bossbar set medabots_server:galleom/arena style progress
bossbar set medabots_server:dimentio/mt_battle style progress
bossbar set medabots_server:dimentio/arena style progress
bossbar set medabots_server:landia style progress
bossbar set medabots_server:argorok color red
bossbar set medabots_server:argorok/mt_battle color red
bossbar set medabots_server:argorok/arena color red
bossbar set medabots_server:hr_d3 color red
bossbar set medabots_server:hr_d3/mt_battle color red
bossbar set medabots_server:hr_d3/arena color red
bossbar set medabots_server:topmaniac color red
bossbar set medabots_server:topmaniac/mt_battle color red
bossbar set medabots_server:topmaniac/arena color red
bossbar set medabots_server:lor_starcutter color red
bossbar set medabots_server:lor_starcutter/mt_battle color red
bossbar set medabots_server:lor_starcutter/arena color red
bossbar set medabots_server:magolor color red
bossbar set medabots_server:magolor/mt_battle color red
bossbar set medabots_server:magolor/arena color red
bossbar set medabots_server:magolor_soul color red
bossbar set medabots_server:magolor_soul/mt_battle color red
bossbar set medabots_server:magolor_soul/arena color red
bossbar set medabots_server:master_hand/1 color red
bossbar set medabots_server:master_hand/2 color red
bossbar set medabots_server:master_hand/3 color red
bossbar set medabots_server:master_hand/4 color red
bossbar set medabots_server:master_hand/mt_battle color red
bossbar set medabots_server:master_hand/arena color red
bossbar set medabots_server:crazy_hand/2 color red
bossbar set medabots_server:crazy_hand/3 color red
bossbar set medabots_server:crazy_hand/4 color red
bossbar set medabots_server:crazy_hand/mt_battle color red
bossbar set medabots_server:crazy_hand/arena color red
bossbar set medabots_server:master_giant color red
bossbar set medabots_server:master_giant/mt_battle color red
bossbar set medabots_server:master_giant/arena color red
bossbar set medabots_server:master_beast color red
bossbar set medabots_server:master_beast/mt_battle color red
bossbar set medabots_server:master_beast/arena color red
bossbar set medabots_server:master_edges color red
bossbar set medabots_server:master_edges/mt_battle color red
bossbar set medabots_server:master_edges/arena color red
bossbar set medabots_server:galleom/mt_battle color red
bossbar set medabots_server:galleom/arena color red
bossbar set medabots_server:dimentio/mt_battle color red
bossbar set medabots_server:dimentio/arena color red
bossbar set medabots_server:landia color red