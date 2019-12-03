execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] positioned -411 55 -31 run function medabots_server:spawn_entities/cutscene/director_tune
execute if entity @s[scores={Dialog=1..}] at @e[tag=director_tune,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=director_tune,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[x=-410,y=55,z=-42,distance=..6] -415 55 -34
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.tune_observes_repeat.1"}]}
tag @s[scores={Dialog=84}] remove dialog_infinity_tune_observes_repeat
scoreboard players reset @s[scores={Dialog=84}] DialogNr
scoreboard players set @s[scores={Dialog=84}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog