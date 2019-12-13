execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity doctor_haru_defeated
scoreboard players set @s[scores={Dialog=1}] MusicType 45
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1584 50 -604 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1584 50 -602 run function medabots_server:spawn_entities/cutscene/caroline
execute if entity @s[scores={Dialog=1}] positioned -1585 50 -600 run function medabots_server:spawn_entities/cutscene/doctor_haru
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1586 50 -604 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.2"}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.3"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.4"}]}
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.5"}]}
tellraw @s[scores={Dialog=240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.6"}]}
tellraw @s[scores={Dialog=272}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.7"}]}
tellraw @s[scores={Dialog=304}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.8"}]}
tellraw @s[scores={Dialog=352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.9"}]}
tellraw @s[scores={Dialog=416}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.10"}]}
tellraw @s[scores={Dialog=448}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.11"}]}
tellraw @s[scores={Dialog=472}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.12"}]}
tellraw @s[scores={Dialog=512}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.13"}]}
tellraw @s[scores={Dialog=592}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.14"}]}
tellraw @s[scores={Dialog=664}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.15"}]}
tellraw @s[scores={Dialog=736}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.16"}]}
tellraw @s[scores={Dialog=808}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.17"}]}
tellraw @s[scores={Dialog=840}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.18"}]}
tellraw @s[scores={Dialog=936}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.19"}]}
tellraw @s[scores={Dialog=968}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.20"}]}
tellraw @s[scores={Dialog=1000}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.21"}]}
tellraw @s[scores={Dialog=1040}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.22"}]}
tellraw @s[scores={Dialog=1120}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.23"}]}
execute if entity @s[scores={Dialog=1140}] positioned -1586 50 -577 run function medabots_server:spawn_entities/cutscene/director_tune
execute if entity @s[scores={Dialog=1140}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1586 50 -598
execute if entity @s[scores={Dialog=1140}] run tag @e[tag=director_tune,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1239}] run tag @e[tag=director_tune,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=1240}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1140}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.24"}]}
tellraw @s[scores={Dialog=1148}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.25"}]}
tellraw @s[scores={Dialog=1156}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.26"}]}
tellraw @s[scores={Dialog=1220}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.27"}]}
tellraw @s[scores={Dialog=1292}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.28"}]}
tellraw @s[scores={Dialog=1340}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.29"}]}
tellraw @s[scores={Dialog=1396}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.30"}]}
tellraw @s[scores={Dialog=1420}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.31"}]}
tellraw @s[scores={Dialog=1500}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.32"}]}
execute if entity @s[scores={Dialog=1530..2307}] at @e[tag=director_tune,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=director_tune,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1564}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.33"}]}
tellraw @s[scores={Dialog=1596}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.34"}]}
tellraw @s[scores={Dialog=1660}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.35"}]}
tellraw @s[scores={Dialog=1692}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.36"}]}
tellraw @s[scores={Dialog=1700}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.37"}]}
tellraw @s[scores={Dialog=1740}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.38"}]}
tellraw @s[scores={Dialog=1820}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.39"}]}
tellraw @s[scores={Dialog=1900}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.40"}]}
scoreboard players set @s[scores={Dialog=1908}] MusicType 49
scoreboard players set @s[scores={Dialog=1908}] Music 0
tellraw @s[scores={Dialog=1908}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.41"}]}
tellraw @s[scores={Dialog=1916}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.42"}]}
tellraw @s[scores={Dialog=2004}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.43"}]}
tellraw @s[scores={Dialog=2124}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.44"}]}
tellraw @s[scores={Dialog=2164}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.45"}]}
tellraw @s[scores={Dialog=2204}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.46"}]}
execute if entity @s[scores={Dialog=2268..3159}] at @e[tag=doctor_haru,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=doctor_haru,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2308}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2308}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.47"}]}
tellraw @s[scores={Dialog=2316}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.48"}]}
tellraw @s[scores={Dialog=2340}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.49"}]}
tellraw @s[scores={Dialog=2380}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.50"}]}
tellraw @s[scores={Dialog=2428}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.51"}]}
tellraw @s[scores={Dialog=2492}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.52"}]}
tellraw @s[scores={Dialog=2564}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.53"}]}
tellraw @s[scores={Dialog=2652}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.54"}]}
tellraw @s[scores={Dialog=2716}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.55"}]}
tellraw @s[scores={Dialog=2740}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.56"}]}
tellraw @s[scores={Dialog=2860}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.57"}]}
tellraw @s[scores={Dialog=2932}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.58"}]}
tellraw @s[scores={Dialog=2996}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.59"}]}
tellraw @s[scores={Dialog=3020}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.60"}]}
tellraw @s[scores={Dialog=3052}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.61"}]}
tellraw @s[scores={Dialog=3084}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.62"}]}
tellraw @s[scores={Dialog=3148}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.63"}]}
tellraw @s[scores={Dialog=3180}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.64"}]}
execute if entity @s[scores={Dialog=3160}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 ~
tellraw @s[scores={Dialog=3212}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.65"}]}
scoreboard players set @s[scores={Dialog=3268}] MusicType 45
scoreboard players set @s[scores={Dialog=3268}] Music 0
tellraw @s[scores={Dialog=3268}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.66"}]}
tellraw @s[scores={Dialog=3284}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.67"}]}
tellraw @s[scores={Dialog=3372}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.68"}]}
tellraw @s[scores={Dialog=3428}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.69"}]}
tellraw @s[scores={Dialog=3484}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.70"}]}
tellraw @s[scores={Dialog=3524}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.71"}]}
tellraw @s[scores={Dialog=3540}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.72"}]}
tellraw @s[scores={Dialog=3588}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.73"}]}
tellraw @s[scores={Dialog=3604}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.74"}]}
tellraw @s[scores={Dialog=3660}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.75"}]}
tellraw @s[scores={Dialog=3692}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.76"}]}
tellraw @s[scores={Dialog=3716}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.77"}]}
tellraw @s[scores={Dialog=3772}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.78"}]}
tellraw @s[scores={Dialog=3820}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.79"}]}
tellraw @s[scores={Dialog=3836}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.80"}]}
tellraw @s[scores={Dialog=3884}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.81"}]}
tellraw @s[scores={Dialog=3916}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.82"}]}
tellraw @s[scores={Dialog=4020}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.83"}]}
tellraw @s[scores={Dialog=4124}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.84"}]}
tellraw @s[scores={Dialog=4148}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.85"}]}
tellraw @s[scores={Dialog=4220}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.86"}]}
tellraw @s[scores={Dialog=4228}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.87"}]}
tellraw @s[scores={Dialog=4364}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.88"}]}
tellraw @s[scores={Dialog=4444}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.89"}]}
tellraw @s[scores={Dialog=4476}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.90"}]}
tellraw @s[scores={Dialog=4540}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.91"}]}
tellraw @s[scores={Dialog=4604}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.92"}]}
tellraw @s[scores={Dialog=4684}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.93"}]}
tellraw @s[scores={Dialog=4724}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.94"}]}
tellraw @s[scores={Dialog=4780}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.95"}]}
tellraw @s[scores={Dialog=4796}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.96"}]}
tellraw @s[scores={Dialog=4804}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.97"}]}
execute if entity @s[scores={Dialog=4908}] run tag @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4912}] run tag @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
tellraw @s[scores={Dialog=4908}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.98"}]}
tellraw @s[scores={Dialog=4928}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.99"}]}
tellraw @s[scores={Dialog=4992}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.100"}]}
tellraw @s[scores={Dialog=5000}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.101"}]}
tellraw @s[scores={Dialog=5024}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.102"}]}
tellraw @s[scores={Dialog=5096}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.103"}]}
tellraw @s[scores={Dialog=5160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.104"}]}
tellraw @s[scores={Dialog=5168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.105"}]}
tellraw @s[scores={Dialog=5224}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.106"}]}
tellraw @s[scores={Dialog=5232}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.107"}]}
tellraw @s[scores={Dialog=5304}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.108"}]}
tellraw @s[scores={Dialog=5312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.109"}]}
tellraw @s[scores={Dialog=5376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.110"}]}
tellraw @s[scores={Dialog=5384}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.111"}]}
scoreboard players set @s[scores={Dialog=5408}] MusicType 48
scoreboard players set @s[scores={Dialog=5408}] Music 0
tellraw @s[scores={Dialog=5408}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.112"}]}
tellraw @s[scores={Dialog=5424}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.113"}]}
tellraw @s[scores={Dialog=5480}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.114"}]}
tellraw @s[scores={Dialog=5488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.115"}]}
tellraw @s[scores={Dialog=5512}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.116"}]}
tellraw @s[scores={Dialog=5560}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.117"}]}
tellraw @s[scores={Dialog=5624}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.118"}]}
tellraw @s[scores={Dialog=5648}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.119"}]}
tellraw @s[scores={Dialog=5736}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.120"}]}
tellraw @s[scores={Dialog=5808}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.121"}]}
tellraw @s[scores={Dialog=5864}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.122"}]}
tellraw @s[scores={Dialog=5872}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.123"}]}
tellraw @s[scores={Dialog=5912}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.124"}]}
execute if entity @s[scores={Dialog=5920..7115}] at @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=5920}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.125"}]}
tellraw @s[scores={Dialog=6032}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.126"}]}
tellraw @s[scores={Dialog=6080}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.127"}]}
tellraw @s[scores={Dialog=6192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.128"}]}
tellraw @s[scores={Dialog=6264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.129"}]}
execute if entity @s[scores={Dialog=6344}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=6344}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.130"}]}
tellraw @s[scores={Dialog=6384}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.131"}]}
tellraw @s[scores={Dialog=6472}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.132"}]}
tellraw @s[scores={Dialog=6544}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.133"}]}
tellraw @s[scores={Dialog=6584}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.134"}]}
tellraw @s[scores={Dialog=6632}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.135"}]}
tellraw @s[scores={Dialog=6704}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.136"}]}
tellraw @s[scores={Dialog=6792}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.137"}]}
tellraw @s[scores={Dialog=6864}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.138"}]}
tellraw @s[scores={Dialog=7040}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.139"}]}
tellraw @s[scores={Dialog=7096}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.140"}]}
execute if entity @s[scores={Dialog=7116}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=7116}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.141"}]}
tellraw @s[scores={Dialog=7124}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.142"}]}
tellraw @s[scores={Dialog=7156}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.143"}]}
tellraw @s[scores={Dialog=7164}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.144"}]}
tellraw @s[scores={Dialog=7220}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.145"}]}
tellraw @s[scores={Dialog=7276}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.146"}]}
tellraw @s[scores={Dialog=7340}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.147"}]}
tellraw @s[scores={Dialog=7364}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.148"}]}
tellraw @s[scores={Dialog=7412}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.149"}]}
tellraw @s[scores={Dialog=7468}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.150"}]}
tellraw @s[scores={Dialog=7476}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.151"}]}
tellraw @s[scores={Dialog=7572}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.152"}]}
tellraw @s[scores={Dialog=7668}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.153"}]}
tellraw @s[scores={Dialog=7740}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.154"}]}
execute if entity @s[scores={Dialog=7764}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=7764}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.155"}]}
tellraw @s[scores={Dialog=7780}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.156"}]}
tellraw @s[scores={Dialog=7796}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.157"}]}
tellraw @s[scores={Dialog=7908}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.158"}]}
tellraw @s[scores={Dialog=7972}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.159"}]}
tellraw @s[scores={Dialog=8044}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.160"}]}
tellraw @s[scores={Dialog=8140}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.161"}]}
tellraw @s[scores={Dialog=8160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.162"}]}
tellraw @s[scores={Dialog=8184}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.163"}]}
tellraw @s[scores={Dialog=8208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.164"}]}
tellraw @s[scores={Dialog=8296}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.165"}]}
tellraw @s[scores={Dialog=8320}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.166"}]}
tellraw @s[scores={Dialog=8336}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.167"}]}
tellraw @s[scores={Dialog=8384}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.168"}]}
tellraw @s[scores={Dialog=8440}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.169"}]}
tellraw @s[scores={Dialog=8448}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.170"}]}
tellraw @s[scores={Dialog=8472}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.171"}]}
tellraw @s[scores={Dialog=8536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.172"}]}
tellraw @s[scores={Dialog=8552}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.173"}]}
tellraw @s[scores={Dialog=8568}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.174"}]}
execute if entity @s[scores={Dialog=8648}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1586 50 -577
execute if entity @s[scores={Dialog=8648}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=8678}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] remove walking
tellraw @s[scores={Dialog=8668}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.175"}]}
tellraw @s[scores={Dialog=8676}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.176"}]}
tellraw @s[scores={Dialog=8708}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.177"}]}
tellraw @s[scores={Dialog=8812}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.178"}]}
execute if entity @s[scores={Dialog=8876}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1586 50 -577
execute if entity @s[scores={Dialog=8876}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=8950}] run kill @e[tag=doctor_haru,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=8896}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.179"}]}
execute if entity @s[scores={Dialog=8904}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1586 50 -577
execute if entity @s[scores={Dialog=8904}] run tag @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=9018}] run kill @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1]
scoreboard players set @s[scores={Dialog=8944}] MusicType 50
scoreboard players set @s[scores={Dialog=8944}] Music 0
execute if entity @s[scores={Dialog=8944..9167}] at @e[tag=director_tune,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=director_tune,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=8944}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.180"}]}
tellraw @s[scores={Dialog=8960}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.181"}]}
tellraw @s[scores={Dialog=9040}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.182"}]}
tellraw @s[scores={Dialog=9056}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.183"}]}
tellraw @s[scores={Dialog=9088}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.184"}]}
tellraw @s[scores={Dialog=9160}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.doctor_haru_defeated.185"}]}
execute if entity @s[scores={Dialog=9168}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1586 50 -577
execute if entity @s[scores={Dialog=9168}] run tag @e[tag=director_tune,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=9218}] run kill @e[tag=director_tune,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=9168}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1585 50 -602
execute if entity @s[scores={Dialog=9168}] run tag @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=9179}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1586 50 -577
tag @s[scores={Dialog=9235}] remove dialog_infinity_doctor_haru_defeated
scoreboard players set @s[scores={Dialog=9235}] MusicType 22
scoreboard players set @s[scores={Dialog=9235}] Music 0
scoreboard players reset @s[scores={Dialog=9235}] DialogNr
scoreboard players set @s[scores={Dialog=9235}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog