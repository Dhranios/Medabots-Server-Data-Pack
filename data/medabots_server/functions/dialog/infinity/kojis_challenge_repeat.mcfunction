execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] positioned -341 55 -74 run function medabots_server:spawn_entities/cutscene/roks
execute if entity @s[scores={Dialog=1}] positioned -343 55 -75 run function medabots_server:spawn_entities/cutscene/koji
execute if entity @s[scores={Dialog=1..}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..}] at @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge_repeat.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge_repeat.2"}]}
tag @s[scores={Dialog=108}] remove dialog_infinity_kojis_challenge_repeat
scoreboard players reset @s[scores={Dialog=108}] DialogNr
scoreboard players set @s[scores={Dialog=108}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog