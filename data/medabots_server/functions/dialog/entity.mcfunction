execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @a[scores={DialogNr=1..}] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
execute if entity @a[tag=this_dialog] run tag @s add player_is_here
execute if entity @s[scores={MedabotNr=1..},tag=!medabot_model,tag=!player_is_here] run scoreboard players operation #temp MedabotNr = @s MedabotNr
execute if entity @s[scores={MedabotNr=1..},tag=!medabot_model,tag=!player_is_here] as @e[scores={MedabotNr=1..},tag=medabot_model] if score @s MedabotNr = #temp MedabotNr run kill @s
execute if entity @s[scores={MedabotNr=1..},tag=!medabot_model,tag=!player_is_here] as @e[scores={MedabotNr=1..},tag=medabot_model] if score @s MedabotNr > #temp MedabotNr run scoreboard players remove @s MedabotNr 1
scoreboard players reset #temp MedabotNr
teleport @s[tag=!player_is_here] ~ -1000 ~
kill @s[tag=!player_is_here]
tag @s[tag=player_is_here] remove player_is_here
tag @a[tag=this_dialog] remove this_dialog

# Model
execute if entity @s[scores={MedabotNr=1..},tag=!medabot_model] run function medabots_server:animations/medabot

function medabots_server:animations/cutscene_entity

teleport @s[tag=walking] ^ ^ ^0.2125
teleport @s[tag=running,tag=!rubberobo] ^ ^ ^0.425
teleport @s[tag=running,tag=rubberobo] ^ ^ ^0.2125

tag @s[tag=refresh] add refreshed
tag @s[tag=!refresh] add refresh
tag @s[tag=refreshed] remove refresh
tag @s[tag=refreshed] remove refreshed
execute at @s[tag=!refresh] run teleport @s ~ ~ ~ ~-0.1 ~
execute at @s[tag=refresh] run teleport @s ~ ~ ~ ~0.1 ~
data merge entity @s[tag=!refresh] {Air:0}
data merge entity @s[tag=refresh] {Air:1}

# Store old position
scoreboard players operation @s OtherX = @s PosX
scoreboard players operation @s OtherY = @s PosY
scoreboard players operation @s OtherZ = @s PosZ
execute store result score @s PosX run data get entity @s Pos[0] 100
execute store result score @s PosY run data get entity @s Pos[1] 100
execute store result score @s PosZ run data get entity @s Pos[2] 100