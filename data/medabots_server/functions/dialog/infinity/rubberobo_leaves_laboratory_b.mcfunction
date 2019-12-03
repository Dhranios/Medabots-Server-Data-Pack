execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity rubberobo_leaves_laboratory_b
scoreboard players set @s[scores={Dialog=1}] MusicType 32
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1726 50 -574 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1727 50 -571 run function medabots_server:spawn_entities/cutscene/rubberobo
execute if entity @s[scores={Dialog=1..111}] at @e[tag=rubberobo,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..151}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1727 50 -575 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_laboratory_b.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_laboratory_b.2"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_laboratory_b.3"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_laboratory_b.4"}]}
execute if entity @s[scores={Dialog=112}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1727 50 -542
execute if entity @s[scores={Dialog=112}] as @e[tag=rubberobo,tag=this_dialog,limit=1] run tag @s add running
execute if entity @s[scores={Dialog=113..247}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=247}] run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ -100 ~
execute if entity @s[scores={Dialog=247}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add dead
execute if entity @s[scores={Dialog=152..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=152}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_laboratory_b.5"}]}
scoreboard players set @s[scores={Dialog=247}] MusicType 1
scoreboard players set @s[scores={Dialog=247}] Music 0
tag @s[scores={Dialog=247}] remove dialog_infinity_rubberobo_leaves_laboratory_b
scoreboard players reset @s[scores={Dialog=247}] DialogNr
scoreboard players set @s[scores={Dialog=247}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog