execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity meet_jaxy
stopsound @s[scores={Dialog=1}] music
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1}] positioned -1704 50 -223 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1702 50 -223 run function medabots_server:spawn_entities/cutscene/jaxy
execute if entity @s[scores={Dialog=1}] positioned -1702 50 -221 run function medabots_server:spawn_entities/cutscene/karin
teleport @s[scores={Dialog=1}] -1704 50 -221 -90 0
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 ~
execute if entity @s[scores={Dialog=1..1620}] at @e[tag=karin,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=karin,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..279}] at @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.1"}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.2","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.3"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.4"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.5"}]}
tellraw @s[scores={Dialog=192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.6"}]}
tellraw @s[scores={Dialog=208}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.7"}]}
execute if entity @s[scores={Dialog=280..1193}] at @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~180 ~
tellraw @s[scores={Dialog=300}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.8","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=380}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.9"}]}
tellraw @s[scores={Dialog=388}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.10"}]}
tellraw @s[scores={Dialog=484}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.11"}]}
tellraw @s[scores={Dialog=516}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.12"}]}
tellraw @s[scores={Dialog=548}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.13"}]}
tellraw @s[scores={Dialog=564}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.14"}]}
tellraw @s[scores={Dialog=612}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.15"}]}
tellraw @s[scores={Dialog=652}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.16"}]}
tellraw @s[scores={Dialog=692}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.17"}]}
tellraw @s[scores={Dialog=764}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.18"}]}
tellraw @s[scores={Dialog=786}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.19"}]}
tellraw @s[scores={Dialog=850}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.20"}]}
tellraw @s[scores={Dialog=874}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.21"}]}
tellraw @s[scores={Dialog=970}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.22"}]}
tellraw @s[scores={Dialog=1010}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.23"}]}
tellraw @s[scores={Dialog=1066}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.24"}]}
tellraw @s[scores={Dialog=1138}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.25"}]}
tellraw @s[scores={Dialog=1178}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.26"}]}
execute if entity @s[scores={Dialog=1194}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1701 50 -221
execute if entity @s[scores={Dialog=1195}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s add walking
execute if entity @s[scores={Dialog=1195..1205}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1205}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s remove walking
tellraw @s[scores={Dialog=1205}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.27"}]}
tellraw @s[scores={Dialog=1253}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.28"}]}
tellraw @s[scores={Dialog=1285}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.29"}]}
tellraw @s[scores={Dialog=1333}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.30"}]}
tellraw @s[scores={Dialog=1349}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.31"}]}
tellraw @s[scores={Dialog=1381}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.32"}]}
tellraw @s[scores={Dialog=1445}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.33"}]}
tellraw @s[scores={Dialog=1469}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.34"}]}
tellraw @s[scores={Dialog=1493}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.35"}]}
tellraw @s[scores={Dialog=1549}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.36"}]}
execute if entity @s[scores={Dialog=1621..1726}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @e[tag=karin,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=karin,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1621..1726}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1621}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1703 50 -219
execute if entity @s[scores={Dialog=1622}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s add walking
execute if entity @s[scores={Dialog=1622..1634}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1635}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1704 50 -199
execute if entity @s[scores={Dialog=1635..1727}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1727}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] run kill @s
execute if entity @s[scores={Dialog=1727}] as @e[tag=metabee,tag=!medabot_model] at @e[tag=karin,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=karin,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1727}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.37"}]}
tellraw @s[scores={Dialog=1735}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.38"}]}
execute if entity @s[scores={Dialog=1791}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1703 50 -219
execute if entity @s[scores={Dialog=1792..1800}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1800}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1704 50 -199
execute if entity @s[scores={Dialog=1800..1892}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1892}] as @e[tag=karin,tag=this_dialog,limit=1] run kill @s
stopsound @s[scores={Dialog=1892}] music
scoreboard players set @s[scores={Dialog=1892}] MusicType 1
scoreboard players set @s[scores={Dialog=1892}] Music 0
tellraw @s[scores={Dialog=1892}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.39"}]}
tellraw @s[scores={Dialog=1916}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.40"}]}
tellraw @s[scores={Dialog=1924}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.41"}]}
tellraw @s[scores={Dialog=1964}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.42"}]}
tellraw @s[scores={Dialog=1972}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_jaxy.43"}]}
tag @s[scores={Dialog=2020}] remove dialog_infinity_meet_jaxy
scoreboard players reset @s[scores={Dialog=2020}] DialogNr
scoreboard players set @s[scores={Dialog=2020}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.karin music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 500