execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity erikas_pass
scoreboard players set @s[scores={Dialog=1}] MusicType 39
scoreboard players set @s[scores={Dialog=1}] Music 0
scoreboard players set @s[scores={Dialog=1}] Jukebox 0
execute if entity @s[scores={Dialog=1}] positioned -1950 51 -562 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1947 51 -558 run function medabots_server:spawn_entities/cutscene/max
execute if entity @s[scores={Dialog=1}] positioned -1944 51 -559 run function medabots_server:spawn_entities/cutscene/peppercat
execute if entity @s[scores={Dialog=1}] positioned -1945 51 -562 run function medabots_server:spawn_entities/cutscene/brass
execute if entity @s[scores={Dialog=1..277}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..277}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1949 51 -564 -20 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.erikas_pass.1"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.erikas_pass.2"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_pass.3"}]}
tellraw @s[scores={Dialog=128}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.erikas_pass.4"}]}
execute if entity @s[scores={Dialog=136}] run tag @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=136..150}] as @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=150}] run tag @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=143}] run tag @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=143..150}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^-0.2125
execute if entity @s[scores={Dialog=150}] run tag @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=150..281}] as @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=150}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.erikas_pass.5"}]}
tellraw @s[scores={Dialog=158}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.erikas_pass.6"}]}
tellraw @s[scores={Dialog=222}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.erikas_pass.7"}]}
execute if entity @s[scores={Dialog=238}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -540
execute if entity @s[scores={Dialog=238}] run tag @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=239..278}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
execute if entity @s[scores={Dialog=278}] run kill @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=258}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.erikas_pass.8"}]}
execute if entity @s[scores={Dialog=282}] as @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -540
execute if entity @s[scores={Dialog=282}] run tag @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=283..324}] as @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
execute if entity @s[scores={Dialog=324}] run kill @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1]
scoreboard players set @s[scores={Dialog=324}] MusicType 1
scoreboard players set @s[scores={Dialog=324}] Music 0
tellraw @s[scores={Dialog=324}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_pass.9"}]}
execute if entity @s[scores={Dialog=356}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=356}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.erikas_pass.10"}]}
execute if entity @s[scores={Dialog=420}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=420}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_pass.11"}]}
tellraw @s[scores={Dialog=436}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.erikas_pass.12"}]}
tellraw @s[scores={Dialog=524}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_pass.13"}]}
tellraw @s[scores={Dialog=588}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.erikas_pass.14"}]}
tellraw @s[scores={Dialog=620}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_pass.15"}]}
tellraw @s[scores={Dialog=628}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.erikas_pass.16"}]}
tellraw @s[scores={Dialog=668}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_pass.17"}]}
tellraw @s[scores={Dialog=676}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_pass.18"}]}
tellraw @s[scores={Dialog=692}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.erikas_pass.19"}]}
execute if entity @s[scores={Dialog=724}] positioned -1949 51 -540 run function medabots_server:spawn_entities/cutscene/erika
scoreboard players set @s[scores={Dialog=724}] MusicType 37
scoreboard players set @s[scores={Dialog=724}] Music 0
execute if entity @s[scores={Dialog=724}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1945 51 -560
execute if entity @s[scores={Dialog=724}] run tag @e[tag=erika,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=725..821}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=821}] run tag @e[tag=erika,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=822..955}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=724}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_pass.20"}]}
execute if entity @s[scores={Dialog=756..821}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=756..821}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=756}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.erikas_pass.21"}]}
tellraw @s[scores={Dialog=764}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_pass.22"}]}
tellraw @s[scores={Dialog=852}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.erikas_pass.23"}]}
tellraw @s[scores={Dialog=860}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.erikas_pass.24"}]}
tellraw @s[scores={Dialog=868}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.erikas_pass.25"}]}
tellraw @s[scores={Dialog=900}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.erikas_pass.26"}]}
execute if entity @s[scores={Dialog=956}] as @e[tag=erika,tag=this_dialog,limit=1] at @s facing entity @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=956}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_pass.27"}]}
tellraw @s[scores={Dialog=976}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_pass.28"}]}
tellraw @s[scores={Dialog=1024}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.erikas_pass.29"}]}
execute if entity @s[scores={Dialog=1048..}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1048}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_pass.30"}]}
tellraw @s[scores={Dialog=1080}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_pass.31"}]}
tellraw @s[scores={Dialog=1152}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.erikas_pass.32"}]}
tellraw @s[scores={Dialog=1192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_pass.33"}]}
tellraw @s[scores={Dialog=1216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_pass.34"}]}
tellraw @s[scores={Dialog=1232}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_pass.35"}]}
tellraw @s[scores={Dialog=1272}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_pass.36"}]}
tellraw @s[scores={Dialog=1288}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.erikas_pass.37"}]}
execute if entity @s[scores={Dialog=1304}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1304}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.erikas_pass.38"}]}
tellraw @s[scores={Dialog=1376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.erikas_pass.39"}]}
execute if entity @s[scores={Dialog=1432}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1432}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_pass.40"}]}
tellraw @s[scores={Dialog=1456}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_pass.41"}]}
advancement grant @s[scores={Dialog=1520}] only medabots_server:special_items/passes/grassland_d
tellraw @s[scores={Dialog=1540}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_pass.42"}]}
tellraw @s[scores={Dialog=1564}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.erikas_pass.43"}]}
tellraw @s[scores={Dialog=1596}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_pass.44","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=1636}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.erikas_pass.45"}]}
execute if entity @s[scores={Dialog=1652..1667}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1652}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_pass.46"}]}
tellraw @s[scores={Dialog=1668}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_pass.47"}]}
execute if entity @s[scores={Dialog=1668}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -540
execute if entity @s[scores={Dialog=1668}] run tag @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1669..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
tag @s[scores={Dialog=1716}] remove dialog_infinity_erikas_pass
scoreboard players set @s[scores={Dialog=1716}] MusicType 1
scoreboard players set @s[scores={Dialog=1716}] Music 0
scoreboard players reset @s[scores={Dialog=1716}] DialogNr
scoreboard players set @s[scores={Dialog=1716}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog