execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity doctor_harus_research
scoreboard players set @s[scores={Dialog=1}] MusicType 44
scoreboard players set @s[scores={Dialog=1}] Music 0
scoreboard players set @s[scores={Dialog=1}] Jukebox 0
execute if entity @s[scores={Dialog=1}] positioned -1584 50 -599 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1587 50 -602 run function medabots_server:spawn_entities/cutscene/caroline
execute if entity @s[scores={Dialog=1}] positioned -1585 50 -602 run function medabots_server:spawn_entities/cutscene/doctor_haru
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..5347}] at @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..5347}] at @e[tag=doctor_haru,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=doctor_haru,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1586 50 -599 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.1"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.2"}]}
tellraw @s[scores={Dialog=160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.3"}]}
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.4"}]}
tellraw @s[scores={Dialog=196}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.5"}]}
tellraw @s[scores={Dialog=204}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.6"}]}
tellraw @s[scores={Dialog=236}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.7"}]}
tellraw @s[scores={Dialog=260}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.8"}]}
tellraw @s[scores={Dialog=324}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.9"}]}
tellraw @s[scores={Dialog=332}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.10"}]}
tellraw @s[scores={Dialog=380}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.11"}]}
tellraw @s[scores={Dialog=460}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.12","with":[{"translate":"medabots_server:entity.doctor_haru"}]}]}
tellraw @s[scores={Dialog=484}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.13"}]}
tellraw @s[scores={Dialog=532}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.14"}]}
tellraw @s[scores={Dialog=556}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.15"}]}
tellraw @s[scores={Dialog=620}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.16"}]}
tellraw @s[scores={Dialog=676}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.17"}]}
tellraw @s[scores={Dialog=724}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.18"}]}
tellraw @s[scores={Dialog=732}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.19"}]}
tellraw @s[scores={Dialog=860}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.20"}]}
tellraw @s[scores={Dialog=924}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.21"}]}
tellraw @s[scores={Dialog=988}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.22"}]}
tellraw @s[scores={Dialog=1020}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.23"}]}
tellraw @s[scores={Dialog=1028}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.24"}]}
tellraw @s[scores={Dialog=1116}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.25"}]}
tellraw @s[scores={Dialog=1164}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.26"}]}
tellraw @s[scores={Dialog=1252}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.27"}]}
tellraw @s[scores={Dialog=1284}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.28"}]}
tellraw @s[scores={Dialog=1324}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.29"}]}
tellraw @s[scores={Dialog=1380}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.30"}]}
tellraw @s[scores={Dialog=1388}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.31"}]}
tellraw @s[scores={Dialog=1444}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.32"}]}
tellraw @s[scores={Dialog=1492}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.33"}]}
tellraw @s[scores={Dialog=1524}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.34"}]}
tellraw @s[scores={Dialog=1596}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.35"}]}
tellraw @s[scores={Dialog=1652}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.36"}]}
tellraw @s[scores={Dialog=1716}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.37"}]}
tellraw @s[scores={Dialog=1796}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.38"}]}
tellraw @s[scores={Dialog=1820}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.39"}]}
tellraw @s[scores={Dialog=1868}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.40"}]}
tellraw @s[scores={Dialog=1892}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.41"}]}
tellraw @s[scores={Dialog=1916}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.42"}]}
tellraw @s[scores={Dialog=1972}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.43"}]}
tellraw @s[scores={Dialog=2028}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.44"}]}
tellraw @s[scores={Dialog=2076}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.45"}]}
tellraw @s[scores={Dialog=2132}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.46"}]}
tellraw @s[scores={Dialog=2156}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.47"}]}
tellraw @s[scores={Dialog=2228}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.48"}]}
tellraw @s[scores={Dialog=2276}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.49"}]}
tellraw @s[scores={Dialog=2308}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.50"}]}
tellraw @s[scores={Dialog=2348}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.51"}]}
tellraw @s[scores={Dialog=2404}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.52"}]}
tellraw @s[scores={Dialog=2420}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.53"}]}
tellraw @s[scores={Dialog=2444}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.54"}]}
tellraw @s[scores={Dialog=2508}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.55"}]}
tellraw @s[scores={Dialog=2564}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.56"}]}
tellraw @s[scores={Dialog=2644}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.57"}]}
tellraw @s[scores={Dialog=2676}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.58"}]}
tellraw @s[scores={Dialog=2716}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.59"}]}
tellraw @s[scores={Dialog=2780}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.60"}]}
tellraw @s[scores={Dialog=2844}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.61"}]}
tellraw @s[scores={Dialog=2908}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.62"}]}
tellraw @s[scores={Dialog=3068}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.63"}]}
tellraw @s[scores={Dialog=3088}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.64"}]}
tellraw @s[scores={Dialog=3184}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.65"}]}
tellraw @s[scores={Dialog=3256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.66"}]}
tellraw @s[scores={Dialog=3336}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.67"}]}
tellraw @s[scores={Dialog=3528}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.68"}]}
tellraw @s[scores={Dialog=3600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.69"}]}
tellraw @s[scores={Dialog=3656}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.70"}]}
tellraw @s[scores={Dialog=3720}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.71"}]}
tellraw @s[scores={Dialog=3784}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.72"}]}
tellraw @s[scores={Dialog=3864}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.73"}]}
tellraw @s[scores={Dialog=3952}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.74"}]}
tellraw @s[scores={Dialog=4000}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.75"}]}
tellraw @s[scores={Dialog=4024}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.76"}]}
tellraw @s[scores={Dialog=4120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.77"}]}
tellraw @s[scores={Dialog=4248}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.78"}]}
tellraw @s[scores={Dialog=4288}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.79"}]}
tellraw @s[scores={Dialog=4308}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.80"}]}
tellraw @s[scores={Dialog=4404}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.81"}]}
tellraw @s[scores={Dialog=4692}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.82"}]}
tellraw @s[scores={Dialog=4740}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.83"}]}
tellraw @s[scores={Dialog=4756}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.84"}]}
tellraw @s[scores={Dialog=4796}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.85"}]}
tellraw @s[scores={Dialog=4860}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.86"}]}
tellraw @s[scores={Dialog=4876}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.87","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=4932}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.88"}]}
tellraw @s[scores={Dialog=4948}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.89"}]}
tellraw @s[scores={Dialog=4956}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.90"}]}
tellraw @s[scores={Dialog=4972}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.91"}]}
tellraw @s[scores={Dialog=5036}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.92"}]}
tellraw @s[scores={Dialog=5148}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.93"}]}
scoreboard players set @s[scores={Dialog=5164}] MusicType 55
scoreboard players set @s[scores={Dialog=5164}] Music 0
tellraw @s[scores={Dialog=5164}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.94"}]}
tellraw @s[scores={Dialog=5292}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.95"}]}
tellraw @s[scores={Dialog=5324}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.96"}]}
execute if entity @s[scores={Dialog=5348}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1587 50 -619
execute if entity @s[scores={Dialog=5348}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=5349..5428}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=5428}] run kill @e[tag=doctor_haru,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=5348}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1587 50 -619
execute if entity @s[scores={Dialog=5348}] run tag @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=5349..5428}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=5428}] run kill @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=5388..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=5388}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.97"}]}
tellraw @s[scores={Dialog=5412}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.98"}]}
tellraw @s[scores={Dialog=5468}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.99"}]}
tellraw @s[scores={Dialog=5516}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.doctor_harus_research.100"}]}
tag @s[scores={Dialog=5548}] remove dialog_infinity_doctor_harus_research
scoreboard players set @s[scores={Dialog=5548}] MusicType 22
scoreboard players set @s[scores={Dialog=5548}] Music 0
scoreboard players reset @s[scores={Dialog=5548}] DialogNr
scoreboard players set @s[scores={Dialog=5548}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog