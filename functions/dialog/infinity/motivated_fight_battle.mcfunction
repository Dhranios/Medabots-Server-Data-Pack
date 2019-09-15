execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity motivated_fight_battle
stopsound @s[scores={Dialog=1}] music
playsound medabots_server:music.entity.screws_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 62
execute if entity @s[scores={Dialog=1}] positioned -1995 51 -559 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1996 51 -555 run function medabots_server:spawn_entities/cutscene/krosserdog
execute if entity @s[scores={Dialog=1}] positioned -1998 51 -556 run function medabots_server:spawn_entities/cutscene/spyke
execute if entity @s[scores={Dialog=1..415}] at @e[tag=spyke,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=spyke,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..455}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=456..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1997 51 -560 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.motivated_fight_battle.1"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.motivated_fight_battle.2"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.motivated_fight_battle.3"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.motivated_fight_battle.4"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.motivated_fight_battle.5"}]}
tellraw @s[scores={Dialog=184}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.motivated_fight_battle.6"}]}
tellraw @s[scores={Dialog=224}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.motivated_fight_battle.7"}]}
tellraw @s[scores={Dialog=240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.motivated_fight_battle.8"}]}
tellraw @s[scores={Dialog=304}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.motivated_fight_battle.9"}]}
tellraw @s[scores={Dialog=320}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.motivated_fight_battle.10"}]}
tellraw @s[scores={Dialog=328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.motivated_fight_battle.11"}]}
tellraw @s[scores={Dialog=368}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.motivated_fight_battle.12"}]}
tellraw @s[scores={Dialog=400}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.motivated_fight_battle.13"}]}
execute if entity @s[scores={Dialog=416}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1997 51 -540
execute if entity @s[scores={Dialog=416}] run tag @e[tag=spyke,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=417..491}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=416}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1997 51 -540
execute if entity @s[scores={Dialog=416}] run tag @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=417..486}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=486}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] run kill @s
execute if entity @s[scores={Dialog=491}] as @e[tag=spyke,tag=this_dialog,limit=1] run kill @s
tellraw @s[scores={Dialog=456}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.motivated_fight_battle.14"}]}
tellraw @s[scores={Dialog=520}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.motivated_fight_battle.15"}]}
tellraw @s[scores={Dialog=568}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.motivated_fight_battle.16"}]}
tag @s[scores={Dialog=616}] remove dialog_infinity_motivated_fight_battle
stopsound @s[scores={Dialog=616}] music
scoreboard players set @s[scores={Dialog=616}] MusicType 1
scoreboard players set @s[scores={Dialog=616}] Music 0
scoreboard players reset @s[scores={Dialog=616}] DialogNr
scoreboard players set @s[scores={Dialog=616}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.screws music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 250