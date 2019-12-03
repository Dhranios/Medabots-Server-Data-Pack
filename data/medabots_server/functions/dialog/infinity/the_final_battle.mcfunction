execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity the_final_battle
scoreboard players set @s[scores={Dialog=1}] MusicType 55
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -443 9 -82 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -438 9 -78 run function medabots_server:spawn_entities/cutscene/doctor_haru
execute if entity @s[scores={Dialog=1}] positioned -439 9 -79 run function medabots_server:spawn_entities/cutscene/director_tune
execute if entity @s[scores={Dialog=1}] positioned -434 9 -81 run function medabots_server:spawn_entities/cutscene/seaslug
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s facing entity @e[tag=seaslug,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s facing entity @e[tag=seaslug,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -443 9 -80 -90 0
teleport @s[scores={Dialog=2..2059}] -443 9 -80
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.1"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.2"}]}
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.3"}]}
tellraw @s[scores={Dialog=184}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.4"}]}
tellraw @s[scores={Dialog=224}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.5"}]}
tellraw @s[scores={Dialog=288}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.6"}]}
tellraw @s[scores={Dialog=296}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.7"}]}
execute if entity @s[scores={Dialog=312..}] at @e[tag=doctor_haru,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=doctor_haru,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.8"}]}
tellraw @s[scores={Dialog=368}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.9"}]}
tellraw @s[scores={Dialog=400}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.10"}]}
tellraw @s[scores={Dialog=456}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.11"}]}
tellraw @s[scores={Dialog=528}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.12"}]}
tellraw @s[scores={Dialog=536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.13"}]}
tellraw @s[scores={Dialog=592}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.14"}]}
tellraw @s[scores={Dialog=680}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.15"}]}
tellraw @s[scores={Dialog=728}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.16"}]}
tellraw @s[scores={Dialog=784}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.17"}]}
tellraw @s[scores={Dialog=824}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.18"}]}
tellraw @s[scores={Dialog=864}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.19"}]}
tellraw @s[scores={Dialog=912}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.20"}]}
tellraw @s[scores={Dialog=976}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.21"}]}
tellraw @s[scores={Dialog=1000}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.22"}]}
tellraw @s[scores={Dialog=1016}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.23"}]}
tellraw @s[scores={Dialog=1072}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.24"}]}
tellraw @s[scores={Dialog=1088}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.25"}]}
tellraw @s[scores={Dialog=1160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.26"}]}
tellraw @s[scores={Dialog=1168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.27"}]}
tellraw @s[scores={Dialog=1240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.28"}]}
tellraw @s[scores={Dialog=1272}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.29"}]}
playsound minecraft:entity.lightning_bolt.thunder ambient @s[scores={Dialog=1280}] ~ ~ ~
execute if entity @s[scores={Dialog=1280}] positioned -439 9 -88 run function medabots_server:spawn_entities/cutscene/roks
execute if entity @s[scores={Dialog=1280}] positioned -440 9 -88 run function medabots_server:spawn_entities/cutscene/koji
execute if entity @s[scores={Dialog=1280}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=1280}] run tag @e[tag=koji,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1281..1303}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1303}] run tag @e[tag=koji,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=1304}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1280}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=1280}] run tag @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1281..1303}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1303}] run tag @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=1304}] at @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1282}] run setblock -440 7 -86 minecraft:redstone_block
execute if entity @s[scores={Dialog=1298}] run setblock -440 7 -86 minecraft:air
tellraw @s[scores={Dialog=1300}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.30"}]}
tellraw @s[scores={Dialog=1308}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.31"}]}
tellraw @s[scores={Dialog=1332}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.32"}]}
tellraw @s[scores={Dialog=1364}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.33"}]}
tellraw @s[scores={Dialog=1380}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.34"}]}
tellraw @s[scores={Dialog=1388}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.35"}]}
tellraw @s[scores={Dialog=1476}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.36"}]}
tellraw @s[scores={Dialog=1516}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.37"}]}
tellraw @s[scores={Dialog=1580}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.38"}]}
tellraw @s[scores={Dialog=1628}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.39"}]}
tellraw @s[scores={Dialog=1660}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.40"}]}
tellraw @s[scores={Dialog=1684}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.41"}]}
tellraw @s[scores={Dialog=1708}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.42"}]}
tellraw @s[scores={Dialog=1748}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.43"}]}
tellraw @s[scores={Dialog=1796}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.44"}]}
tellraw @s[scores={Dialog=1852}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.45"}]}
tellraw @s[scores={Dialog=1868}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.46"}]}
tellraw @s[scores={Dialog=1940}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.47"}]}
tellraw @s[scores={Dialog=1980}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.48","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=2028}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.the_final_battle.49"}]}
execute if entity @s[scores={Dialog=2060}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=2060}] run tag @e[tag=koji,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2061..2069}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2069}] run tag @e[tag=koji,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=2070..}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2060}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 0
execute if entity @s[scores={Dialog=2060}] run tag @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2061..2069}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2069}] run tag @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=2070..}] at @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2060}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 0
execute if entity @s[scores={Dialog=2060}] run tag @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=2061..2067}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
execute if entity @s[scores={Dialog=2068}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
execute if entity @s[scores={Dialog=2069..2082}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
execute if entity @s[scores={Dialog=2082}] run kill @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=2074}] run setblock -440 7 -86 minecraft:redstone_block
execute if entity @s[scores={Dialog=2084}] run setblock -440 7 -86 minecraft:air
execute if entity @s[scores={Dialog=2060..2069}] facing -439 9 -81 run teleport @s ^ ^ ^0.425
execute if entity @s[scores={Dialog=2070..2085}] facing -439 9 -88 run teleport @s ^ ^ ^0.425
tag @s[scores={Dialog=2086}] remove dialog_infinity_the_final_battle
scoreboard players set @s[scores={Dialog=2086}] MusicType 22
scoreboard players set @s[scores={Dialog=2086}] Music 0
scoreboard players reset @s[scores={Dialog=2086}] DialogNr
scoreboard players set @s[scores={Dialog=2086}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog