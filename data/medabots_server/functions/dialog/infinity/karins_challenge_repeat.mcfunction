execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] positioned -393 55 -93 run function medabots_server:spawn_entities/cutscene/neutranurse
execute if entity @s[scores={Dialog=1}] positioned -394 55 -95 run function medabots_server:spawn_entities/cutscene/karin
execute if entity @s[scores={Dialog=1..}] at @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..}] at @e[tag=karin,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=karin,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.karins_challenge_repeat.1"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.karins_challenge_repeat.2"}]}
tag @s[scores={Dialog=106}] remove dialog_infinity_karins_challenge_repeat
scoreboard players reset @s[scores={Dialog=106}] DialogNr
scoreboard players set @s[scores={Dialog=106}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog