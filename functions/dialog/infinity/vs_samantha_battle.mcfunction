scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity vs_samantha_battle
stopsound @s[scores={Dialog=1}] music
playsound medabots_server:music.entity.screws_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 62
execute if entity @s[scores={Dialog=1}] positioned -1951 51 -563 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1947 51 -560 run function medabots_server:spawn_entities/cutscene/peppercat
execute if entity @s[scores={Dialog=1}] positioned -1936 51 -568 run function medabots_server:spawn_entities/cutscene/max
execute if entity @s[scores={Dialog=1}] positioned -1949 51 -559 run function medabots_server:spawn_entities/cutscene/samantha
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -52 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 65 ~
execute if entity @s[scores={Dialog=1..178}] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..178}] at @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1949 51 -564 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.1"}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.2"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.3"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.4"}]}
playsound medabots_server:entity.max.photo neutral @s[scores={Dialog=168}] ~ ~ ~ 1000
stopsound @s[scores={Dialog=168}] music
scoreboard players set @s[scores={Dialog=168}] Music 0
tellraw @s[scores={Dialog=168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.5"}]}
execute if entity @s[scores={Dialog=168}] run tag @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=169..225}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=225}] run tag @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=226}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=179..2242}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=179..2224}] as @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=225}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.6"}]}
tellraw @s[scores={Dialog=357}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.7"}]}
tellraw @s[scores={Dialog=413}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.8"}]}
tellraw @s[scores={Dialog=477}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.9"}]}
tellraw @s[scores={Dialog=517}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.10"}]}
tellraw @s[scores={Dialog=533}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.11"}]}
tellraw @s[scores={Dialog=573}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.12"}]}
tellraw @s[scores={Dialog=629}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.13"}]}
tellraw @s[scores={Dialog=693}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.14"}]}
playsound medabots_server:entity.max.photo neutral @s[scores={Dialog=701}] ~ ~ ~ 1000
playsound medabots_server:entity.max.photo neutral @s[scores={Dialog=703}] ~ ~ ~ 1000
playsound medabots_server:entity.max.photo neutral @s[scores={Dialog=705}] ~ ~ ~ 1000
playsound medabots_server:entity.max.photo neutral @s[scores={Dialog=707}] ~ ~ ~ 1000
playsound medabots_server:entity.max.photo neutral @s[scores={Dialog=709}] ~ ~ ~ 1000
playsound medabots_server:entity.max.photo neutral @s[scores={Dialog=711}] ~ ~ ~ 1000
tellraw @s[scores={Dialog=716}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.15"}]}
tellraw @s[scores={Dialog=756}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.16"}]}
tellraw @s[scores={Dialog=780}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.17"}]}
tellraw @s[scores={Dialog=852}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.18"}]}
tellraw @s[scores={Dialog=868}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.19"}]}
tellraw @s[scores={Dialog=876}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.20"}]}
tellraw @s[scores={Dialog=908}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.21"}]}
tellraw @s[scores={Dialog=932}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.22"}]}
tellraw @s[scores={Dialog=1020}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.23"}]}
tellraw @s[scores={Dialog=1044}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.24"}]}
tellraw @s[scores={Dialog=1092}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.25"}]}
execute if entity @s[scores={Dialog=1100}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
tellraw @s[scores={Dialog=1100}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.26"}]}
tellraw @s[scores={Dialog=1108}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.27"}]}
tellraw @s[scores={Dialog=1132}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.28"}]}
tellraw @s[scores={Dialog=1140}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.29"}]}
tellraw @s[scores={Dialog=1148}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.30"}]}
tellraw @s[scores={Dialog=1180}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.31"}]}
tellraw @s[scores={Dialog=1252}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.32"}]}
execute if entity @s[scores={Dialog=1260..1267}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tellraw @s[scores={Dialog=1268}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.33"}]}
tellraw @s[scores={Dialog=1292}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.34"}]}
tellraw @s[scores={Dialog=1340}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.35"}]}
tellraw @s[scores={Dialog=1380}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.36"}]}
playsound medabots_server:entity.max.photo neutral @s[scores={Dialog=1396}] ~ ~ ~ 1000
tellraw @s[scores={Dialog=1416}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.37"}]}
playsound medabots_server:entity.max.photo neutral @s[scores={Dialog=1466}] ~ ~ ~ 1000
playsound medabots_server:entity.max.photo neutral @s[scores={Dialog=1443}] ~ ~ ~ 1000
tellraw @s[scores={Dialog=1504}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.38"}]}
tellraw @s[scores={Dialog=1512}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.39"}]}
tellraw @s[scores={Dialog=1520}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.40"}]}
tellraw @s[scores={Dialog=1544}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.41"}]}
tellraw @s[scores={Dialog=1576}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.42"}]}
tellraw @s[scores={Dialog=1600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.43"}]}
tellraw @s[scores={Dialog=1624}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.44"}]}
tellraw @s[scores={Dialog=1696}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.45"}]}
tellraw @s[scores={Dialog=1720}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.46"}]}
tellraw @s[scores={Dialog=1728}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.47"}]}
tellraw @s[scores={Dialog=1744}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.48"}]}
execute if entity @s[scores={Dialog=1752}] run tag @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1753..1764}] as @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1764}] run tag @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
tellraw @s[scores={Dialog=1758}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.49"}]}
tellraw @s[scores={Dialog=1766}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.50"}]}
tellraw @s[scores={Dialog=1774}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.51"}]}
tellraw @s[scores={Dialog=1782}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.52"}]}
tellraw @s[scores={Dialog=1790}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.53"}]}
tellraw @s[scores={Dialog=1806}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.54"}]}
tellraw @s[scores={Dialog=1822}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.55"}]}
tellraw @s[scores={Dialog=1870}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.56"}]}
tellraw @s[scores={Dialog=1894}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.57"}]}
tellraw @s[scores={Dialog=1914}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.58"}]}
tellraw @s[scores={Dialog=1938}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.59"}]}
tellraw @s[scores={Dialog=1978}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.60"}]}
tellraw @s[scores={Dialog=2034}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.61"}]}
tellraw @s[scores={Dialog=2058}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.62"}]}
tellraw @s[scores={Dialog=2066}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.63"}]}
tellraw @s[scores={Dialog=2090}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.64"}]}
tellraw @s[scores={Dialog=2114}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.65"}]}
execute if entity @s[scores={Dialog=2138}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -540
execute if entity @s[scores={Dialog=2138}] run tag @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2139..2243}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2243}] run kill @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=2198}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.66"}]}
tellraw @s[scores={Dialog=2206}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.67"}]}
execute if entity @s[scores={Dialog=2224}] as @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -540
execute if entity @s[scores={Dialog=2224}] run tag @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2225..2329}] as @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2329}] run kill @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1]
stopsound @s[scores={Dialog=2243}] music
playsound medabots_server:music.entity.screws_intro music @s[scores={Dialog=2243}] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=2243}] Music 62
tellraw @s[scores={Dialog=2243}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.68"}]}
tellraw @s[scores={Dialog=2267}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.69"}]}
tellraw @s[scores={Dialog=2275}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.70"}]}
execute if entity @s[scores={Dialog=2283..2322}] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2283}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.71"}]}
tellraw @s[scores={Dialog=2299}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.72"}]}
execute if entity @s[scores={Dialog=2323}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -540
execute if entity @s[scores={Dialog=2324..2417}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2417}] run kill @e[tag=samantha,tag=this_dialog,limit=1]
stopsound @s[scores={Dialog=2417}] music
scoreboard players set @s[scores={Dialog=2417}] MusicType 1
scoreboard players set @s[scores={Dialog=2417}] Music 0
execute if entity @s[scores={Dialog=2417..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2417}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.73"}]}
tellraw @s[scores={Dialog=2473}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.74"}]}
tellraw @s[scores={Dialog=2553}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.75"}]}
tellraw @s[scores={Dialog=2585}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_samantha_battle.76"}]}
tag @s[scores={Dialog=2641}] remove dialog_infinity_vs_samantha_battle
scoreboard players reset @s[scores={Dialog=2641}] DialogNr
scoreboard players set @s[scores={Dialog=2641}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.screws music @s[scores={Music=0,MusicType=-1,Dialog=..167}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=..167}] Music 250
playsound medabots_server:music.entity.max music @s[scores={Music=0,MusicType=-1,Dialog=168..2242}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=168..2242}] Music 578
playsound medabots_server:music.entity.screws music @s[scores={Music=0,MusicType=-1,Dialog=2243..}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=2243..}] Music 250