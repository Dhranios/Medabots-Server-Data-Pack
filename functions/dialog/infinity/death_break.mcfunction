execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity death_break
stopsound @s[scores={Dialog=1}] music
playsound medabots_server:music.entity.screws_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 62
execute if entity @s[scores={Dialog=1}] positioned -438 55 -6 run function medabots_server:spawn_entities/cutscene/jaxy
execute if entity @s[scores={Dialog=1}] positioned -428 55 -30 run function medabots_server:spawn_entities/cutscene/krosserdog
execute if entity @s[scores={Dialog=1}] positioned -426 55 -32 run function medabots_server:spawn_entities/cutscene/samantha
execute if entity @s[scores={Dialog=1}] positioned -428 55 -34 run function medabots_server:spawn_entities/cutscene/sloan
execute if entity @s[scores={Dialog=1}] positioned -429 55 -32 run function medabots_server:spawn_entities/cutscene/spyke
execute if entity @s[scores={Dialog=1}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -45 0
execute if entity @s[scores={Dialog=1}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -45 0
execute if entity @s[scores={Dialog=1}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -45 0
execute if entity @s[scores={Dialog=1}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -45 0
teleport @s[scores={Dialog=1}] -413 55 -36 45 0
teleport @s[scores={Dialog=2..}] -413 55 -36
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.2"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.3"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.4"}]}
execute if entity @s[scores={Dialog=96..231}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.death_break.5"}]}
execute if entity @s[scores={Dialog=39}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -424 55 -11
execute if entity @s[scores={Dialog=39}] run tag @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=39..112}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=112}] run tag @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=112}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.death_break.6"}]}
execute if entity @s[scores={Dialog=112}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.7"}]}
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.8"}]}
tellraw @s[scores={Dialog=200}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.9"}]}
execute if entity @s[scores={Dialog=232..1207}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=232..1207}] as @e[tag=krosserdog,tag=this_dialog,limit=1] at @s facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=232}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.death_break.10"}]}
execute if entity @s[scores={Dialog=252}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.11"}]}
tellraw @s[scores={Dialog=344}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.12"}]}
tellraw @s[scores={Dialog=408}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.13"}]}
tellraw @s[scores={Dialog=432}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.death_break.14"}]}
tellraw @s[scores={Dialog=440}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.15"}]}
execute if entity @s[scores={Dialog=379}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -419 55 -23
execute if entity @s[scores={Dialog=379}] run tag @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=380..440}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=440}] run tag @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=385}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -416 55 -26
execute if entity @s[scores={Dialog=385}] run tag @e[tag=samantha,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=386..440}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=440}] run tag @e[tag=samantha,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=382}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -418 55 -27
execute if entity @s[scores={Dialog=382}] run tag @e[tag=sloan,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=383..440}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=440}] run tag @e[tag=sloan,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=441}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=441}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=441}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=456}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.death_break.16"}]}
tellraw @s[scores={Dialog=472}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.death_break.17"}]}
tellraw @s[scores={Dialog=488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.death_break.18"}]}
tellraw @s[scores={Dialog=528}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.19"}]}
tellraw @s[scores={Dialog=600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.20"}]}
execute if entity @s[scores={Dialog=616}] positioned -417 55 -24 run function medabots_server:spawn_entities/cutscene/peppercat
execute if entity @s[scores={Dialog=616}] as @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=636}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.death_break.21"}]}
tellraw @s[scores={Dialog=644}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.death_break.22"}]}
tellraw @s[scores={Dialog=660}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.death_break.23"}]}
tellraw @s[scores={Dialog=700}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.death_break.24"}]}
tellraw @s[scores={Dialog=724}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.25"}]}
tellraw @s[scores={Dialog=844}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.26"}]}
tellraw @s[scores={Dialog=868}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.27"}]}
tellraw @s[scores={Dialog=892}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.death_break.28"}]}
tellraw @s[scores={Dialog=908}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.death_break.29"}]}
execute if entity @s[scores={Dialog=924}] positioned -419 55 -25 run function medabots_server:spawn_entities/cutscene/totalizer
execute if entity @s[scores={Dialog=925}] as @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=944}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.30"}]}
tellraw @s[scores={Dialog=1008}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.31"}]}
tellraw @s[scores={Dialog=1080}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.death_break.32"}]}
tellraw @s[scores={Dialog=1096}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.33"}]}
tellraw @s[scores={Dialog=1120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.death_break.34"}]}
execute if entity @s[scores={Dialog=1128}] at @e[tag=jaxy,tag=!medabot_model] run kill @e[distance=..1,tag=chest,tag=medabot_model]
execute if entity @s[scores={Dialog=1128}] at @e[tag=jaxy,tag=!medabot_model] run kill @e[distance=..1,tag=head,tag=medabot_model]
execute if entity @s[scores={Dialog=1128}] at @e[tag=jaxy,tag=!medabot_model] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","jaxy","head","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:17,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.god_emperor_death_break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:move.break.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.god_emperor"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.god_emperor_death_break.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:god_emperor_death_break",gender:0b,move:"break",part:"head",armor:50,power:52,uses:7,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1128}] at @e[tag=jaxy,tag=!medabot_model] as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=jaxy] MedabotNr
execute if entity @s[scores={Dialog=1128}] at @e[tag=jaxy,tag=!medabot_model] as @e[tag=jaxy,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
stopsound @s[scores={Dialog=1128}] music
scoreboard players set @s[scores={Dialog=1128}] Music 0
tellraw @s[scores={Dialog=1136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.35"}]}
tellraw @s[scores={Dialog=1152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.death_break.36"}]}
tellraw @s[scores={Dialog=1160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.death_break.37"}]}
execute if entity @s[scores={Dialog=1168}] at @e[tag=peppercat,tag=this_dialog] run particle minecraft:cloud ~ ~ ~ 0 0 0 0.2 50 force @s
execute if entity @s[scores={Dialog=1168}] at @e[tag=peppercat,tag=this_dialog] run playsound medabots_server:entity.medabot.death player @s ~ ~ ~ 2
execute if entity @s[scores={Dialog=1168}] run tag @e[tag=peppercat,tag=this_dialog] add dead
execute if entity @s[scores={Dialog=1168}] at @e[tag=totalizer,tag=this_dialog] run particle minecraft:cloud ~ ~ ~ 0 0 0 0.2 50 force @s
execute if entity @s[scores={Dialog=1168}] at @e[tag=totalizer,tag=this_dialog] run playsound medabots_server:entity.medabot.death player @s ~ ~ ~ 2
execute if entity @s[scores={Dialog=1168}] run tag @e[tag=totalizer,tag=this_dialog] add dead
stopsound @s[scores={Dialog=1208}] music
scoreboard players set @s[scores={Dialog=1208}] Music 0
tellraw @s[scores={Dialog=1208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.38"}]}
tellraw @s[scores={Dialog=1232}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.death_break.39"}]}
execute if entity @s[scores={Dialog=1208}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -421 55 -25
execute if entity @s[scores={Dialog=1208}] run tag @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1209..1248}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1248}] run tag @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=1208}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -420 55 -27
execute if entity @s[scores={Dialog=1208}] run tag @e[tag=spyke,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1209..1256}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1256}] run tag @e[tag=spyke,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=1249}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1249..}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1257}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1248}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.death_break.40"}]}
tellraw @s[scores={Dialog=1264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.death_break.41"}]}
execute if entity @s[scores={Dialog=1288}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1288}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1288}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.42"}]}
tellraw @s[scores={Dialog=1320}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.death_break.43"}]}
tellraw @s[scores={Dialog=1328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.44"}]}
tellraw @s[scores={Dialog=1392}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.death_break.45"}]}
tellraw @s[scores={Dialog=1456}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.46"}]}
tellraw @s[scores={Dialog=1520}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.death_break.47"}]}
tellraw @s[scores={Dialog=1544}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.death_break.48"}]}
tellraw @s[scores={Dialog=1560}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.death_break.49"}]}
tellraw @s[scores={Dialog=1592}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.50"}]}
tellraw @s[scores={Dialog=1616}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.death_break.51"}]}
execute if entity @s[scores={Dialog=1640}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 45 0
execute if entity @s[scores={Dialog=1640}] run tag @e[tag=samantha,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1641..}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1640}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 45 0
execute if entity @s[scores={Dialog=1640}] run tag @e[tag=sloan,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1641..}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1640}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 45 0
execute if entity @s[scores={Dialog=1640}] run tag @e[tag=spyke,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1641..}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tellraw @s[scores={Dialog=1660}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.death_break.52"}]}
tellraw @s[scores={Dialog=1676}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.death_break.53"}]}
execute if entity @s[scores={Dialog=1692}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 45 0
execute if entity @s[scores={Dialog=1692}] run tag @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1693..}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tag @s[scores={Dialog=1752}] remove dialog_infinity_death_break
stopsound @s[scores={Dialog=1752}] music
scoreboard players set @s[scores={Dialog=1752}] MusicType 1
scoreboard players set @s[scores={Dialog=1752}] Music 0
scoreboard players reset @s[scores={Dialog=1752}] DialogNr
scoreboard players set @s[scores={Dialog=1752}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.screws music @s[scores={Music=0,MusicType=-1,Dialog=..1127}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=..1127}] Music 250
playsound medabots_server:music.entity.jaxy.power music @s[scores={Music=0,MusicType=-1,Dialog=1128..1207}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=1128..1207}] Music 1024
playsound medabots_server:music.entity.jaxy music @s[scores={Music=0,MusicType=-1,Dialog=1208..}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=1208..}] Music 1024