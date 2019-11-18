execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity desperate_for_love
scoreboard players set @s[scores={Dialog=1}] MusicType 35
scoreboard players set @s[scores={Dialog=1}] Music 0
scoreboard players set @s[scores={Dialog=1}] Jukebox 0
execute if entity @s[scores={Dialog=1}] run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -342 55 -98 run function medabots_server:spawn_entities/cutscene/samantha
execute if entity @s[scores={Dialog=1..159}] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.1","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.2"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.3"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.4"}]}
tellraw @s[scores={Dialog=128}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.5"}]}
execute if entity @s[scores={Dialog=160}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -321 55 -87
execute if entity @s[scores={Dialog=160}] run tag @e[tag=samantha,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=161..255}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=255}] as @e[tag=samantha,tag=this_dialog,limit=1] run tag @s remove walking
tellraw @s[scores={Dialog=180}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.6"}]}
teleport @s[scores={Dialog=256}] -405 55 -118 90 0
teleport @s[scores={Dialog=256..}] -405 55 -118
execute if entity @s[scores={Dialog=256}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s -408 55 -119
execute if entity @s[scores={Dialog=256}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s -405 55 -120
execute if entity @s[scores={Dialog=256..1019}] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.7","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=280}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.8"}]}
tellraw @s[scores={Dialog=328}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.9"}]}
tellraw @s[scores={Dialog=376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.10"}]}
tellraw @s[scores={Dialog=392}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.11"}]}
tellraw @s[scores={Dialog=432}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.12"}]}
tellraw @s[scores={Dialog=464}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.13"}]}
tellraw @s[scores={Dialog=488}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.14"}]}
tellraw @s[scores={Dialog=552}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.15"}]}
tellraw @s[scores={Dialog=572}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.16"}]}
tellraw @s[scores={Dialog=620}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.17"}]}
tellraw @s[scores={Dialog=692}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.18"}]}
tellraw @s[scores={Dialog=756}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.19"}]}
tellraw @s[scores={Dialog=780}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.20"}]}
tellraw @s[scores={Dialog=812}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.21"}]}
tellraw @s[scores={Dialog=868}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.22"}]}
tellraw @s[scores={Dialog=900}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.23"}]}
tellraw @s[scores={Dialog=916}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.24"}]}
tellraw @s[scores={Dialog=924}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.25"}]}
tellraw @s[scores={Dialog=964}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.26"}]}
tellraw @s[scores={Dialog=988}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.27"}]}
execute if entity @s[scores={Dialog=1020..1659}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1020}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.28"}]}
tellraw @s[scores={Dialog=1028}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.29"}]}
tellraw @s[scores={Dialog=1060}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.30"}]}
tellraw @s[scores={Dialog=1108}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.31"}]}
tellraw @s[scores={Dialog=1180}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.32"}]}
tellraw @s[scores={Dialog=1196}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.33"}]}
tellraw @s[scores={Dialog=1212}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.34"}]}
tellraw @s[scores={Dialog=1252}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.35"}]}
tellraw @s[scores={Dialog=1292}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.36"}]}
tellraw @s[scores={Dialog=1332}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.37"}]}
tellraw @s[scores={Dialog=1372}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.38"}]}
tellraw @s[scores={Dialog=1452}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.39"}]}
tellraw @s[scores={Dialog=1500}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.40"}]}
tellraw @s[scores={Dialog=1572}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.41"}]}
tellraw @s[scores={Dialog=1644}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.42"}]}
execute if entity @s[scores={Dialog=1668..2563}] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1668}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.43"}]}
tellraw @s[scores={Dialog=1716}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.44"}]}
tellraw @s[scores={Dialog=1736}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.45"}]}
tellraw @s[scores={Dialog=1800}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.46"}]}
tellraw @s[scores={Dialog=1820}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.47"}]}
tellraw @s[scores={Dialog=1860}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.48"}]}
tellraw @s[scores={Dialog=1924}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.49"}]}
tellraw @s[scores={Dialog=1948}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.50"}]}
tellraw @s[scores={Dialog=2004}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.51","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=2036}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.52"}]}
tellraw @s[scores={Dialog=2052}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.53"}]}
tellraw @s[scores={Dialog=2100}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.54"}]}
execute if entity @s[scores={Dialog=2116}] positioned -408 55 -117 run function medabots_server:spawn_entities/cutscene/peppercat
execute if entity @s[scores={Dialog=2116}] at @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.55"}]}
tellraw @s[scores={Dialog=2156}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.56"}]}
tellraw @s[scores={Dialog=2176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.57"}]}
tellraw @s[scores={Dialog=2196}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.58"}]}
tellraw @s[scores={Dialog=2216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.59"}]}
tellraw @s[scores={Dialog=2236}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.60"}]}
tellraw @s[scores={Dialog=2264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.61"}]}
tellraw @s[scores={Dialog=2352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.62"}]}
tellraw @s[scores={Dialog=2376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.63"}]}
tellraw @s[scores={Dialog=2392}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.64"}]}
tellraw @s[scores={Dialog=2412}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.65","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=2436}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.66"}]}
tellraw @s[scores={Dialog=2500}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.67"}]}
execute if entity @s[scores={Dialog=2516}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=2516}] run tag @e[tag=samantha,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2517..2548}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2548}] run kill @e[tag=samantha,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=2516}] as @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -410 55 -118
execute if entity @s[scores={Dialog=2516}] run tag @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2517..2528}] as @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2529}] as @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=2530..2548}] as @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2548}] run kill @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=2523}] run setblock -412 53 -118 minecraft:redstone_block
execute if entity @s[scores={Dialog=2546}] run setblock -412 53 -118 minecraft:air
tellraw @s[scores={Dialog=2548}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.68"}]}
tellraw @s[scores={Dialog=2568}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.desperate_for_love.69"}]}
tag @s[scores={Dialog=2610}] remove dialog_infinity_desperate_for_love
scoreboard players set @s[scores={Dialog=2610}] MusicType 1
scoreboard players set @s[scores={Dialog=2610}] Music 0
scoreboard players reset @s[scores={Dialog=2610}] DialogNr
scoreboard players set @s[scores={Dialog=2610}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog