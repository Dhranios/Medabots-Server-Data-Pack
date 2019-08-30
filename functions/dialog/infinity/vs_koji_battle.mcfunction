execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity vs_koji_battle
stopsound @s[scores={Dialog=1}] music
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 136
playsound medabots_server:music.entity.koji_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1}] positioned -1948 51 -616 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1951 51 -614 run function medabots_server:spawn_entities/cutscene/roks
execute if entity @s[scores={Dialog=1}] positioned -1950 51 -613 run function medabots_server:spawn_entities/cutscene/koji
execute if entity @s[scores={Dialog=1..59}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..59}] at @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @e[distance=..0.1,tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..231}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @e[distance=..0.1,tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1949 51 -617 15 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_koji_battle.1"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.vs_koji_battle.2"}]}
tellraw @s[scores={Dialog=60}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.vs_koji_battle.3"}]}
execute if entity @s[scores={Dialog=60}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -593
execute if entity @s[scores={Dialog=60}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -593
tellraw @s[scores={Dialog=68}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.vs_koji_battle.4"}]}
tellraw @s[scores={Dialog=76}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.vs_koji_battle.5"}]}
tellraw @s[scores={Dialog=92}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.vs_koji_battle.6"}]}
tellraw @s[scores={Dialog=116}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks"},{"translate":"medabots_server:dialog.infinity.vs_koji_battle.7"}]}
execute if entity @s[scores={Dialog=132}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s add walking
execute if entity @s[scores={Dialog=133..232}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=133..227}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=232}] run tag @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] add dead
execute if entity @s[scores={Dialog=227}] run tag @e[tag=koji,tag=this_dialog,limit=1] add dead
stopsound @s[scores={Dialog=182}] music
scoreboard players set @s[scores={Dialog=182}] MusicType 1
scoreboard players set @s[scores={Dialog=182}] Music 0
tellraw @s[scores={Dialog=182}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_koji_battle.8"}]}
tellraw @s[scores={Dialog=228}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_koji_battle.9"}]}
tellraw @s[scores={Dialog=300}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_koji_battle.10"}]}
tag @s[scores={Dialog=333}] remove dialog_infinity_vs_koji_battle
scoreboard players reset @s[scores={Dialog=333}] DialogNr
scoreboard players set @s[scores={Dialog=333}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.koji music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 274