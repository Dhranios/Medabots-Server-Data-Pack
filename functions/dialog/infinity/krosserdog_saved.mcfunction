execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity krosserdog_saved
stopsound @s[scores={Dialog=1}] music
scoreboard players set @s[scores={Dialog=1}] MusicType -1
playsound medabots_server:music.entity.doctor_haru.evil_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=1}] Music 97
execute if entity @s[scores={Dialog=1}] positioned -1539 50 -445 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1540 50 -447 run function medabots_server:spawn_entities/cutscene/krosserdog
execute if entity @s[scores={Dialog=1}] positioned -1535 50 -449 run function medabots_server:spawn_entities/cutscene/caroline
execute if entity @s[scores={Dialog=1}] positioned -1535 50 -447 run function medabots_server:spawn_entities/cutscene/doctor_haru
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..1111}] at @e[tag=doctor_haru,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=doctor_haru,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..1111}] at @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1539 50 -449 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.2"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.3"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.4"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.5"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.6"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.7"}]}
tellraw @s[scores={Dialog=152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.8"}]}
tellraw @s[scores={Dialog=168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.9"}]}
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.10"}]}
tellraw @s[scores={Dialog=248}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.11"}]}
execute if entity @s[scores={Dialog=256}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=256}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=256}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.12"}]}
tellraw @s[scores={Dialog=304}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.13"}]}
tellraw @s[scores={Dialog=328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.14"}]}
tellraw @s[scores={Dialog=392}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.15"}]}
tellraw @s[scores={Dialog=480}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.16"}]}
tellraw @s[scores={Dialog=536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.17"}]}
tellraw @s[scores={Dialog=616}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.18"}]}
tellraw @s[scores={Dialog=680}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.19"}]}
tellraw @s[scores={Dialog=704}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.20"}]}
tellraw @s[scores={Dialog=768}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.21"}]}
tellraw @s[scores={Dialog=824}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.22"}]}
tellraw @s[scores={Dialog=848}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.23"}]}
tellraw @s[scores={Dialog=872}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.24"}]}
tellraw @s[scores={Dialog=896}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.25"}]}
tellraw @s[scores={Dialog=952}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.26"}]}
tellraw @s[scores={Dialog=984}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.27"}]}
tellraw @s[scores={Dialog=1000}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.28"}]}
tellraw @s[scores={Dialog=1064}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.29"}]}
execute if entity @s[scores={Dialog=1072}] positioned -1539 50 -418 run function medabots_server:spawn_entities/cutscene/spyke
stopsound @s[scores={Dialog=1072}] music
playsound medabots_server:music.map_welcome_underground_intro music @s[scores={Dialog=1072}] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=1072}] Music 308
execute if entity @s[scores={Dialog=1072}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1538 50 -443
execute if entity @s[scores={Dialog=1072}] run tag @e[tag=spyke,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=1073..1131}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
execute if entity @s[scores={Dialog=1132}] run tag @e[tag=spyke,tag=this_dialog,limit=1] remove running
execute if entity @s[scores={Dialog=1132..1395}] at @e[tag=spyke,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=spyke,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1092}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.30","with":[{"selector":"@s"}]}]}
execute if entity @s[scores={Dialog=1112..1132}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1112..1132}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1112..1132}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1112..1132}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1132}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.31"}]}
tellraw @s[scores={Dialog=1156}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.32"}]}
tellraw @s[scores={Dialog=1164}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.33"}]}
tellraw @s[scores={Dialog=1196}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.34"}]}
tellraw @s[scores={Dialog=1228}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.35"}]}
tellraw @s[scores={Dialog=1276}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.36"}]}
tellraw @s[scores={Dialog=1340}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.37"}]}
execute if entity @s[scores={Dialog=1396}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1396}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.38"}]}
tellraw @s[scores={Dialog=1412}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.39"}]}
tellraw @s[scores={Dialog=1428}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.40"}]}
tellraw @s[scores={Dialog=1460}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.41"}]}
tellraw @s[scores={Dialog=1516}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.42"}]}
tellraw @s[scores={Dialog=1572}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.43"}]}
tellraw @s[scores={Dialog=1604}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.44"}]}
tellraw @s[scores={Dialog=1692}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.45","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=1772}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.46"}]}
tellraw @s[scores={Dialog=1876}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.47"}]}
tellraw @s[scores={Dialog=1892}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.48"}]}
tellraw @s[scores={Dialog=1908}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.49"}]}
tellraw @s[scores={Dialog=1916}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.50"}]}
execute if entity @s[scores={Dialog=1916}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1540 50 -445
execute if entity @s[scores={Dialog=1916}] run tag @e[tag=spyke,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1917..1929}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1929}] run tag @e[tag=spyke,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=1929}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1929}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1929}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1929}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1929}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1924}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.51"}]}
tellraw @s[scores={Dialog=1964}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.52"}]}
tellraw @s[scores={Dialog=1988}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.53"}]}
tellraw @s[scores={Dialog=1996}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.54"}]}
tellraw @s[scores={Dialog=2108}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.55"}]}
tellraw @s[scores={Dialog=2124}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.56"}]}
tellraw @s[scores={Dialog=2140}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.57"}]}
tellraw @s[scores={Dialog=2188}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.58"}]}
tellraw @s[scores={Dialog=2208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.59"}]}
tellraw @s[scores={Dialog=2224}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.60"}]}
tellraw @s[scores={Dialog=2256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.61"}]}
tellraw @s[scores={Dialog=2328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.62"}]}
tellraw @s[scores={Dialog=2416}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.63"}]}
tellraw @s[scores={Dialog=2536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.64"}]}
tellraw @s[scores={Dialog=2560}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.65"}]}
tellraw @s[scores={Dialog=2480}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.66"}]}
execute if entity @s[scores={Dialog=2504}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 0
execute if entity @s[scores={Dialog=2504}] run tag @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2505..2514}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2514}] run tag @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=2515}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2515}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2515}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2515}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2515}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2516}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.67"}]}
tellraw @s[scores={Dialog=2532}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.68"}]}
tellraw @s[scores={Dialog=2580}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.69"}]}
tellraw @s[scores={Dialog=2596}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.70"}]}
execute if entity @s[scores={Dialog=2612}] run tag @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] add right_arm_selected
execute if entity @s[scores={Dialog=2612..2621}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~0.2125 ~
execute if entity @s[scores={Dialog=2622..2631}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~-0.2125 ~
execute if entity @s[scores={Dialog=2632}] run tag @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] remove right_arm_selected
execute if entity @s[scores={Dialog=2622..2624}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~-0.425 ~0.2125 ~0.425
execute if entity @s[scores={Dialog=2625..2627}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~-0.425 ~-0.2125 ~0.425
execute if entity @s[scores={Dialog=2626..2627}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~-0.425 ~ ~0.425
execute if entity @s[scores={Dialog=2628}] run playsound minecraft:block.glass.break block @s -1540 49 -445 1
execute if entity @s[scores={Dialog=2628}] run playsound minecraft:block.glass.break block @s -1540 49 -446 1
execute if entity @s[scores={Dialog=2628}] run playsound minecraft:block.glass.break block @s -1539 49 -445 1
execute if entity @s[scores={Dialog=2628}] run playsound minecraft:block.glass.break block @s -1539 49 -446 1
execute if entity @s[scores={Dialog=2628..2647}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~-0.425 ~
execute if entity @s[scores={Dialog=2628..2647}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~-0.425 ~
execute if entity @s[scores={Dialog=2647}] run kill @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=2647}] run kill @e[tag=spyke,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=2646}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2646}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.71"}]}
tellraw @s[scores={Dialog=2654}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.72"}]}
execute if entity @s[scores={Dialog=2662}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s facing entity @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2662}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.73"}]}
tellraw @s[scores={Dialog=2678}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.74"}]}
tellraw @s[scores={Dialog=2694}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.75"}]}
tellraw @s[scores={Dialog=2766}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.76"}]}
tellraw @s[scores={Dialog=2774}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.77"}]}
tellraw @s[scores={Dialog=2814}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.78"}]}
tellraw @s[scores={Dialog=2846}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.79"}]}
tellraw @s[scores={Dialog=2958}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.80"}]}
tellraw @s[scores={Dialog=2982}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.krosserdog_saved.81"}]}
execute if entity @s[scores={Dialog=3054}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1539 50 -418
execute if entity @s[scores={Dialog=3054}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=3055..3191}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3191}] run kill @e[tag=doctor_haru,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=3054}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1539 50 -418
execute if entity @s[scores={Dialog=3054}] run tag @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=3055..}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tag @s[scores={Dialog=3201}] remove dialog_infinity_krosserdog_saved
stopsound @s[scores={Dialog=3201}] music
scoreboard players set @s[scores={Dialog=3201}] MusicType 22
scoreboard players set @s[scores={Dialog=3201}] Music 0
scoreboard players reset @s[scores={Dialog=3201}] DialogNr
scoreboard players set @s[scores={Dialog=3201}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.doctor_haru.evil music @s[scores={Music=0,MusicType=-1,Dialog=..1071}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=..1071}] Music 1074
playsound medabots_server:music.map_welcome_underground music @s[scores={Music=0,MusicType=-1,Dialog=1072..}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=1072..}] Music 1229