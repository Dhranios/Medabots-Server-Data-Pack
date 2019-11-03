execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity haru_and_tune
scoreboard players set @s[scores={Dialog=1}] MusicType 43
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1}] run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -367 55 -68 run function medabots_server:spawn_entities/cutscene/doctor_haru
execute if entity @s[scores={Dialog=1..4163}] at @e[tag=doctor_haru,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=doctor_haru,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.1"}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.2","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.3"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.4"}]}
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.5"}]}
execute if entity @s[scores={Dialog=192..201}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ ~-90 ~
execute if entity @s[scores={Dialog=202..211}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ ~90 ~
tellraw @s[scores={Dialog=212}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.6"}]}
tellraw @s[scores={Dialog=236}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.7"}]}
tellraw @s[scores={Dialog=300}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.8"}]}
tellraw @s[scores={Dialog=340}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.9"}]}
tellraw @s[scores={Dialog=388}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.10"}]}
tellraw @s[scores={Dialog=436}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.11"}]}
tellraw @s[scores={Dialog=452}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.12"}]}
tellraw @s[scores={Dialog=484}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.13"}]}
tellraw @s[scores={Dialog=540}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.14"}]}
tellraw @s[scores={Dialog=564}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.15"}]}
tellraw @s[scores={Dialog=572}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.16"}]}
tellraw @s[scores={Dialog=644}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.17"}]}
scoreboard players set @s[scores={Dialog=700}] MusicType 49
scoreboard players set @s[scores={Dialog=700}] Music 0
tellraw @s[scores={Dialog=700}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.18"}]}
tellraw @s[scores={Dialog=788}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.19"}]}
tellraw @s[scores={Dialog=844}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.20"}]}
tellraw @s[scores={Dialog=900}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.21"}]}
tellraw @s[scores={Dialog=1004}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.22"}]}
tellraw @s[scores={Dialog=1036}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.23"}]}
tellraw @s[scores={Dialog=1116}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.24"}]}
tellraw @s[scores={Dialog=1140}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.25"}]}
tellraw @s[scores={Dialog=1148}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.26"}]}
tellraw @s[scores={Dialog=1168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.27"}]}
tellraw @s[scores={Dialog=1280}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.28"}]}
tellraw @s[scores={Dialog=1376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.29","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=1408}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.30"}]}
tellraw @s[scores={Dialog=1424}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.31"}]}
tellraw @s[scores={Dialog=1488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.32"}]}
tellraw @s[scores={Dialog=1536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.33"}]}
tellraw @s[scores={Dialog=1544}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.34"}]}
tellraw @s[scores={Dialog=1632}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.35"}]}
tellraw @s[scores={Dialog=1680}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.36"}]}
tellraw @s[scores={Dialog=1760}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.37"}]}
tellraw @s[scores={Dialog=1856}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.38"}]}
tellraw @s[scores={Dialog=1944}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.39"}]}
tellraw @s[scores={Dialog=2064}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.40"}]}
tellraw @s[scores={Dialog=2168}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.41"}]}
tellraw @s[scores={Dialog=2208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.42"}]}
tellraw @s[scores={Dialog=2280}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.43"}]}
tellraw @s[scores={Dialog=2376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.44"}]}
tellraw @s[scores={Dialog=2384}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.45"}]}
tellraw @s[scores={Dialog=2456}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.46"}]}
tellraw @s[scores={Dialog=2512}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.47"}]}
tellraw @s[scores={Dialog=2576}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.48"}]}
tellraw @s[scores={Dialog=2600}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.49"}]}
tellraw @s[scores={Dialog=2632}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.50"}]}
tellraw @s[scores={Dialog=2800}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.51"}]}
tellraw @s[scores={Dialog=2808}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.52"}]}
tellraw @s[scores={Dialog=2832}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.53"}]}
tellraw @s[scores={Dialog=2928}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.54"}]}
tellraw @s[scores={Dialog=2944}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.55"}]}
tellraw @s[scores={Dialog=3008}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.56"}]}
tellraw @s[scores={Dialog=3064}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.57"}]}
tellraw @s[scores={Dialog=3088}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.58"}]}
tellraw @s[scores={Dialog=3192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.59"}]}
tellraw @s[scores={Dialog=3272}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.60"}]}
tellraw @s[scores={Dialog=3312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.61"}]}
tellraw @s[scores={Dialog=3440}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.62"}]}
tellraw @s[scores={Dialog=3456}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.63"}]}
tellraw @s[scores={Dialog=3544}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.64"}]}
tellraw @s[scores={Dialog=3584}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.65"}]}
scoreboard players set @s[scores={Dialog=3600}] MusicType 43
scoreboard players set @s[scores={Dialog=3600}] Music 0
tellraw @s[scores={Dialog=3600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.66"}]}
tellraw @s[scores={Dialog=3624}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.67"}]}
tellraw @s[scores={Dialog=3736}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.68"}]}
tellraw @s[scores={Dialog=3776}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.69"}]}
tellraw @s[scores={Dialog=3856}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.70"}]}
tellraw @s[scores={Dialog=3904}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.71"}]}
tellraw @s[scores={Dialog=3952}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.72"}]}
execute if entity @s[scores={Dialog=3976}] run function medabots_server:give_items/tinpet/male
tag @s[scores={Dialog=3976}] add already_gave_items
tellraw @s[scores={Dialog=3996}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.73"}]}
tellraw @s[scores={Dialog=4020}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.74"}]}
tellraw @s[scores={Dialog=4068}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.75"}]}
tellraw @s[scores={Dialog=4092}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.76"}]}
tellraw @s[scores={Dialog=4116}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.77"}]}
tellraw @s[scores={Dialog=4132}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.haru_and_tune.78"}]}
execute if entity @s[scores={Dialog=4164}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -388 55 -54
execute if entity @s[scores={Dialog=4164}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4165..4282}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4283}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -398 55 -54
execute if entity @s[scores={Dialog=4284..4323}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tag @s[scores={Dialog=4323}] remove already_gave_items
scoreboard players set @s[scores={Dialog=4323}] MusicType 1
scoreboard players set @s[scores={Dialog=4323}] Music 0
tag @s[scores={Dialog=4323}] remove dialog_infinity_haru_and_tune
scoreboard players reset @s[scores={Dialog=4323}] DialogNr
scoreboard players set @s[scores={Dialog=4323}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog