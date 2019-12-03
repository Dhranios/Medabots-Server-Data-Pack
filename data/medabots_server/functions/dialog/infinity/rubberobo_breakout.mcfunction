execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity rubberobo_breakout
scoreboard players set @s[scores={Dialog=1}] MusicType 38
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1773 50 -288 run function medabots_server:spawn_entities/cutscene/koji
teleport @s[scores={Dialog=1}] -1772 50 -284 165 0
execute if entity @s[scores={Dialog=1..103}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=104..167}] as @e[tag=koji,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=272..1034}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.1"}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.2"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.3"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.4"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.5"}]}
scoreboard players set @s[scores={Dialog=104}] MusicType 32
scoreboard players set @s[scores={Dialog=104}] Music 0
execute if entity @s[scores={Dialog=104}] positioned -1779 50 -300 run function medabots_server:spawn_entities/cutscene/rubberobo
execute if entity @s[scores={Dialog=104}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 ~
execute if entity @s[scores={Dialog=104}] as @e[tag=rubberobo,tag=this_dialog,limit=1] run tag @s add running
execute if entity @s[scores={Dialog=105..167}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=167}] run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ -100 ~
execute if entity @s[scores={Dialog=167}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add dead
tellraw @s[scores={Dialog=168}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.6"}]}
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.7"}]}
tellraw @s[scores={Dialog=184}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.8"}]}
tellraw @s[scores={Dialog=192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.9"}]}
execute if entity @s[scores={Dialog=216}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1773 50 -300
execute if entity @s[scores={Dialog=216}] run tag @e[tag=koji,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=217..271}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=271}] as @e[tag=koji,tag=this_dialog,limit=1] run tag @s remove walking
scoreboard players set @s[scores={Dialog=271}] MusicType 38
scoreboard players set @s[scores={Dialog=271}] Music 0
tellraw @s[scores={Dialog=271}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.10"}]}
tellraw @s[scores={Dialog=303}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.11"}]}
tellraw @s[scores={Dialog=319}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.12"}]}
tellraw @s[scores={Dialog=343}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.13"}]}
tellraw @s[scores={Dialog=391}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.14"}]}
tellraw @s[scores={Dialog=471}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.15"}]}
tellraw @s[scores={Dialog=503}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.16"}]}
tellraw @s[scores={Dialog=535}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.17"}]}
tellraw @s[scores={Dialog=567}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.18"}]}
tellraw @s[scores={Dialog=631}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.19"}]}
tellraw @s[scores={Dialog=671}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.20"}]}
tellraw @s[scores={Dialog=735}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.21"}]}
tellraw @s[scores={Dialog=751}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.22"}]}
tellraw @s[scores={Dialog=783}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.23"}]}
tellraw @s[scores={Dialog=807}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.24"}]}
tellraw @s[scores={Dialog=831}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.25"}]}
tellraw @s[scores={Dialog=851}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.26"}]}
tellraw @s[scores={Dialog=883}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.27"}]}
tellraw @s[scores={Dialog=963}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.28"}]}
tellraw @s[scores={Dialog=971}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.29"}]}
execute if entity @s[scores={Dialog=1035}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1772 50 -251
execute if entity @s[scores={Dialog=1035}] run tag @e[tag=koji,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1036..1260}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
advancement grant @s[scores={Dialog=1260}] only medabots_server:special_items/passes/robo_1
scoreboard players set @s[scores={Dialog=1260}] MusicType 1
scoreboard players set @s[scores={Dialog=1260}] Music 0
tag @s[scores={Dialog=1260}] remove dialog_infinity_rubberobo_breakout
scoreboard players reset @s[scores={Dialog=1260}] DialogNr
scoreboard players set @s[scores={Dialog=1260}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog