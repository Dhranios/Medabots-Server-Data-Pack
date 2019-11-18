execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity maxs_first_love
scoreboard players set @s[scores={Dialog=1}] MusicType 37
scoreboard players set @s[scores={Dialog=1}] Music 0
scoreboard players set @s[scores={Dialog=1}] Jukebox 0
execute if entity @s[scores={Dialog=1}] positioned -322 55 -33 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -321 55 -39 run function medabots_server:spawn_entities/cutscene/max
execute if entity @s[scores={Dialog=1}] positioned -325 55 -38 run function medabots_server:spawn_entities/cutscene/erika
execute if entity @s[scores={Dialog=1}] positioned -327 55 -35 run function medabots_server:spawn_entities/cutscene/director_tune
teleport @s[scores={Dialog=1}] -320 55 -34 133 0
teleport @s[scores={Dialog=2..}] -320 55 -34
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 150 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 20 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -30 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.2"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.3","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.4"}]}
tellraw @s[scores={Dialog=112}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.5"}]}
tellraw @s[scores={Dialog=144}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.6"}]}
tellraw @s[scores={Dialog=184}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.7"}]}
tellraw @s[scores={Dialog=216}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.8"}]}
tellraw @s[scores={Dialog=256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.9"}]}
tellraw @s[scores={Dialog=280}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.10"}]}
tellraw @s[scores={Dialog=320}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.11"}]}
tellraw @s[scores={Dialog=352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.12"}]}
tellraw @s[scores={Dialog=416}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.13","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=496}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.14"}]}
tellraw @s[scores={Dialog=528}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.15"}]}
tellraw @s[scores={Dialog=584}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.16"}]}
tellraw @s[scores={Dialog=640}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.17"}]}
tellraw @s[scores={Dialog=664}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.18"}]}
tellraw @s[scores={Dialog=696}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.19"}]}
tellraw @s[scores={Dialog=728}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.20"}]}
tellraw @s[scores={Dialog=760}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.21"}]}
tellraw @s[scores={Dialog=808}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.22"}]}
tellraw @s[scores={Dialog=864}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.23"}]}
tellraw @s[scores={Dialog=888}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.24"}]}
tellraw @s[scores={Dialog=920}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.25"}]}
tellraw @s[scores={Dialog=952}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.26"}]}
tellraw @s[scores={Dialog=970}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.27"}]}
tellraw @s[scores={Dialog=1002}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.28"}]}
tellraw @s[scores={Dialog=1034}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.29"}]}
tellraw @s[scores={Dialog=1058}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.30"}]}
tellraw @s[scores={Dialog=1154}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.31"}]}
tellraw @s[scores={Dialog=1234}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.32"}]}
tellraw @s[scores={Dialog=1378}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.33"}]}
tellraw @s[scores={Dialog=1450}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.34"}]}
tellraw @s[scores={Dialog=1482}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.35"}]}
tellraw @s[scores={Dialog=1524}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.36"}]}
tellraw @s[scores={Dialog=1540}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.37"}]}
tellraw @s[scores={Dialog=1572}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.38"}]}
tellraw @s[scores={Dialog=1612}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.39"}]}
tellraw @s[scores={Dialog=1676}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.40","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=1724}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.41"}]}
tellraw @s[scores={Dialog=1788}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.42"}]}
tellraw @s[scores={Dialog=1820}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.43"}]}
tellraw @s[scores={Dialog=1868}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.44"}]}
execute if entity @s[scores={Dialog=1892}] positioned -307 55 -52 run function medabots_server:spawn_entities/cutscene/brass
execute if entity @s[scores={Dialog=1892}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 60 ~
execute if entity @s[scores={Dialog=1893}] run tag @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1894..1994}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1994}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s remove walking
execute if entity @s[scores={Dialog=1994}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 ~
execute if entity @s[scores={Dialog=1994}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 115 ~
execute if entity @s[scores={Dialog=1994}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 ~
execute if entity @s[scores={Dialog=1994}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -160 ~
tellraw @s[scores={Dialog=1992}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.45"}]}
tellraw @s[scores={Dialog=2000}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.46"}]}
tellraw @s[scores={Dialog=2032}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.47"}]}
tellraw @s[scores={Dialog=2056}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.48"}]}
tellraw @s[scores={Dialog=2088}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.49"}]}
tellraw @s[scores={Dialog=2104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.50"}]}
tellraw @s[scores={Dialog=2144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.51"}]}
tellraw @s[scores={Dialog=2176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.52"}]}
tellraw @s[scores={Dialog=2208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.53"}]}
tellraw @s[scores={Dialog=2216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.54"}]}
tellraw @s[scores={Dialog=2332}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.55"}]}
execute if entity @s[scores={Dialog=2418}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -103 ~
execute if entity @s[scores={Dialog=2418}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -125 ~
tellraw @s[scores={Dialog=2418}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.56"}]}
tellraw @s[scores={Dialog=2440}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.57"}]}
execute if entity @s[scores={Dialog=2472}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -65 ~
tellraw @s[scores={Dialog=2472}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.58"}]}
tellraw @s[scores={Dialog=2504}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.59"}]}
tellraw @s[scores={Dialog=2536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.60"}]}
tellraw @s[scores={Dialog=2568}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.61"}]}
tellraw @s[scores={Dialog=2600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.62"}]}
tellraw @s[scores={Dialog=2624}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.63"}]}
scoreboard players set @s[scores={Dialog=2656}] MusicType 39
scoreboard players set @s[scores={Dialog=2656}] Music 0
tellraw @s[scores={Dialog=2656}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.64"}]}
tellraw @s[scores={Dialog=2736}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.65"}]}
tellraw @s[scores={Dialog=2800}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.66"}]}
tellraw @s[scores={Dialog=2880}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.67"}]}
tellraw @s[scores={Dialog=2904}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.68"}]}
tellraw @s[scores={Dialog=2936}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.69"}]}
tellraw @s[scores={Dialog=2960}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.70"}]}
tellraw @s[scores={Dialog=2972}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.71"}]}
tellraw @s[scores={Dialog=3044}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.72"}]}
tellraw @s[scores={Dialog=3084}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.73"}]}
tellraw @s[scores={Dialog=3116}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.74"}]}
tellraw @s[scores={Dialog=3132}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.75"}]}
tellraw @s[scores={Dialog=3164}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.76"}]}
tellraw @s[scores={Dialog=3196}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.77"}]}
tellraw @s[scores={Dialog=3228}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.78"}]}
tellraw @s[scores={Dialog=3260}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.79"}]}
tellraw @s[scores={Dialog=3268}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.80"}]}
tellraw @s[scores={Dialog=3276}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.81"}]}
tellraw @s[scores={Dialog=3284}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.82"}]}
tellraw @s[scores={Dialog=3316}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.83"}]}
tellraw @s[scores={Dialog=3348}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.84"}]}
tellraw @s[scores={Dialog=3380}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.85"}]}
tellraw @s[scores={Dialog=3412}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.86"}]}
tellraw @s[scores={Dialog=3432}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.87"}]}
execute if entity @s[scores={Dialog=3464}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -352 55 -52
execute if entity @s[scores={Dialog=3464}] run tag @e[tag=director_tune,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=3465..3585}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3586}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -354 55 -78
execute if entity @s[scores={Dialog=3587..}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tellraw @s[scores={Dialog=3464}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.88"}]}
execute if entity @s[scores={Dialog=3496}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -348 55 -49
execute if entity @s[scores={Dialog=3496}] run tag @e[tag=erika,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=3497..3616}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3617}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -354 55 -78
execute if entity @s[scores={Dialog=3618..}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tellraw @s[scores={Dialog=3496}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.89"}]}
execute if entity @s[scores={Dialog=3512}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -349 55 -49
execute if entity @s[scores={Dialog=3512}] run tag @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=3513..3630}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3631}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -354 55 -78
execute if entity @s[scores={Dialog=3632..}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tellraw @s[scores={Dialog=3512}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.90"}]}
tellraw @s[scores={Dialog=3544}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.91"}]}
tellraw @s[scores={Dialog=3580}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.92"}]}
tellraw @s[scores={Dialog=3636}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.93"}]}
tellraw @s[scores={Dialog=3668}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.94"}]}
execute if entity @s[scores={Dialog=3688}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -349 55 -49
execute if entity @s[scores={Dialog=3688}] run tag @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=3689..3827}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3828}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -354 55 -78
execute if entity @s[scores={Dialog=3829..}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
scoreboard players set @s[scores={Dialog=3748}] MusicType 1
scoreboard players set @s[scores={Dialog=3748}] Music 0
tellraw @s[scores={Dialog=3748}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.95"}]}
tellraw @s[scores={Dialog=3796}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.96"}]}
tellraw @s[scores={Dialog=3868}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.maxs_first_love.97"}]}
tag @s[scores={Dialog=3860}] remove dialog_infinity_maxs_first_love
scoreboard players reset @s[scores={Dialog=3860}] DialogNr
scoreboard players set @s[scores={Dialog=3860}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog