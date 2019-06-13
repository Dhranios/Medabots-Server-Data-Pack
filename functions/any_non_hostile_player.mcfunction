# Remove the data that is left over from combat
function medabots_server:medaparts/remove_scores

# Fast roads
execute if entity @s[tag=action_mode] run function medabots_server:other/action_mode

# No drowning
execute if block ~ ~1 ~ minecraft:water run effect give @s minecraft:water_breathing 1 0 true

# Talk to entities
tag @e[distance=..3,tag=!talk,team=Passive] add talk 
tag @e[distance=..3,tag=!talk,team=Rubberobo] add talk

# Tutorial
execute if entity @s[tag=try_tutorial_level] run function medabots_server:stage/try/tutorial

# Prevent self-destruct at stage enter
scoreboard players reset @s SelfDestruct

# Invalid medabot = no combat start
execute if entity @s[gamemode=!creative,gamemode=!spectator,scores={Battle=0,Time=0}] run function medabots_server:medaparts/medapart_error
scoreboard players set @s[gamemode=!survival,gamemode=!adventure] PreviousError 0