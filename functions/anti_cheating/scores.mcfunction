# Reset scores
scoreboard players reset @s[scores={OverheatingFly=0}] OverheatingFly

# Set scores
team join EnemyPlayer @s[team=!EnemyPlayer,scores={Battle=1..3}]
scoreboard players set @a[team=Moderator] Moderator 1
tag @s[team=Moderator,tag=!bug_tester] add bug_tester

# Don't allow combat for creative players
tellraw @s[gamemode=creative,scores={Battle=1..3}] {"translate":"medabots_server:message.stage.creative","color":"green"}
scoreboard players set @s[gamemode=creative,scores={Battle=1..3}] Battle 0

# Prevent spawn point from moving
spawnpoint @s -286 55 -52

# Deactivate parts
execute unless entity @s[scores={FlyCourse=0..}] run scoreboard players reset @s[tag=!stage_builder,tag=!hostile,scores={Stage=0..}] Stage
execute if entity @s[scores={Battle=0},tag=hostile] run function medabots_server:gamemodes/default/reset
execute if entity @s[tag=!hostile,nbt={Inventory:[{tag:{medabots_server:{activated:1b}}}]}] store result entity @s Inventory[{tag:{medabots_server:{activated:1b}}}].tag.medabots_server.activated byte 1 run scoreboard players get #0 Constants