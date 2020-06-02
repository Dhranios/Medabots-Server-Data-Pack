scoreboard players set @s Time 10
execute store result score #temp MedabotNr run scoreboard players get @s MedabotNr
execute as @e[scores={MedabotNr=0..},tag=left_arm] if score @s MedabotNr = #temp MedabotNr run tag @s add this_medabot
function medabots_server:items/medapart/activate/cpu/medapart
scoreboard players reset #temp MedabotNr
tag @e[tag=this_medabot,limit=1] remove this_medabot