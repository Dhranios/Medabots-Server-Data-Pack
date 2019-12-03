execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity desperate_for_love_battle
scoreboard players set @s[scores={Dialog=1}] MusicType 35
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1947 51 -615 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1951 51 -613 run function medabots_server:spawn_entities/cutscene/peppercat
execute if entity @s[scores={Dialog=1}] positioned -1949 51 -612 run function medabots_server:spawn_entities/cutscene/samantha
teleport @s[scores={Dialog=1}] -1949 51 -616 0 0
execute if entity @s[scores={Dialog=1..287}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..187}] as @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..155}] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=156..234}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.desperate_for_love_battle.1","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.desperate_for_love_battle.2"}]}
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.desperate_for_love_battle.3"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat","color":"green"},{"translate":"medabots_server:dialog.infinity.desperate_for_love_battle.4"}]}
tellraw @s[scores={Dialog=156}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat","color":"green"},{"translate":"medabots_server:dialog.infinity.desperate_for_love_battle.5"}]}
execute if entity @s[scores={Dialog=188}] as @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -593
execute if entity @s[scores={Dialog=188}] run tag @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=189..235}] as @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
execute if entity @s[scores={Dialog=235}] run kill @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.desperate_for_love_battle.6"}]}
tellraw @s[scores={Dialog=224}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.desperate_for_love_battle.7","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=244}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha","color":"green"},{"translate":"medabots_server:dialog.infinity.desperate_for_love_battle.8"}]}
execute if entity @s[scores={Dialog=244}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -593
execute if entity @s[scores={Dialog=244}] run tag @e[tag=samantha,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=245..288}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
execute if entity @s[scores={Dialog=288}] run kill @e[tag=samantha,tag=this_dialog,limit=1]
scoreboard players set @s[scores={Dialog=288}] MusicType 1
scoreboard players set @s[scores={Dialog=288}] Music 0
tellraw @s[scores={Dialog=288}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.desperate_for_love_battle.9"}]}
tellraw @s[scores={Dialog=328}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.desperate_for_love_battle.10"}]}
tag @s[scores={Dialog=360}] remove dialog_infinity_desperate_for_love_battle
scoreboard players reset @s[scores={Dialog=360}] DialogNr
scoreboard players set @s[scores={Dialog=360}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog