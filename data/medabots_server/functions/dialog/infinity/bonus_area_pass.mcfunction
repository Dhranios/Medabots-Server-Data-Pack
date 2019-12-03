execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity bonus_area_pass
scoreboard players set @s[scores={Dialog=1}] MusicType 42
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -397 55 -51 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -394 55 -52 run function medabots_server:spawn_entities/cutscene/director_tune
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=this_dialog,limit=1] at @s facing entity @e[tag=director_tune,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..4364}] at @e[tag=director_tune,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=director_tune,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.1","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.2"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.3"}]}
tellraw @s[scores={Dialog=112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.4"}]}
tellraw @s[scores={Dialog=248}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.5"}]}
tellraw @s[scores={Dialog=288}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.6"}]}
tellraw @s[scores={Dialog=384}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.7"}]}
tellraw @s[scores={Dialog=424}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.8"}]}
tellraw @s[scores={Dialog=472}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.9"}]}
tellraw @s[scores={Dialog=488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.10"}]}
tellraw @s[scores={Dialog=544}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.11"}]}
tellraw @s[scores={Dialog=576}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.12"}]}
tellraw @s[scores={Dialog=632}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.13"}]}
tellraw @s[scores={Dialog=640}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.14"}]}
tellraw @s[scores={Dialog=648}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.15"}]}
tellraw @s[scores={Dialog=672}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.16"}]}
tellraw @s[scores={Dialog=728}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.17"}]}
tellraw @s[scores={Dialog=744}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.18"}]}
tellraw @s[scores={Dialog=784}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.19"}]}
tellraw @s[scores={Dialog=808}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.20"}]}
tellraw @s[scores={Dialog=872}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.21"}]}
tellraw @s[scores={Dialog=952}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.22"}]}
tellraw @s[scores={Dialog=960}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.23"}]}
tellraw @s[scores={Dialog=1024}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.24"}]}
tellraw @s[scores={Dialog=1096}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.25"}]}
tellraw @s[scores={Dialog=1160}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.26"}]}
execute if entity @s[scores={Dialog=1216..1559}] at @e[tag=metabee,tag=this_dialog,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=this_dialog,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.27"}]}
tellraw @s[scores={Dialog=1280}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.28"}]}
tellraw @s[scores={Dialog=1304}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.29"}]}
tellraw @s[scores={Dialog=1336}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.30"}]}
tellraw @s[scores={Dialog=1368}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.31"}]}
tellraw @s[scores={Dialog=1432}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.32"}]}
tellraw @s[scores={Dialog=1496}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.33"}]}
tellraw @s[scores={Dialog=1528}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.34"}]}
execute if entity @s[scores={Dialog=1560..}] as @e[tag=metabee,tag=this_dialog,limit=1] at @s facing entity @e[tag=director_tune,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1560}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.35"}]}
tellraw @s[scores={Dialog=1580}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.36"}]}
tellraw @s[scores={Dialog=1604}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.37"}]}
tellraw @s[scores={Dialog=1668}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.38"}]}
tellraw @s[scores={Dialog=1700}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.39"}]}
tellraw @s[scores={Dialog=1756}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.40"}]}
tellraw @s[scores={Dialog=1772}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.41"}]}
tellraw @s[scores={Dialog=1860}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.42"}]}
tellraw @s[scores={Dialog=1884}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.43"}]}
tellraw @s[scores={Dialog=1924}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.44"}]}
tellraw @s[scores={Dialog=1948}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.45"}]}
tellraw @s[scores={Dialog=1964}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.46"}]}
tellraw @s[scores={Dialog=1988}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.47"}]}
tellraw @s[scores={Dialog=2004}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.48"}]}
tellraw @s[scores={Dialog=2044}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.49"}]}
tellraw @s[scores={Dialog=2068}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.50"}]}
tellraw @s[scores={Dialog=2084}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.51"}]}
tellraw @s[scores={Dialog=2180}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.52"}]}
tellraw @s[scores={Dialog=2204}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.53"}]}
tellraw @s[scores={Dialog=2316}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.54"}]}
tellraw @s[scores={Dialog=2324}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.55"}]}
tellraw @s[scores={Dialog=2364}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.56"}]}
tellraw @s[scores={Dialog=2444}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.57"}]}
tellraw @s[scores={Dialog=2452}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.58"}]}
tellraw @s[scores={Dialog=2532}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.59"}]}
tellraw @s[scores={Dialog=2604}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.50"}]}
tellraw @s[scores={Dialog=2700}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.61"}]}
tellraw @s[scores={Dialog=2748}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.62"}]}
tellraw @s[scores={Dialog=2764}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.63"}]}
tellraw @s[scores={Dialog=2788}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.64"}]}
tellraw @s[scores={Dialog=2852}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.65"}]}
tellraw @s[scores={Dialog=2932}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.66"}]}
tellraw @s[scores={Dialog=2964}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.67"}]}
tellraw @s[scores={Dialog=2972}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.68"}]}
tellraw @s[scores={Dialog=2988}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.69"}]}
tellraw @s[scores={Dialog=3028}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.70"}]}
tellraw @s[scores={Dialog=3052}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.71"}]}
tellraw @s[scores={Dialog=3068}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.72"}]}
tellraw @s[scores={Dialog=3092}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.73"}]}
tellraw @s[scores={Dialog=3116}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.74"}]}
tellraw @s[scores={Dialog=3148}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.75"}]}
tellraw @s[scores={Dialog=3188}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.76"}]}
tellraw @s[scores={Dialog=3268}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.77"}]}
tellraw @s[scores={Dialog=3316}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.78"}]}
tellraw @s[scores={Dialog=3348}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.79"}]}
tellraw @s[scores={Dialog=3420}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.80"}]}
tellraw @s[scores={Dialog=3540}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.81"}]}
tellraw @s[scores={Dialog=3548}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.82"}]}
tellraw @s[scores={Dialog=3636}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.83"}]}
tellraw @s[scores={Dialog=3644}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.84"}]}
tellraw @s[scores={Dialog=3708}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.85"}]}
tellraw @s[scores={Dialog=3724}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.86"}]}
tellraw @s[scores={Dialog=3796}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.87"}]}
tellraw @s[scores={Dialog=3820}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.88"}]}
tellraw @s[scores={Dialog=3844}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.89"}]}
execute if entity @s[scores={Dialog=3892},tag=!already_gave_items] run function medabots_server:give_items/medal/question
tag @s[scores={Dialog=3892},tag=!already_gave_items] add already_gave_items
tellraw @s[scores={Dialog=3912}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.90"}]}
tellraw @s[scores={Dialog=3944}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.91"}]}
tellraw @s[scores={Dialog=3984}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.92"}]}
tellraw @s[scores={Dialog=4008}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.93"}]}
tellraw @s[scores={Dialog=4048}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.94"}]}
tellraw @s[scores={Dialog=4064}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.95"}]}
tellraw @s[scores={Dialog=4112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.96"}]}
tellraw @s[scores={Dialog=4144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.97"}]}
advancement grant @s[scores={Dialog=4208}] only medabots_server:special_items/passes/bonus_area
tellraw @s[scores={Dialog=4228}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.98"}]}
tellraw @s[scores={Dialog=4244}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.99"}]}
tellraw @s[scores={Dialog=4332}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.100"}]}
execute if entity @s[scores={Dialog=4364}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=4364}] run tag @e[tag=director_tune,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4365..}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
scoreboard players set @s[scores={Dialog=4424}] MusicType 1
scoreboard players set @s[scores={Dialog=4424}] Music 0
tellraw @s[scores={Dialog=4424}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.101"}]}
tellraw @s[scores={Dialog=4432}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.bonus_area_pass.102"}]}
tag @s[scores={Dialog=4456}] remove already_gave_items
tag @s[scores={Dialog=4456}] remove dialog_infinity_bonus_area_pass
scoreboard players reset @s[scores={Dialog=4456}] DialogNr
scoreboard players set @s[scores={Dialog=4456}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog