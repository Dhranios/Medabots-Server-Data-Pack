execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity vs_spyke
stopsound @s[scores={Dialog=1}] music
playsound medabots_server:music.entity.screws_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 62
execute if entity @s[scores={Dialog=1}] positioned -2001 51 -609 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1999 51 -613 run function medabots_server:spawn_entities/cutscene/samantha
execute if entity @s[scores={Dialog=1}] positioned -2000 51 -614 run function medabots_server:spawn_entities/cutscene/sloan
execute if entity @s[scores={Dialog=1}] positioned -1996 51 -612 run function medabots_server:spawn_entities/cutscene/spyke
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -121 ~
execute if entity @s[scores={Dialog=1..79}] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..}] at @e[tag=sloan,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=sloan,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..255}] at @e[tag=spyke,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=spyke,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..347}] as @e[tag=spyke,tag=this_dialog,limit=1] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1999 51 -608 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_spyke.1"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.vs_spyke.2"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_spyke.3"}]}
execute if entity @s[scores={Dialog=80..105}] as @e[tag=spyke,tag=this_dialog,limit=1] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_spyke.4"}]}
execute if entity @s[scores={Dialog=106..}] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.vs_spyke.5"}]}
execute if entity @s[scores={Dialog=128}] positioned -1997 51 -613 run function medabots_server:spawn_entities/cutscene/krosserdog
execute if entity @s[scores={Dialog=128}] as @e[tag=krosserdog,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 55 ~
tellraw @s[scores={Dialog=168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.vs_spyke.6"}]}
tellraw @s[scores={Dialog=208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.vs_spyke.7"}]}
execute if entity @s[scores={Dialog=256}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -2000 51 -632
execute if entity @s[scores={Dialog=257..348}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=256}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -2000 51 -632
execute if entity @s[scores={Dialog=256}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s add walking
execute if entity @s[scores={Dialog=257..342}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=342}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] run kill @s
execute if entity @s[scores={Dialog=348}] as @e[tag=spyke,tag=this_dialog,limit=1] run kill @s
tellraw @s[scores={Dialog=368}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_spyke.8"}]}
tag @s[scores={Dialog=400}] remove dialog_infinity_vs_spyke
stopsound @s[scores={Dialog=400}] music
scoreboard players set @s[scores={Dialog=400}] MusicType 1
scoreboard players set @s[scores={Dialog=400}] Music 0
scoreboard players reset @s[scores={Dialog=400}] DialogNr
scoreboard players set @s[scores={Dialog=400}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.screws music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 250