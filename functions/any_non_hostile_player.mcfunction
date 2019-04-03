# Remove the data that is left over from combat
function medabots_server:medaparts/remove_scores

# Fast roads
execute if entity @s[tag=action_mode] run function medabots_server:other/action_mode

# Talk to entities
tag @e[distance=..3,tag=!talk,team=Passive] add talk 
tag @e[distance=..3,tag=!talk,team=Rubberobo] add talk

# Prevent self-destruct at stage enter
scoreboard players reset @s SelfDestruct

# Invalid medabot = no combat start
execute if entity @s[gamemode=!creative,gamemode=!spectator,scores={Battle=0,Time=1}] run function medabots_server:medaparts/medapart_error
scoreboard players set @s[gamemode=!survival,gamemode=!adventure] PreviousError 0