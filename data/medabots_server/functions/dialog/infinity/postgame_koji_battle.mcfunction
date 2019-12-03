execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
scoreboard players set @s[scores={Dialog=1}] MusicType 38
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1948 51 -613 run function medabots_server:spawn_entities/cutscene/roks
execute if entity @s[scores={Dialog=1}] positioned -1950 51 -613 run function medabots_server:spawn_entities/cutscene/koji
execute if entity @s[scores={Dialog=1..55}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..55}] at @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1949 51 -616 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_koji_battle.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.infinity.postgame_koji_battle.2"}]}
execute if entity @s[scores={Dialog=56}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -593
execute if entity @s[scores={Dialog=56}] run tag @e[tag=koji,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=57..}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=56}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -593
execute if entity @s[scores={Dialog=56}] run tag @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=57..}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
scoreboard players set @s[scores={Dialog=150}] KillStreak 0
scoreboard players set @s[scores={Dialog=150}] MusicType 1
scoreboard players set @s[scores={Dialog=150}] Music 0
tag @s[scores={Dialog=150}] remove dialog_infinity_postgame_koji_battle
scoreboard players reset @s[scores={Dialog=150}] DialogNr
scoreboard players set @s[scores={Dialog=150}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog