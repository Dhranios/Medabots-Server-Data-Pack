execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity the_underground_arena
scoreboard players set @s[scores={Dialog=1}] MusicType 44
scoreboard players set @s[scores={Dialog=1}] Music 0
scoreboard players set @s[scores={Dialog=1}] Jukebox 0
execute if entity @s[scores={Dialog=1}] positioned -474 9 -79 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -465 9 -64 run function medabots_server:spawn_entities/cutscene/caroline
execute if entity @s[scores={Dialog=1}] positioned -470 9 -77 run function medabots_server:spawn_entities/cutscene/doctor_haru
execute if entity @s[scores={Dialog=1}] positioned -454 9 -76 run function medabots_server:spawn_entities/cutscene/karin
execute if entity @s[scores={Dialog=1}] positioned -469 9 -69 run function medabots_server:spawn_entities/cutscene/squidguts
execute if entity @s[scores={Dialog=1}] positioned -468 9 -69 run function medabots_server:spawn_entities/cutscene/gillgirl
execute if entity @s[scores={Dialog=1}] positioned -467 9 -69 run function medabots_server:spawn_entities/cutscene/shrimplips
execute if entity @s[scores={Dialog=1}] positioned -466 9 -69 run function medabots_server:spawn_entities/cutscene/seaslug
execute if entity @s[scores={Dialog=1}] positioned -464 9 -88 run function medabots_server:spawn_entities/cutscene/rubberobo
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] at @e[tag=doctor_haru,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=doctor_haru,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
teleport @s[scores={Dialog=1}] -474 9 -77 -90 0
teleport @s[scores={Dialog=2..}] -474 9 -77
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.2"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.3"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.4"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.5"}]}
tellraw @s[scores={Dialog=192}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.6"}]}
tellraw @s[scores={Dialog=216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.7"}]}
tellraw @s[scores={Dialog=328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.8"}]}
tellraw @s[scores={Dialog=416}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.9"}]}
tellraw @s[scores={Dialog=496}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.10"}]}
tellraw @s[scores={Dialog=600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.11"}]}
tellraw @s[scores={Dialog=680}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.12"}]}
tellraw @s[scores={Dialog=712}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.13"}]}
tellraw @s[scores={Dialog=792}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.14"}]}
tellraw @s[scores={Dialog=824}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.15"}]}
tellraw @s[scores={Dialog=912}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.16"}]}
tellraw @s[scores={Dialog=936}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.17"}]}
tellraw @s[scores={Dialog=968}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.18"}]}
tellraw @s[scores={Dialog=992}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.19"}]}
tellraw @s[scores={Dialog=1024}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.20"}]}
tellraw @s[scores={Dialog=1064}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.21"}]}
tellraw @s[scores={Dialog=1136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.22"}]}
tellraw @s[scores={Dialog=1144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.23"}]}
tellraw @s[scores={Dialog=1208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.24"}]}
tellraw @s[scores={Dialog=1216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.25"}]}
tellraw @s[scores={Dialog=1288}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.26"}]}
tellraw @s[scores={Dialog=1352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.27"}]}
tellraw @s[scores={Dialog=1368}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.28"}]}
tellraw @s[scores={Dialog=1488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.29"}]}
tellraw @s[scores={Dialog=1520}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.30"}]}
tellraw @s[scores={Dialog=1552}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.31"}]}
tellraw @s[scores={Dialog=1576}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.32"}]}
tellraw @s[scores={Dialog=1648}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.33"}]}
tellraw @s[scores={Dialog=1712}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.34"}]}
tellraw @s[scores={Dialog=1776}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.35"}]}
tellraw @s[scores={Dialog=1800}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.36"}]}
tellraw @s[scores={Dialog=1864}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.37"}]}
tellraw @s[scores={Dialog=1896}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.38"}]}
tellraw @s[scores={Dialog=1920}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.39"}]}
execute if entity @s[scores={Dialog=2000}] positioned -482 9 -78 run function medabots_server:spawn_entities/cutscene/director_tune
scoreboard players set @s[scores={Dialog=2000}] MusicType 50
scoreboard players set @s[scores={Dialog=2000}] Music 0
execute if entity @s[scores={Dialog=2000}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 0
execute if entity @s[scores={Dialog=2000}] run tag @e[tag=director_tune,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2001..2027}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2027}] run tag @e[tag=director_tune,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=2002}] run setblock -480 7 -79 minecraft:redstone_block
execute if entity @s[scores={Dialog=2018}] run setblock -480 7 -79 minecraft:air
execute if entity @s[scores={Dialog=2028}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=director_tune,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2028}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s facing entity @e[tag=director_tune,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2028}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2000}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.40"}]}
tellraw @s[scores={Dialog=2040}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.41"}]}
tellraw @s[scores={Dialog=2056}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.42"}]}
tellraw @s[scores={Dialog=2064}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.43"}]}
tellraw @s[scores={Dialog=2072}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.44"}]}
tellraw @s[scores={Dialog=2104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.45"}]}
tellraw @s[scores={Dialog=2216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.46"}]}
tellraw @s[scores={Dialog=2296}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.47"}]}
tellraw @s[scores={Dialog=2352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.48"}]}
tellraw @s[scores={Dialog=2368}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.49"}]}
tellraw @s[scores={Dialog=2440}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.50"}]}
tellraw @s[scores={Dialog=2504}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.51"}]}
tellraw @s[scores={Dialog=2524}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.52"}]}
tellraw @s[scores={Dialog=2588}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.53"}]}
tellraw @s[scores={Dialog=2628}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.54"}]}
tellraw @s[scores={Dialog=2708}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.55"}]}
tellraw @s[scores={Dialog=2756}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.56"}]}
tellraw @s[scores={Dialog=2820}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.57"}]}
tellraw @s[scores={Dialog=2852}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.58"}]}
tellraw @s[scores={Dialog=2868}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.59"}]}
tellraw @s[scores={Dialog=2932}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.60"}]}
tellraw @s[scores={Dialog=2952}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.61"}]}
tellraw @s[scores={Dialog=3024}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.62","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=3064}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.63"}]}
tellraw @s[scores={Dialog=3128}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.64"}]}
tellraw @s[scores={Dialog=3152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.65"}]}
tellraw @s[scores={Dialog=3200}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.66"}]}
tellraw @s[scores={Dialog=3296}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.67"}]}
tellraw @s[scores={Dialog=3312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.68"}]}
tellraw @s[scores={Dialog=3392}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.69"}]}
tellraw @s[scores={Dialog=3488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.70"}]}
tellraw @s[scores={Dialog=3568}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.71"}]}
execute if entity @s[scores={Dialog=3752}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=3752}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.72"}]}
tellraw @s[scores={Dialog=3760}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.73"}]}
tellraw @s[scores={Dialog=3808}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.74"}]}
tellraw @s[scores={Dialog=3952}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.75"}]}
tellraw @s[scores={Dialog=3992}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.76"}]}
tellraw @s[scores={Dialog=4048}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.77"}]}
tellraw @s[scores={Dialog=4104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.78"}]}
tellraw @s[scores={Dialog=4160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.79"}]}
execute if entity @s[scores={Dialog=4184}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -472 9 -69
execute if entity @s[scores={Dialog=4184}] run tag @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4185..4224}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4225}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -471 9 -75
execute if entity @s[scores={Dialog=4226..4255}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4255}] run tag @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=4256}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=4226..4258}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=4226..4258}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=4226..4258}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=4258}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.80"}]}
tellraw @s[scores={Dialog=4322}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.81"}]}
execute if entity @s[scores={Dialog=4330}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=4330}] at @e[tag=doctor_haru,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=doctor_haru,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=4330}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=4330}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.82"}]}
tellraw @s[scores={Dialog=4442}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.83"}]}
tellraw @s[scores={Dialog=4466}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.84"}]}
tellraw @s[scores={Dialog=4474}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.85"}]}
tellraw @s[scores={Dialog=4522}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.86"}]}
tellraw @s[scores={Dialog=4618}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.87"}]}
tellraw @s[scores={Dialog=4642}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.88"}]}
tellraw @s[scores={Dialog=4754}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.89"}]}
execute if entity @s[scores={Dialog=4794}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
execute if entity @s[scores={Dialog=4794}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4795..4799}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4799}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=4800}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=4800}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=4800}] at @e[tag=doctor_haru,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=doctor_haru,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=4800}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=4800}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.90"}]}
tellraw @s[scores={Dialog=4808}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.91"}]}
tellraw @s[scores={Dialog=4840}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.92"}]}
tellraw @s[scores={Dialog=4928}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.93"}]}
tellraw @s[scores={Dialog=5040}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.94"}]}
tellraw @s[scores={Dialog=5056}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.95"}]}
tellraw @s[scores={Dialog=5096}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.96"}]}
tellraw @s[scores={Dialog=5104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.97"}]}
tellraw @s[scores={Dialog=5168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.98"}]}
tellraw @s[scores={Dialog=5200}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.99"}]}
tellraw @s[scores={Dialog=5248}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.100"}]}
tellraw @s[scores={Dialog=5320}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.101"}]}
tellraw @s[scores={Dialog=5328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.102"}]}
tellraw @s[scores={Dialog=5392}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.103"}]}
tellraw @s[scores={Dialog=5424}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.104"}]}
tellraw @s[scores={Dialog=5488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.105"}]}
tellraw @s[scores={Dialog=5512}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.106"}]}
tellraw @s[scores={Dialog=5560}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.107"}]}
tellraw @s[scores={Dialog=5656}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.108"}]}
tellraw @s[scores={Dialog=5672}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.109"}]}
tellraw @s[scores={Dialog=5720}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.110"}]}
tellraw @s[scores={Dialog=5752}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.111"}]}
tellraw @s[scores={Dialog=5808}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.112"}]}
tellraw @s[scores={Dialog=5832}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.113"}]}
tellraw @s[scores={Dialog=5872}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.114"}]}
tellraw @s[scores={Dialog=5928}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.115"}]}
tellraw @s[scores={Dialog=5960}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.116"}]}
tellraw @s[scores={Dialog=5992}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.117"}]}
tellraw @s[scores={Dialog=6040}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.118"}]}
tellraw @s[scores={Dialog=6048}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.119","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=6072}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.120"}]}
tellraw @s[scores={Dialog=6096}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.121"}]}
tellraw @s[scores={Dialog=6144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.122"}]}
tellraw @s[scores={Dialog=6152}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.123"}]}
tellraw @s[scores={Dialog=6224}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.124"}]}
execute if entity @s[scores={Dialog=6240}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=6240}] run tag @e[tag=director_tune,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=6241..6267}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=6267}] run kill @e[tag=director_tune,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=6249}] run setblock -480 7 -79 minecraft:redstone_block
execute if entity @s[scores={Dialog=6265}] run setblock -480 7 -79 minecraft:air
tellraw @s[scores={Dialog=6272}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.125"}]}
tellraw @s[scores={Dialog=6312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.126"}]}
tellraw @s[scores={Dialog=6360}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.127"}]}
tellraw @s[scores={Dialog=6368}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.128"}]}
tellraw @s[scores={Dialog=6400}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.129"}]}
scoreboard players set @s[scores={Dialog=6416}] MusicType 32
scoreboard players set @s[scores={Dialog=6416}] Music 0
execute if entity @s[scores={Dialog=6416}] as @e[tag=squidguts,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=6416}] run tag @e[tag=squidguts,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=6417..6439}] as @e[tag=squidguts,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=6440}] as @e[tag=squidguts,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
execute if entity @s[scores={Dialog=6441..6454}] as @e[tag=squidguts,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=6454}] run tag @e[tag=squidguts,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=6416}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=6416}] run tag @e[tag=gillgirl,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=6417..6439}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=6440}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
execute if entity @s[scores={Dialog=6441..6454}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=6454}] run tag @e[tag=gillgirl,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=6416}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=6416}] run tag @e[tag=shrimplips,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=6417..6440}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=6441}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
execute if entity @s[scores={Dialog=6442..6455}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=6455}] run tag @e[tag=shrimplips,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=6416}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=6416}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=6417..6440}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=6441}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
execute if entity @s[scores={Dialog=6442..6455}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=6455}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=6456}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=shrimplips,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=6456}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=shrimplips,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=6456}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s facing entity @e[tag=shrimplips,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=6456}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.130"}]}
tellraw @s[scores={Dialog=6488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.131"}]}
tellraw @s[scores={Dialog=6552}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.132"}]}
tellraw @s[scores={Dialog=6568}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.133"}]}
tellraw @s[scores={Dialog=6608}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.134"}]}
tellraw @s[scores={Dialog=6672}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.135"}]}
tellraw @s[scores={Dialog=6680}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.136"}]}
tellraw @s[scores={Dialog=6760}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.137"}]}
tellraw @s[scores={Dialog=6768}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.138"}]}
execute if entity @s[scores={Dialog=6856}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s facing entity @e[tag=shrimplips,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=6856}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.139"}]}
execute if entity @s[scores={Dialog=6876}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s facing entity @e[tag=gillgirl,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=6896}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.140"}]}
tellraw @s[scores={Dialog=6976}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.141"}]}
execute if entity @s[scores={Dialog=7064}] as @e[tag=squidguts,tag=this_dialog,limit=1] at @s facing entity @e[tag=gillgirl,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=7064}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.142"}]}
execute if entity @s[scores={Dialog=7084}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s facing entity @e[tag=squidguts,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=7096}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.143"}]}
tellraw @s[scores={Dialog=7160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.144"}]}
execute if entity @s[scores={Dialog=7176}] as @e[tag=squidguts,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 ~
execute if entity @s[scores={Dialog=7176}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 ~
execute if entity @s[scores={Dialog=7176}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 ~
tellraw @s[scores={Dialog=7176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.145"}]}
tellraw @s[scores={Dialog=7184}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.146"}]}
tellraw @s[scores={Dialog=7232}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.147"}]}
tellraw @s[scores={Dialog=7320}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.148"}]}
tellraw @s[scores={Dialog=7352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.149"}]}
tellraw @s[scores={Dialog=7360}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.150"}]}
tellraw @s[scores={Dialog=7464}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.151"}]}
tellraw @s[scores={Dialog=7528}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.152"}]}
tellraw @s[scores={Dialog=7600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.153"}]}
tellraw @s[scores={Dialog=7680}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.154"}]}
tellraw @s[scores={Dialog=7688}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.155"}]}
tellraw @s[scores={Dialog=7720}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.156"}]}
tellraw @s[scores={Dialog=7744}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.157"}]}
tellraw @s[scores={Dialog=7768}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.158"}]}
tellraw @s[scores={Dialog=7824}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.159"}]}
tellraw @s[scores={Dialog=7840}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.160"}]}
tellraw @s[scores={Dialog=7936}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.161"}]}
tellraw @s[scores={Dialog=7984}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.162"}]}
tellraw @s[scores={Dialog=8000}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.163"}]}
tellraw @s[scores={Dialog=8096}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.164"}]}
tellraw @s[scores={Dialog=8152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.165"}]}
tellraw @s[scores={Dialog=8184}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.166"}]}
tellraw @s[scores={Dialog=8200}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.167"}]}
tellraw @s[scores={Dialog=8216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.168"}]}
tellraw @s[scores={Dialog=8224}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.169"}]}
tellraw @s[scores={Dialog=8256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.170"}]}
execute if entity @s[scores={Dialog=8116}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=8116}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=8116..8148}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=8149}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=8150..8215}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=8215}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] remove running
execute if entity @s[scores={Dialog=8206..8215}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~0.2125
tellraw @s[scores={Dialog=8312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.171"}]}
tellraw @s[scores={Dialog=8360}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.172"}]}
tellraw @s[scores={Dialog=8392}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.173"}]}
tellraw @s[scores={Dialog=8424}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.174"}]}
tellraw @s[scores={Dialog=8504}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.175"}]}
tellraw @s[scores={Dialog=8600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.176"}]}
tellraw @s[scores={Dialog=8712}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.177"}]}
tellraw @s[scores={Dialog=8768}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.178"}]}
scoreboard players set @s[scores={Dialog=8800}] MusicType 44
scoreboard players set @s[scores={Dialog=8800}] Music 0
tellraw @s[scores={Dialog=8800}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.179"}]}
tellraw @s[scores={Dialog=8808}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.180"}]}
tellraw @s[scores={Dialog=8832}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.181"}]}
execute if entity @s[scores={Dialog=8864}] run tag @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=8864..8873}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~0.2125 ~-0.10125
execute if entity @s[scores={Dialog=8874..8883}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~-0.2125 ~-0.10125
execute if entity @s[scores={Dialog=8884}] run tag @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=8864}] as @e[tag=squidguts,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=8864}] run tag @e[tag=squidguts,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=8865..8884}] as @e[tag=squidguts,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=8885}] as @e[tag=squidguts,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -70 0
execute if entity @s[scores={Dialog=8886..8925}] as @e[tag=squidguts,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=8925}] run kill @e[tag=squidguts,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=8864}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=8864}] run tag @e[tag=gillgirl,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=8865..8884}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=8885}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -70 0
execute if entity @s[scores={Dialog=8886..8925}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=8925}] run kill @e[tag=gillgirl,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=8864}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=8864}] run tag @e[tag=shrimplips,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=8865..8884}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=8885}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -70 0
execute if entity @s[scores={Dialog=8886..8925}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=8925}] run kill @e[tag=shrimplips,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=8864}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=8864}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=8865..8884}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=8885}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -70 0
execute if entity @s[scores={Dialog=8886..8925}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=8925}] run kill @e[tag=seaslug,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=8864}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=8864}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=8865..8884}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=8885}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -70 0
execute if entity @s[scores={Dialog=8886..8925}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=8925}] run kill @e[tag=rubberobo,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=8924}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.182"}]}
tellraw @s[scores={Dialog=8948}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.183"}]}
tellraw @s[scores={Dialog=8964}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.184"}]}
tellraw @s[scores={Dialog=8972}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.185"}]}
tellraw @s[scores={Dialog=9044}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.186"}]}
tellraw @s[scores={Dialog=9052}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.187"}]}
tellraw @s[scores={Dialog=9100}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.188"}]}
tellraw @s[scores={Dialog=9180}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.189"}]}
tellraw @s[scores={Dialog=9292}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.190"}]}
tellraw @s[scores={Dialog=9364}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.191"}]}
tellraw @s[scores={Dialog=9396}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.192"}]}
tellraw @s[scores={Dialog=9428}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.193"}]}
execute if entity @s[scores={Dialog=9460}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=9460}] run tag @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=9461..9490}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=9491}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -70 0
execute if entity @s[scores={Dialog=9492..9511}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=9512}] run kill @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=9460}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -472 9 -73
execute if entity @s[scores={Dialog=9460}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=9461..9480}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=9481}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=9482..9501}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=9501}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -70 0
execute if entity @s[scores={Dialog=9502..9521}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=9522}] run kill @e[tag=doctor_haru,tag=this_dialog,limit=1]
scoreboard players set @s[scores={Dialog=9522}] MusicType 22
scoreboard players set @s[scores={Dialog=9522}] Music 0
tellraw @s[scores={Dialog=9522}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.194"}]}
tellraw @s[scores={Dialog=9546}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.195"}]}
tellraw @s[scores={Dialog=9634}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.196"}]}
tellraw @s[scores={Dialog=9650}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.the_underground_arena.197"}]}
tag @s[scores={Dialog=9666}] remove dialog_infinity_the_underground_arena
scoreboard players reset @s[scores={Dialog=9666}] DialogNr
scoreboard players set @s[scores={Dialog=9666}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog