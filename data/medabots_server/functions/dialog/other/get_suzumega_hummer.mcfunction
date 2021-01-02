execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
tag @s[scores={Dialog=1}] add get_suzumega_hummer_dialog
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other get_suzumega_hummer
execute if entity @s[scores={Dialog=1}] positioned ^ ^ ^3 run function medabots_server:spawn_entities/cutscene/suzumega_hummer
execute if entity @s[scores={Dialog=1..375}] at @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.get_suzumega_hummer.1"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.get_suzumega_hummer.2"}]}
tellraw @s[scores={Dialog=152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.get_suzumega_hummer.3"}]}
tellraw @s[scores={Dialog=272}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.get_suzumega_hummer.4"}]}
execute if entity @s[scores={Dialog=352},tag=!already_gave_items] run function medabots_server:give_items/medaparts/suzumega_hummer
tag @s[scores={Dialog=352}] add already_gave_items
tellraw @s[scores={Dialog=372}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.get_suzumega_hummer.5"}]}
tellraw @s[scores={Dialog=436}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.get_suzumega_hummer.6"}]}
execute if entity @s[scores={Dialog=476}] as @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ ~ -90
execute if entity @s[scores={Dialog=477..}] as @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~0.2 ~
tag @s[scores={Dialog=497}] remove get_suzumega_hummer_dialog
tag @s[scores={Dialog=497}] remove dialog_other_get_suzumega_hummer
tag @s[scores={Dialog=497}] remove already_gave_items
scoreboard players reset @s[scores={Dialog=497}] DialogNr
scoreboard players set @s[scores={Dialog=497}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog