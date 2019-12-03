execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity stop_saving_karin
execute if entity @s[scores={Dialog=1}] positioned -444 9 -82 run function medabots_server:spawn_entities/cutscene/caroline
execute if entity @s[scores={Dialog=1}] positioned -445 9 -81 run function medabots_server:spawn_entities/cutscene/doctor_haru
execute if entity @s[scores={Dialog=1..}] at @e[tag=doctor_haru,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=doctor_haru,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..}] at @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[x=-445,y=9,z=-81,distance=..4] -442 9 -79
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.stop_saving_karin.1"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.stop_saving_karin.2"}]}
tag @s[scores={Dialog=80}] remove dialog_infinity_stop_saving_karin
scoreboard players reset @s[scores={Dialog=80}] DialogNr
scoreboard players set @s[scores={Dialog=80}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog