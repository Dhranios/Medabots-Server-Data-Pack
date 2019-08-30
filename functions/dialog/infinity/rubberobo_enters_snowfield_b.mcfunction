scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity rubberobo_enters_snowfield_b
execute if entity @s[scores={Dialog=1}] positioned -352 55 -1 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 ~
teleport @s[scores={Dialog=1}] -350 55 -1 90 0
teleport @s[scores={Dialog=1..}] -350 55 -1
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_b.1"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_b.2"}]}
tellraw @s[scores={Dialog=160}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_b.3"}]}
tellraw @s[scores={Dialog=280}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_b.4"}]}
stopsound @s[scores={Dialog=296}] music
scoreboard players set @s[scores={Dialog=296}] MusicType -1
scoreboard players set @s[scores={Dialog=296}] Music 62
playsound medabots_server:music.entity.rubberobo_intro music @s[scores={Dialog=296}] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=296}] positioned -349 55 -13 run function medabots_server:spawn_entities/cutscene/rubberobo
execute if entity @s[scores={Dialog=296}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 5 ~
execute if entity @s[scores={Dialog=306..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=296}] run setblock -349 53 -14 minecraft:redstone_block
execute if entity @s[scores={Dialog=297..316}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=310}] run setblock -349 53 -14 minecraft:dirt
tellraw @s[scores={Dialog=316}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_b.5"}]}
tellraw @s[scores={Dialog=324}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_b.6"}]}
tellraw @s[scores={Dialog=340}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_b.7"}]}
tellraw @s[scores={Dialog=364}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_b.8"}]}
tellraw @s[scores={Dialog=404}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_b.9"}]}
tellraw @s[scores={Dialog=428}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_b.10"}]}
tellraw @s[scores={Dialog=476}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_b.11"}]}
tellraw @s[scores={Dialog=564}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_b.12"}]}
tellraw @s[scores={Dialog=596}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_b.13"}]}
tellraw @s[scores={Dialog=628}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_b.14"}]}
tellraw @s[scores={Dialog=724}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_b.15"}]}
tellraw @s[scores={Dialog=732}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_b.16"}]}
execute if entity @s[scores={Dialog=748}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=749..884}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=884}] run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ -100 ~
execute if entity @s[scores={Dialog=884}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add dead
tellraw @s[scores={Dialog=788}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_b.17"}]}
tellraw @s[scores={Dialog=828}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_b.18"}]}
stopsound @s[scores={Dialog=884}] music
scoreboard players set @s[scores={Dialog=884}] MusicType 1
scoreboard players set @s[scores={Dialog=884}] Music 0
tag @s[scores={Dialog=884}] remove dialog_infinity_rubberobo_enters_snowfield_b
scoreboard players reset @s[scores={Dialog=884}] DialogNr
scoreboard players set @s[scores={Dialog=884}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.rubberobo music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 744