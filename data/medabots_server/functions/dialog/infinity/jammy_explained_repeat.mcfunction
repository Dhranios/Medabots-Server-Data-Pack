execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] positioned -379 55 -58 run function medabots_server:spawn_entities/cutscene/brass
execute if entity @s[scores={Dialog=1}] positioned -379 55 -56 run function medabots_server:spawn_entities/cutscene/erika
execute if entity @s[scores={Dialog=1}] run tag @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] add dancing
execute if entity @s[scores={Dialog=1..}] at @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained_repeat.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass","color":"green"},{"translate":"medabots_server:dialog.infinity.jammy_explained_repeat.2"}]}
tag @s[scores={Dialog=126}] remove dialog_infinity_jammy_explained_repeat
scoreboard players reset @s[scores={Dialog=126}] DialogNr
scoreboard players set @s[scores={Dialog=126}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog