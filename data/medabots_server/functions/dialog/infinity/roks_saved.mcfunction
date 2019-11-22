execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity roks_saved
scoreboard players set @s[scores={Dialog=1}] MusicType 48
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1637 50 -674 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1637 50 -671 run function medabots_server:spawn_entities/cutscene/koji
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=koji,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..447}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1635 50 -673 45 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.roks_saved.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.roks_saved.2"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.roks_saved.3"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.roks_saved.4"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.roks_saved.5"}]}
execute if entity @s[scores={Dialog=104}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1636 50 -704
execute if entity @s[scores={Dialog=104}] run tag @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=105..224}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=224}] run tag @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=224}] positioned -1636 50 -704 run function medabots_server:spawn_entities/cutscene/roks
tellraw @s[scores={Dialog=124}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.roks_saved.6"}]}
tellraw @s[scores={Dialog=148}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.roks_saved.7"}]}
tellraw @s[scores={Dialog=180}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.roks_saved.8"}]}
tellraw @s[scores={Dialog=252}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.roks_saved.9"}]}
tellraw @s[scores={Dialog=316}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.roks_saved.10"}]}
tellraw @s[scores={Dialog=332}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.roks_saved.11"}]}
execute if entity @s[scores={Dialog=250}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1637 50 -674
execute if entity @s[scores={Dialog=250}] run tag @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=251..371}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=372}] run tag @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=373}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=koji,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=392}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.roks_saved.12"}]}
tellraw @s[scores={Dialog=416}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.roks_saved.13"}]}
tellraw @s[scores={Dialog=432}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.roks_saved.14"}]}
execute if entity @s[scores={Dialog=448..644}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=448..644}] as @e[tag=koji,tag=this_dialog,limit=1] at @s facing entity @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=448}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.roks_saved.15"}]}
execute if entity @s[scores={Dialog=496}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1639 50 -673
execute if entity @s[scores={Dialog=496}] run tag @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=497..643}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=643}] run tag @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=644}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=koji,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=556}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.roks_saved.16"}]}
tellraw @s[scores={Dialog=580}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks"},{"translate":"medabots_server:dialog.infinity.roks_saved.17"}]}
tellraw @s[scores={Dialog=600}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.roks_saved.18"}]}
tellraw @s[scores={Dialog=624}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.roks_saved.19"}]}
tellraw @s[scores={Dialog=648}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.roks_saved.20"}]}
tellraw @s[scores={Dialog=704}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.roks_saved.21"}]}
tellraw @s[scores={Dialog=712}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks"},{"translate":"medabots_server:dialog.infinity.roks_saved.22"}]}
tellraw @s[scores={Dialog=792}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks"},{"translate":"medabots_server:dialog.infinity.roks_saved.23"}]}
tellraw @s[scores={Dialog=816}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.roks_saved.24"}]}
tellraw @s[scores={Dialog=848}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.roks_saved.25"}]}
tellraw @s[scores={Dialog=888}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks"},{"translate":"medabots_server:dialog.infinity.roks_saved.26"}]}
tellraw @s[scores={Dialog=944}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks"},{"translate":"medabots_server:dialog.infinity.roks_saved.27"}]}
tellraw @s[scores={Dialog=992}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks"},{"translate":"medabots_server:dialog.infinity.roks_saved.28"}]}
tellraw @s[scores={Dialog=1056}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.roks_saved.29"}]}
tellraw @s[scores={Dialog=1064}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.roks_saved.30"}]}
tellraw @s[scores={Dialog=1144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks"},{"translate":"medabots_server:dialog.infinity.roks_saved.31"}]}
tellraw @s[scores={Dialog=1168}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.roks_saved.32"}]}
tellraw @s[scores={Dialog=1192}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.roks_saved.33"}]}
tellraw @s[scores={Dialog=1264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks"},{"translate":"medabots_server:dialog.infinity.roks_saved.34","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=1288}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.roks_saved.35"}]}
tellraw @s[scores={Dialog=1312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.roks_saved.36"}]}
tellraw @s[scores={Dialog=1384}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks"},{"translate":"medabots_server:dialog.infinity.roks_saved.37"}]}
execute if entity @s[scores={Dialog=1312}] positioned -1634 50 -643 run function medabots_server:spawn_entities/cutscene/caroline
execute if entity @s[scores={Dialog=1312}] positioned -1636 50 -643 run function medabots_server:spawn_entities/cutscene/doctor_haru
execute if entity @s[scores={Dialog=1312}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
execute if entity @s[scores={Dialog=1312}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1313..1432}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1432}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=1312}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
execute if entity @s[scores={Dialog=1312}] run tag @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1313..1432}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1432}] run tag @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=1433..2403}] at @e[tag=doctor_haru,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=doctor_haru,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1433..2403}] at @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
scoreboard players set @s[scores={Dialog=1392}] MusicType 44
scoreboard players set @s[scores={Dialog=1392}] Music 0
tellraw @s[scores={Dialog=1392}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.roks_saved.38"}]}
execute if entity @s[scores={Dialog=1400..1432}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1400..1432}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1400..1432}] as @e[tag=koji,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1400}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.roks_saved.39"}]}
tellraw @s[scores={Dialog=1424}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.roks_saved.40"}]}
tellraw @s[scores={Dialog=1448}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.roks_saved.41"}]}
tellraw @s[scores={Dialog=1488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.roks_saved.42"}]}
tellraw @s[scores={Dialog=1528}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.roks_saved.43"}]}
tellraw @s[scores={Dialog=1728}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.roks_saved.44"}]}
tellraw @s[scores={Dialog=1744}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.roks_saved.45"}]}
execute if entity @s[scores={Dialog=1832..}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1832}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.roks_saved.46","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=1856}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.roks_saved.47"}]}
tellraw @s[scores={Dialog=1880}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.roks_saved.48"}]}
tellraw @s[scores={Dialog=1912}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.roks_saved.49"}]}
tellraw @s[scores={Dialog=2080}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.roks_saved.50"}]}
tellraw @s[scores={Dialog=2088}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.roks_saved.51"}]}
tellraw @s[scores={Dialog=2144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.roks_saved.52"}]}
tellraw @s[scores={Dialog=2152}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.roks_saved.53"}]}
tellraw @s[scores={Dialog=2200}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.roks_saved.54"}]}
tellraw @s[scores={Dialog=2256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.roks_saved.55"}]}
tellraw @s[scores={Dialog=2296}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.roks_saved.56"}]}
tellraw @s[scores={Dialog=2344}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.caroline"},{"translate":"medabots_server:dialog.infinity.roks_saved.57"}]}
tellraw @s[scores={Dialog=2364}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.roks_saved.58"}]}
tellraw @s[scores={Dialog=2388}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.roks_saved.59"}]}
execute if entity @s[scores={Dialog=2404}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1635 50 -642
execute if entity @s[scores={Dialog=2404}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2405..2528}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2528}] run kill @e[tag=doctor_haru,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=2404}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1635 50 -642
execute if entity @s[scores={Dialog=2404}] run tag @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2405..2528}] as @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2528}] run kill @e[tag=caroline,tag=!medabot_model,tag=this_dialog,limit=1]
scoreboard players set @s[scores={Dialog=2444}] MusicType 22
scoreboard players set @s[scores={Dialog=2444}] Music 0
tellraw @s[scores={Dialog=2444}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.roks_saved.60"}]}
tellraw @s[scores={Dialog=2516}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.roks_saved.61"}]}
tag @s[scores={Dialog=2548}] remove dialog_infinity_roks_saved
scoreboard players reset @s[scores={Dialog=2548}] DialogNr
scoreboard players set @s[scores={Dialog=2548}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog