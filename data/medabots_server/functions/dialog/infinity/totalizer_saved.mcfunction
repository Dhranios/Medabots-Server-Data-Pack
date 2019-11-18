execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity totalizer_saved
scoreboard players set @s[scores={Dialog=1}] MusicType 44
scoreboard players set @s[scores={Dialog=1}] Music 0
scoreboard players set @s[scores={Dialog=1}] Jukebox 0
execute if entity @s[scores={Dialog=1}] positioned -1541 50 -511 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1543 50 -513 run function medabots_server:spawn_entities/cutscene/totalizer
execute if entity @s[scores={Dialog=1}] positioned -1538 50 -515 run function medabots_server:spawn_entities/cutscene/caroline
execute if entity @s[scores={Dialog=1}] positioned -1538 50 -513 run function medabots_server:spawn_entities/cutscene/doctor_haru
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 ~
execute if entity @s[scores={Dialog=1..1027}] at @e[tag=doctor_haru,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=doctor_haru,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..1027}] at @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1541 50 -515 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.2"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.totalizer"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.3"}]}
tellraw @s[scores={Dialog=60}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.4"}]}
tellraw @s[scores={Dialog=116}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.5"}]}
tellraw @s[scores={Dialog=132}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.6"}]}
tellraw @s[scores={Dialog=204}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.7"}]}
execute if entity @s[scores={Dialog=212..1091}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=212}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.8"}]}
tellraw @s[scores={Dialog=244}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.9"}]}
tellraw @s[scores={Dialog=292}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.10"}]}
tellraw @s[scores={Dialog=340}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.11"}]}
tellraw @s[scores={Dialog=364}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.12"}]}
tellraw @s[scores={Dialog=412}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.13"}]}
tellraw @s[scores={Dialog=484}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.14"}]}
tellraw @s[scores={Dialog=596}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.15"}]}
tellraw @s[scores={Dialog=620}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.16"}]}
tellraw @s[scores={Dialog=652}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.17"}]}
tellraw @s[scores={Dialog=692}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.18"}]}
tellraw @s[scores={Dialog=748}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.19"}]}
tellraw @s[scores={Dialog=756}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.20"}]}
tellraw @s[scores={Dialog=772}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.21"}]}
tellraw @s[scores={Dialog=788}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.22"}]}
tellraw @s[scores={Dialog=892}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.23"}]}
tellraw @s[scores={Dialog=916}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.24"}]}
tellraw @s[scores={Dialog=964}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.25"}]}
execute if entity @s[scores={Dialog=1028}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1541 50 -484
execute if entity @s[scores={Dialog=1028}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1029..1164}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1164}] run kill @e[tag=doctor_haru,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=1028}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1541 50 -484
execute if entity @s[scores={Dialog=1028}] run tag @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1029..1174}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1174}] run kill @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1]
scoreboard players set @s[scores={Dialog=1068}] MusicType 50
scoreboard players set @s[scores={Dialog=1068}] Music 0
tellraw @s[scores={Dialog=1068}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.26"}]}
tellraw @s[scores={Dialog=1076}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.27"}]}
execute if entity @s[scores={Dialog=1092..2363}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1092}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.28"}]}
tellraw @s[scores={Dialog=1100}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.29"}]}
tellraw @s[scores={Dialog=1156}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.30"}]}
tellraw @s[scores={Dialog=1228}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.totalizer"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.31"}]}
execute if entity @s[scores={Dialog=1248..1267}] at @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1268}] as @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1288}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.32"}]}
tellraw @s[scores={Dialog=1312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.totalizer"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.33"}]}
tellraw @s[scores={Dialog=1328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.34"}]}
tellraw @s[scores={Dialog=1360}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.35"}]}
execute if entity @s[scores={Dialog=1376..1379}] at @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1376}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.36"}]}
tellraw @s[scores={Dialog=1424}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.totalizer"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.37"}]}
tellraw @s[scores={Dialog=1456}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.totalizer"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.38"}]}
execute if entity @s[scores={Dialog=1480}] as @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1480}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.39"}]}
tellraw @s[scores={Dialog=1512}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.totalizer"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.40"}]}
tellraw @s[scores={Dialog=1568}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.41"}]}
tellraw @s[scores={Dialog=1576}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.42"}]}
tellraw @s[scores={Dialog=1600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.totalizer"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.43"}]}
tellraw @s[scores={Dialog=1656}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.44"}]}
tellraw @s[scores={Dialog=1696}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.45"}]}
tellraw @s[scores={Dialog=1720}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.totalizer"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.46"}]}
tellraw @s[scores={Dialog=1792}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.47"}]}
tellraw @s[scores={Dialog=1808}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.totalizer"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.48"}]}
tellraw @s[scores={Dialog=1832}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.49"}]}
tellraw @s[scores={Dialog=1852}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.50"}]}
tellraw @s[scores={Dialog=1860}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.51"}]}
tellraw @s[scores={Dialog=1892}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.totalizer"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.52"}]}
tellraw @s[scores={Dialog=1912}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.totalizer"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.53"}]}
tellraw @s[scores={Dialog=1960}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.54"}]}
tellraw @s[scores={Dialog=2024}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.totalizer"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.55"}]}
tellraw @s[scores={Dialog=2064}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.56"}]}
tellraw @s[scores={Dialog=2120}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.57"}]}
tellraw @s[scores={Dialog=2176}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.58"}]}
tellraw @s[scores={Dialog=2208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.totalizer"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.59"}]}
execute if entity @s[scores={Dialog=2228}] as @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1541 50 -484
execute if entity @s[scores={Dialog=2228}] run tag @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2229..2364}] as @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2364}] run kill @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1]
scoreboard players set @s[scores={Dialog=2268}] MusicType 22
scoreboard players set @s[scores={Dialog=2268}] Music 0
tellraw @s[scores={Dialog=2268}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.60"}]}
tellraw @s[scores={Dialog=2340}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.61"}]}
tellraw @s[scores={Dialog=2428}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.62"}]}
tellraw @s[scores={Dialog=2452}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.totalizer_saved.63"}]}
tag @s[scores={Dialog=2468}] remove dialog_infinity_totalizer_saved
scoreboard players reset @s[scores={Dialog=2468}] DialogNr
scoreboard players set @s[scores={Dialog=2468}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog