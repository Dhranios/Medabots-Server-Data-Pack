# Reset scores
scoreboard players reset @s[tag=!hostile,scores={LegsArmor=-1..}] LegsArmor
scoreboard players reset @s[tag=!hostile,scores={LeftArmArmor=-1..}] LeftArmArmor
scoreboard players reset @s[tag=!hostile,scores={RightArmArmor=-1..}] RightArmArmor
scoreboard players reset @s[tag=!hostile,scores={HeadArmor=-1..}] HeadArmor
scoreboard players reset @s[tag=!hostile,scores={HeadUses=-1..}] HeadUses
scoreboard players reset @s[tag=!hostile,scores={MaxLegsArmor=0..}] MaxLegsArmor
scoreboard players reset @s[tag=!hostile,scores={MaxLeftArmArmor=0..}] MaxLeftArmArmor
scoreboard players reset @s[tag=!hostile,scores={MaxRightArmArmor=0..}] MaxRightArmArmor
scoreboard players reset @s[tag=!hostile,scores={MaxHeadArmor=0..}] MaxHeadArmor
scoreboard players reset @s[tag=!hostile,scores={MaxHeadUses=0..}] MaxHeadUses
scoreboard players reset @s[tag=!hostile,scores={LegsDefense=0..}] LegsDefense
scoreboard players reset @s[tag=!hostile,scores={LegsPer=..100}] LegsPer
scoreboard players reset @s[tag=!hostile,scores={LeftArmPer=..100}] LeftArmPer
scoreboard players reset @s[tag=!hostile,scores={RightArmPer=..100}] RightArmPer
scoreboard players reset @s[tag=!hostile,scores={HeadPer=..100}] HeadPer
scoreboard players reset @s[tag=!hostile,scores={HeadUsesPer=..100}] HeadUsesPer
scoreboard players set @s[tag=!hostile,scores={Medabot=1..}] Medabot 0

# Set scores
scoreboard players set @s[scores={Error=1..,Battle=1..}] Battle 0
scoreboard players set @s[scores={Death=1..,Battle=1..}] Battle 0
execute if entity @s[scores={Battle=1..},tag=!hostile] run function medabots_server:medaparts/set_stats
team join EnemyPlayer @s[team=!EnemyPlayer,scores={Battle=1..}]
scoreboard players set @a[team=Moderator] Moderator 1
tag @s[team=Moderator,tag=!bug_tester] add bug_tester


# Don't allow combat for creative players and spectators
scoreboard players set @s[gamemode=creative,scores={Battle=1..}] Battle 0
scoreboard players set @s[gamemode=spectator,scores={Battle=1..}] Battle 0

# Prevent spawn point from moving
spawnpoint @s -286 55 -52

# Deactivate parts
scoreboard players reset @s[tag=!hostile,scores={Stage=1..,Battle=0}] Stage
execute if entity @s[scores={Battle=0},tag=hostile] run function medabots_server:medaparts/reset