execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity meet_doctor_haru
scoreboard players set @s[scores={Dialog=1}] MusicType 36
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -401 55 -51 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -404 55 -51 run function medabots_server:spawn_entities/cutscene/jaxy
execute if entity @s[scores={Dialog=1}] positioned -404 55 -53 run function medabots_server:spawn_entities/cutscene/karin
teleport @s[scores={Dialog=1}] -401 55 -53 90 0
teleport @s[scores={Dialog=2..}] -401 55 -53
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.1"}]}
execute if entity @s[scores={Dialog=10}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 180 ~
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.2","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.3"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.4"}]}
tellraw @s[scores={Dialog=192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.5"}]}
tellraw @s[scores={Dialog=264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.6"}]}
tellraw @s[scores={Dialog=400}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.7"}]}
tellraw @s[scores={Dialog=464}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.8","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=528}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.9"}]}
execute if entity @s[scores={Dialog=576}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 180 ~
execute if entity @s[scores={Dialog=586}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 ~
tellraw @s[scores={Dialog=586}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.10"}]}
tellraw @s[scores={Dialog=610}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.11"}]}
tellraw @s[scores={Dialog=642}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.12"}]}
tellraw @s[scores={Dialog=674}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.13"}]}
tellraw @s[scores={Dialog=682}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.14"}]}
tellraw @s[scores={Dialog=754}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.15"}]}
tellraw @s[scores={Dialog=818}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.16"}]}
tellraw @s[scores={Dialog=834}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.17"}]}
tellraw @s[scores={Dialog=906}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.18"}]}
tellraw @s[scores={Dialog=930}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.19"}]}
tellraw @s[scores={Dialog=986}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.20"}]}
tellraw @s[scores={Dialog=1018}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.21"}]}
execute if entity @s[scores={Dialog=1082}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 180 ~
tellraw @s[scores={Dialog=1082}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.22"}]}
tellraw @s[scores={Dialog=1098}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.23"}]}
tellraw @s[scores={Dialog=1106}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.24"}]}
tellraw @s[scores={Dialog=1170}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.25"}]}
tellraw @s[scores={Dialog=1194}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.26"}]}
tellraw @s[scores={Dialog=1218}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.27"}]}
tellraw @s[scores={Dialog=1242}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.28"}]}
execute if entity @s[scores={Dialog=1282}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 ~
execute if entity @s[scores={Dialog=1282}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 ~
tellraw @s[scores={Dialog=1282}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.29"}]}
tellraw @s[scores={Dialog=1314}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.30"}]}
tellraw @s[scores={Dialog=1330}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.31"}]}
tellraw @s[scores={Dialog=1362}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.32"}]}
execute if entity @s[scores={Dialog=1402}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 ~
execute if entity @s[scores={Dialog=1402}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 ~
tellraw @s[scores={Dialog=1402}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.33"}]}
tellraw @s[scores={Dialog=1410}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.34"}]}
execute if entity @s[scores={Dialog=1458}] positioned -410 55 -73 run function medabots_server:spawn_entities/cutscene/doctor_haru
scoreboard players set @s[scores={Dialog=1458}] MusicType 43
scoreboard players set @s[scores={Dialog=1458}] Music 0
execute if entity @s[scores={Dialog=1459}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -405 55 -55
execute if entity @s[scores={Dialog=1459}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1460..1546}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1546}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] run tag @s remove walking
execute if entity @s[scores={Dialog=1546}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -23 ~
execute if entity @s[scores={Dialog=1546..2253}] as @e[tag=karin,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1546..2253}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1546..2253}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1546}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.35"}]}
tellraw @s[scores={Dialog=1602}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.36"}]}
tellraw @s[scores={Dialog=1626}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.37"}]}
execute if entity @s[scores={Dialog=1634}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -12 ~
tellraw @s[scores={Dialog=1634}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.38"}]}
tellraw @s[scores={Dialog=1650}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.39"}]}
tellraw @s[scores={Dialog=1681}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.40"}]}
tellraw @s[scores={Dialog=1698}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.41"}]}
tellraw @s[scores={Dialog=1738}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.42"}]}
tellraw @s[scores={Dialog=1754}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.43"}]}
tellraw @s[scores={Dialog=1802}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.44"}]}
tellraw @s[scores={Dialog=1834}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.45"}]}
tellraw @s[scores={Dialog=1858}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.46"}]}
tellraw @s[scores={Dialog=1898}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.47"}]}
tellraw @s[scores={Dialog=1986}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.48"}]}
tellraw @s[scores={Dialog=2082}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.49"}]}
tellraw @s[scores={Dialog=2098}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.50"}]}
tellraw @s[scores={Dialog=2170}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.51"}]}
tellraw @s[scores={Dialog=2178}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.52"}]}
execute if entity @s[scores={Dialog=2194}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -392 55 -53
execute if entity @s[scores={Dialog=2194}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2195..2254}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2255}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -380 55 -60
execute if entity @s[scores={Dialog=2256..}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2336}] run kill @e[tag=doctor_haru,tag=this_dialog,limit=1]
scoreboard players set @s[scores={Dialog=2254}] MusicType 36
scoreboard players set @s[scores={Dialog=2254}] Music 0
execute if entity @s[scores={Dialog=2254}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -410 55 -35
execute if entity @s[scores={Dialog=2255..}] run tag @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2255..}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2415}] run kill @e[tag=jaxy,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=2254..2299}] as @e[tag=karin,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2254..2299}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2275}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.53"}]}
tellraw @s[scores={Dialog=2299}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.54"}]}
execute if entity @s[scores={Dialog=2299}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -410 55 -35
execute if entity @s[scores={Dialog=2299}] run tag @e[tag=karin,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2300..2319}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2320}] as @e[tag=karin,tag=this_dialog,limit=1] run tag @s remove walking
execute if entity @s[scores={Dialog=2320}] at @e[tag=karin,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=karin,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2320}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.55","with":[{"selector":"@s"}]}]}
execute if entity @s[scores={Dialog=2362}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -410 55 -35
execute if entity @s[scores={Dialog=2362}] run tag @e[tag=karin,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2363..}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
scoreboard players set @s[scores={Dialog=2402}] MusicType 1
scoreboard players set @s[scores={Dialog=2402}] Music 0
tellraw @s[scores={Dialog=2402}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.56"}]}
tellraw @s[scores={Dialog=2416}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_doctor_haru.57"}]}
tag @s[scores={Dialog=2480}] remove dialog_infinity_meet_doctor_haru
scoreboard players reset @s[scores={Dialog=2480}] DialogNr
scoreboard players set @s[scores={Dialog=2480}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog