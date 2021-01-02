execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other rock_f_dhranios_cleared
scoreboard players set @s[scores={Dialog=1}] MusicType 38
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned 31 59 31 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned 27 59 31 run function medabots_server:spawn_entities/cutscene/koji
execute if entity @s[scores={Dialog=1}] positioned 26 59 33 run function medabots_server:spawn_entities/cutscene/roks
execute if entity @s[scores={Dialog=1}] positioned 29 59 34 run function medabots_server:spawn_entities/cutscene/suzumega_hummer
teleport @s[scores={Dialog=1}] 29 59 30 0 0
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=koji,tag=this_dialog,limit=1] at @s facing entity @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 90
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.1"}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.2"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.3"}]}
execute if entity @s[scores={Dialog=160}] as @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.4"}]}
tellraw @s[scores={Dialog=200}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.5"}]}
tellraw @s[scores={Dialog=320}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.6"}]}
tellraw @s[scores={Dialog=448}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.7"}]}
execute if entity @s[scores={Dialog=456..551}] at @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=456}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.8"}]}
tellraw @s[scores={Dialog=496}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.9"}]}
execute if entity @s[scores={Dialog=552}] as @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=552}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.10"}]}
tellraw @s[scores={Dialog=624}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.11"}]}
tellraw @s[scores={Dialog=736}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.12"}]}
tellraw @s[scores={Dialog=856}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.13"}]}
execute if entity @s[scores={Dialog=880}] as @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=912}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.14"}]}
tellraw @s[scores={Dialog=936}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.15"}]}
tellraw @s[scores={Dialog=1072}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.16"}]}
tellraw @s[scores={Dialog=1088}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.17"}]}
tellraw @s[scores={Dialog=1152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.18"}]}
execute if entity @s[scores={Dialog=1184}] as @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1200}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.19"}]}
tellraw @s[scores={Dialog=1360}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.20"}]}
execute if entity @s[scores={Dialog=1400..1631}] at @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1400}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.21"}]}
tellraw @s[scores={Dialog=1424}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.22"}]}
tellraw @s[scores={Dialog=1584}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.23"}]}
execute if entity @s[scores={Dialog=1632}] as @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=koji,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1632}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.24"}]}
tellraw @s[scores={Dialog=1680}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.25"}]}
tellraw @s[scores={Dialog=1904}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.26"}]}
tellraw @s[scores={Dialog=1968}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.27"}]}
tellraw @s[scores={Dialog=2016}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.28"}]}
execute if entity @s[scores={Dialog=2016}] as @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2120}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.29"}]}
execute if entity @s[scores={Dialog=2144..2459}] at @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2144..2279}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2144..2279}] at @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2144..2279}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.30"}]}
tellraw @s[scores={Dialog=2216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.31"}]}
tellraw @s[scores={Dialog=2256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.32"}]}
execute if entity @s[scores={Dialog=2280..2518}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2280..2518}] as @e[tag=koji,tag=this_dialog,limit=1] at @s facing entity @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2280..2518}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2320}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.33"}]}
tellraw @s[scores={Dialog=2340}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.34"}]}
tellraw @s[scores={Dialog=2436}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.suzumega_hummer","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.35"}]}
execute if entity @s[scores={Dialog=2460}] as @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 29 59 59
execute if entity @s[scores={Dialog=2461}] run tag @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=2519}] run tag @e[tag=suzumega_hummer,tag=!medabot_model,tag=this_dialog,limit=1] add dead
execute if entity @s[scores={Dialog=2519..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=koji,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2519..3367}] at @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2519..3367}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2500}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.36"}]}
tellraw @s[scores={Dialog=2548}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.37"}]}
tellraw @s[scores={Dialog=2644}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.38"}]}
tellraw @s[scores={Dialog=2796}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.39"}]}
tellraw @s[scores={Dialog=2948}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.40"}]}
tellraw @s[scores={Dialog=3004}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.41"}]}
tellraw @s[scores={Dialog=3100}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.42"}]}
tellraw @s[scores={Dialog=3212}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.43"}]}
tellraw @s[scores={Dialog=3232}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.44"}]}
tellraw @s[scores={Dialog=3344}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.45"}]}
tellraw @s[scores={Dialog=3360}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.rock_f_dhranios_cleared.46"}]}
execute if entity @s[scores={Dialog=3368}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 29 59 59
execute if entity @s[scores={Dialog=3369}] run tag @e[tag=koji,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=3368}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 29 59 59
execute if entity @s[scores={Dialog=3369}] run tag @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=3494}] run tag @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] add dead
tag @s[scores={Dialog=3499}] remove dialog_other_rock_f_dhranios_cleared
scoreboard players set @s[scores={Dialog=3499}] MusicType 1
scoreboard players set @s[scores={Dialog=3499}] Music 0
scoreboard players reset @s[scores={Dialog=3499}] DialogNr
scoreboard players set @s[scores={Dialog=3499}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog