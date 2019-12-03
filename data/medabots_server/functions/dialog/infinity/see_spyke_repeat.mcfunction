execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] positioned -361 55 -83 run function medabots_server:spawn_entities/cutscene/spyke
execute if entity @s[scores={Dialog=1..}] at @e[tag=spyke,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=spyke,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.see_spyke_repeat.1"}]}
tag @s[scores={Dialog=100}] remove dialog_infinity_see_spyke_repeat
scoreboard players reset @s[scores={Dialog=100}] DialogNr
scoreboard players set @s[scores={Dialog=100}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog