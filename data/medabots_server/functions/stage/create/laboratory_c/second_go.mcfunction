execute positioned 4 53 31 run function medabots_server:spawn_entities/guard/medium
execute positioned 17 53 31 run function medabots_server:spawn_entities/guard/medium
execute positioned 3 53 33 run function medabots_server:spawn_entities/cannon/search/east/delay_4/10_medallar_cents
execute positioned 3 53 29 run function medabots_server:spawn_entities/cannon/search/east/delay_4/10_medallar_cents
execute positioned 18 53 33 run function medabots_server:spawn_entities/cannon/search/west/delay_4/10_medallar_cents
execute positioned 18 53 29 run function medabots_server:spawn_entities/cannon/search/west/delay_4/10_medallar_cents
execute positioned 13 53 42 run function medabots_server:set_blocks/pot
execute positioned 13 53 40 run function medabots_server:set_blocks/pot
execute positioned 8 53 42 run function medabots_server:set_blocks/pot
execute positioned 8 53 40 run function medabots_server:set_blocks/pot
execute positioned 1 53 31 run function medabots_server:set_blocks/pot/cannon/search/east/delay_1
# Medapart pot
execute positioned 20 53 31 run function medabots_server:set_blocks/pot
execute positioned 20 53 31 run data modify entity @e[distance=..0.7,tag=pot,limit=1] ArmorItems[3].tag.medabots_server merge value {contents:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister.model"}']},medabots_server:{stage_item:1b,id:"medabots_server:saikachis_balister",gender:0b,move:"missile",part:"head",armor:75,charge:60,power:28,uses:6,activated:0b,version:1}}}}
execute positioned 10 53 22 run function medabots_server:set_blocks/door/x/power_0
execute positioned 10 53 22 run tag @e[distance=..0.7,tag=door] add robattle
execute positioned 10 53 41 run function medabots_server:set_blocks/starting_area
teleport @s 10 53 41 0 0
bossbar set medabots_server:laboratory_c/time value 0
bossbar set medabots_server:laboratory_c/time players @s
scoreboard players set @s State 1
scoreboard players set @a[scores={Gamemode=0,Stage=28}] Stage 28
execute as @a[scores={Gamemode=0,Stage=28}] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[scores={Gamemode=0,Stage=28}] MusicType 18