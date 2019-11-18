execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity gillgirls_jammy_battle
scoreboard players set @s[scores={Dialog=1}] MusicType 32
scoreboard players set @s[scores={Dialog=1}] Music 0
scoreboard players set @s[scores={Dialog=1}] Jukebox 0
execute if entity @s[scores={Dialog=1}] positioned -1947 51 -616 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1951 51 -612 run function medabots_server:spawn_entities/cutscene/gillgirl
execute if entity @s[scores={Dialog=1..1047}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=gillgirl,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..443}] at @e[tag=gillgirl,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=gillgirl,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1949 51 -616 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.1"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.2"}]}
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.3"}]}
tellraw @s[scores={Dialog=192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.4"}]}
tellraw @s[scores={Dialog=256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.5"}]}
tellraw @s[scores={Dialog=280}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.6"}]}
tellraw @s[scores={Dialog=296}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.7"}]}
tellraw @s[scores={Dialog=360}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.8"}]}
tellraw @s[scores={Dialog=392}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.9"}]}
scoreboard players set @s[scores={Dialog=424}] MusicType 33
scoreboard players set @s[scores={Dialog=424}] Music 0
execute if entity @s[scores={Dialog=424}] positioned -1948 51 -593 run function medabots_server:spawn_entities/cutscene/select_corps
execute if entity @s[scores={Dialog=424}] positioned -1948 51 -593 run tag @e[tag=select_corps,tag=this_dialog,distance=..0.7,limit=1] add select_corps_1
execute if entity @s[scores={Dialog=424}] as @e[tag=select_corps_1,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -612
execute if entity @s[scores={Dialog=424}] run tag @e[tag=select_corps_1,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=425..522}] as @e[tag=select_corps_1,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=522}] run tag @e[tag=select_corps_1,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=523..1027}] as @e[tag=select_corps_1,tag=this_dialog,limit=1] at @s facing entity @e[tag=gillgirl,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=424}] positioned -1949 51 -595 run function medabots_server:spawn_entities/cutscene/select_corps
execute if entity @s[scores={Dialog=424}] positioned -1949 51 -595 run tag @e[tag=select_corps,tag=this_dialog,distance=..0.7,limit=1] add select_corps_2
execute if entity @s[scores={Dialog=424}] as @e[tag=select_corps_2,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1951 51 -610
execute if entity @s[scores={Dialog=424}] run tag @e[tag=select_corps_2,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=425..495}] as @e[tag=select_corps_2,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=495}] run tag @e[tag=select_corps_2,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=496..1027}] as @e[tag=select_corps_2,tag=this_dialog,limit=1] at @s facing entity @e[tag=gillgirl,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=424}] positioned -1951 51 -593 run function medabots_server:spawn_entities/cutscene/select_corps
execute if entity @s[scores={Dialog=424}] positioned -1951 51 -593 run tag @e[tag=select_corps,tag=this_dialog,distance=..0.7,limit=1] add select_corps_3
execute if entity @s[scores={Dialog=424}] as @e[tag=select_corps_3,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1953 51 -612
execute if entity @s[scores={Dialog=424}] run tag @e[tag=select_corps_3,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=425..514}] as @e[tag=select_corps_3,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=514}] run tag @e[tag=select_corps_3,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=515..1027}] as @e[tag=select_corps_3,tag=this_dialog,limit=1] at @s facing entity @e[tag=gillgirl,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=444..475}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s facing entity @e[tag=select_corps_1,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=424}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.10"}]}
execute if entity @s[scores={Dialog=476..499}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s facing entity @e[tag=select_corps_2,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=456}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.11"}]}
execute if entity @s[scores={Dialog=500..699}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s facing entity @e[tag=select_corps_3,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=480}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.12"}]}
tellraw @s[scores={Dialog=488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.13"}]}
tellraw @s[scores={Dialog=508}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.14"}]}
tellraw @s[scores={Dialog=516}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.15"}]}
tellraw @s[scores={Dialog=596}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.16"}]}
tellraw @s[scores={Dialog=628}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.17"}]}
tellraw @s[scores={Dialog=684}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.18"}]}
execute if entity @s[scores={Dialog=700..1027}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s facing entity @e[tag=select_corps_1,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=700}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.19"}]}
tellraw @s[scores={Dialog=732}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.20"}]}
tellraw @s[scores={Dialog=796}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.21"}]}
tellraw @s[scores={Dialog=820}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.22"}]}
tellraw @s[scores={Dialog=884}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.23"}]}
tellraw @s[scores={Dialog=948}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.24"}]}
tellraw @s[scores={Dialog=972}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.25"}]}
tellraw @s[scores={Dialog=980}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.26"}]}
execute if entity @s[scores={Dialog=1028}] as @e[tag=select_corps_1,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -593
execute if entity @s[scores={Dialog=1028}] run tag @e[tag=select_corps_1,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1029..1118}] as @e[tag=select_corps_1,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1118}] run kill @e[tag=select_corps_1,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=1028}] as @e[tag=select_corps_3,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -593
execute if entity @s[scores={Dialog=1028}] run tag @e[tag=select_corps_3,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1029..1120}] as @e[tag=select_corps_3,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1120}] run kill @e[tag=select_corps_3,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=1028}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -593
execute if entity @s[scores={Dialog=1028}] run tag @e[tag=gillgirl,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1029..1119}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1119}] run kill @e[tag=gillgirl,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=1048..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=select_corps_2,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1028..1103}] at @e[tag=select_corps_2,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=select_corps_2,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1048}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.27"}]}
tellraw @s[scores={Dialog=1088}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.28"}]}
execute if entity @s[scores={Dialog=1104}] as @e[tag=select_corps_2,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -593
execute if entity @s[scores={Dialog=1104}] run tag @e[tag=select_corps_2,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1105..}] as @e[tag=select_corps_2,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tellraw @s[scores={Dialog=1124}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.gillgirls_jammy_battle.29"}]}
tag @s[scores={Dialog=1185}] remove dialog_infinity_gillgirls_jammy_battle
scoreboard players set @s[scores={Dialog=1185}] MusicType 1
scoreboard players set @s[scores={Dialog=1185}] Music 0
scoreboard players reset @s[scores={Dialog=1185}] DialogNr
scoreboard players set @s[scores={Dialog=1185}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog