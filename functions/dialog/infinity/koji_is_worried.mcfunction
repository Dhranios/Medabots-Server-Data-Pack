execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity koji_is_worried
execute if entity @s[scores={Dialog=1}] positioned -1634 50 -674 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1637 50 -676 run function medabots_server:spawn_entities/cutscene/koji
teleport @s[scores={Dialog=1}] -1635 50 -673 145 0
execute if entity @s[scores={Dialog=1..}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=koji,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.koji_is_worried.1"}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.koji_is_worried.2"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.koji_is_worried.3"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.koji_is_worried.4"}]}}
tag @s[scores={Dialog=112}] remove dialog_infinity_koji_is_worried
scoreboard players reset @s[scores={Dialog=112}] DialogNr
scoreboard players set @s[scores={Dialog=112}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog