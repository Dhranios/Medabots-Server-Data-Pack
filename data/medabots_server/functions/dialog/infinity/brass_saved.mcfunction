execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity brass_saved
scoreboard players set @s[scores={Dialog=1}] MusicType 48
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1539 50 -648 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1540 50 -645 run function medabots_server:spawn_entities/cutscene/brass
execute if entity @s[scores={Dialog=1}] positioned -1539 50 -645 run function medabots_server:spawn_entities/cutscene/erika
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=erika,tag=this_dialog,limit=1] at @s facing entity @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1541 50 -648 -20 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.2"}]}
tellraw @s[scores={Dialog=28}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.3"}]}
tellraw @s[scores={Dialog=52}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.4"}]}
tellraw @s[scores={Dialog=60}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.5"}]}
tellraw @s[scores={Dialog=76}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.6"}]}
tellraw @s[scores={Dialog=108}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.7"}]}
tellraw @s[scores={Dialog=140}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.8"}]}
tellraw @s[scores={Dialog=172}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.9"}]}
execute if entity @s[scores={Dialog=180..1091}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=180}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.10"}]}
tellraw @s[scores={Dialog=252}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.11"}]}
tellraw @s[scores={Dialog=316}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.12"}]}
tellraw @s[scores={Dialog=372}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.13"}]}
tellraw @s[scores={Dialog=388}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.14"}]}
tellraw @s[scores={Dialog=452}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.15"}]}
tellraw @s[scores={Dialog=540}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.16"}]}
tellraw @s[scores={Dialog=620}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.17"}]}
tellraw @s[scores={Dialog=636}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.18"}]}
tellraw @s[scores={Dialog=652}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.19"}]}
tellraw @s[scores={Dialog=668}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.20"}]}
tellraw @s[scores={Dialog=684}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.21"}]}
tellraw @s[scores={Dialog=700}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.22"}]}
tellraw @s[scores={Dialog=708}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.23"}]}
tellraw @s[scores={Dialog=764}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.24"}]}
tellraw @s[scores={Dialog=836}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.25"}]}
execute if entity @s[scores={Dialog=916..}] at @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=brass,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=916..}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=916}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.26"}]}
tellraw @s[scores={Dialog=948}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.27"}]}
tellraw @s[scores={Dialog=1020}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.28"}]}
tellraw @s[scores={Dialog=1084}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.29"}]}
scoreboard players set @s[scores={Dialog=1092}] MusicType 50
scoreboard players set @s[scores={Dialog=1092}] Music 0
execute if entity @s[scores={Dialog=1092}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1092}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.30"}]}
tellraw @s[scores={Dialog=1100}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.31"}]}
tellraw @s[scores={Dialog=1148}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.32"}]}
tellraw @s[scores={Dialog=1172}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.33"}]}
execute if entity @s[scores={Dialog=1204}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1204}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.34"}]}
tellraw @s[scores={Dialog=1212}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.35"}]}
tellraw @s[scores={Dialog=1220}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.36"}]}
tellraw @s[scores={Dialog=1260}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.37"}]}
tellraw @s[scores={Dialog=1316}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.38"}]}
tellraw @s[scores={Dialog=1332}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.39"}]}
tellraw @s[scores={Dialog=1404}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.40"}]}
tellraw @s[scores={Dialog=1468}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.41"}]}
tellraw @s[scores={Dialog=1484}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.42"}]}
tellraw @s[scores={Dialog=1492}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.43"}]}
tellraw @s[scores={Dialog=1532}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.44"}]}
tellraw @s[scores={Dialog=1540}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.45"}]}
tellraw @s[scores={Dialog=1596}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.46"}]}
tellraw @s[scores={Dialog=1668}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.47"}]}
tellraw @s[scores={Dialog=1700}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.48"}]}
tellraw @s[scores={Dialog=1716}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.49"}]}
tellraw @s[scores={Dialog=1748}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.50"}]}
tellraw @s[scores={Dialog=1844}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.51"}]}
tellraw @s[scores={Dialog=1916}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.brass_saved.52"}]}
tag @s[scores={Dialog=1932}] remove dialog_infinity_brass_saved
scoreboard players set @s[scores={Dialog=1932}] MusicType 22
scoreboard players set @s[scores={Dialog=1932}] Music 0
scoreboard players reset @s[scores={Dialog=1932}] DialogNr
scoreboard players set @s[scores={Dialog=1932}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog