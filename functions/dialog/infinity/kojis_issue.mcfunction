scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:wave_1/story_progression kojis_issue
stopsound @s[scores={Dialog=1}] music
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 136
playsound medabots_server:music.entity.koji_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1}] positioned -1715 51 -490 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1712 51 -490 run function medabots_server:spawn_entities/cutscene/roks
execute if entity @s[scores={Dialog=1}] positioned -1712 51 -492 run function medabots_server:spawn_entities/cutscene/koji
teleport @s[scores={Dialog=1}] -1715 51 -492 -90 0
execute if entity @s[scores={Dialog=1..607}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..607}] at @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @e[distance=..0.1,tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_issue.1","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kojis_issue.2"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kojis_issue.3"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_issue.4"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_issue.5"}]}
tellraw @s[scores={Dialog=168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_issue.6"}]}
tellraw @s[scores={Dialog=232}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.kojis_issue.7"}]}
tellraw @s[scores={Dialog=240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.kojis_issue.8"}]}
tellraw @s[scores={Dialog=304}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kojis_issue.9"}]}
tellraw @s[scores={Dialog=376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_issue.10"}]}
tellraw @s[scores={Dialog=392}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_issue.11"}]}
tellraw @s[scores={Dialog=432}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kojis_issue.12"}]}
tellraw @s[scores={Dialog=448}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks"},{"translate":"medabots_server:dialog.infinity.kojis_issue.13"}]}
tellraw @s[scores={Dialog=504}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_issue.14"}]}
tellraw @s[scores={Dialog=520}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_issue.15"}]}
tellraw @s[scores={Dialog=552}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks"},{"translate":"medabots_server:dialog.infinity.kojis_issue.16"}]}
tellraw @s[scores={Dialog=568}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.kojis_issue.17"}]}
tellraw @s[scores={Dialog=576}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_issue.18"}]}
tellraw @s[scores={Dialog=600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_issue.19"}]}
execute if entity @s[scores={Dialog=608}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1715 51 -446
execute if entity @s[scores={Dialog=609..823}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=608}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1715 51 -446
execute if entity @s[scores={Dialog=608}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s add walking
execute if entity @s[scores={Dialog=609..816}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=816}] run kill @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1]
stopsound @s[scores={Dialog=823}] music
scoreboard players set @s[scores={Dialog=823}] MusicType 1
scoreboard players set @s[scores={Dialog=823}] Music 0
tag @s[scores={Dialog=823}] remove dialog_infinity_kojis_issue
scoreboard players reset @s[scores={Dialog=823}] DialogNr
scoreboard players set @s[scores={Dialog=823}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.koji music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 274