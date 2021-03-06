execute positioned 4 53 31 run function medabots_server:spawn_entities/guard/medium
execute positioned 17 53 31 run function medabots_server:spawn_entities/guard/medium
execute positioned 3 53 33 run function medabots_server:spawn_entities/cannon/swivel/east/delay_4/10_medallar_cents
execute positioned 3 53 29 run function medabots_server:spawn_entities/cannon/swivel/east/delay_4/10_medallar_cents
execute positioned 18 53 33 run function medabots_server:spawn_entities/cannon/swivel/west/delay_4/10_medallar_cents
execute positioned 18 53 29 run function medabots_server:spawn_entities/cannon/swivel/west/delay_4/10_medallar_cents
execute positioned 13 53 42 run function medabots_server:set_blocks/pot
execute positioned 13 53 40 run function medabots_server:set_blocks/pot
execute positioned 8 53 42 run function medabots_server:set_blocks/pot
execute positioned 8 53 40 run function medabots_server:set_blocks/pot
execute positioned 1 53 31 run function medabots_server:set_blocks/pot/cannon/search/east/delay_1
# Medapart pot
execute positioned 20 53 31 run function medabots_server:set_blocks/pot
execute positioned 20 53 31 run data modify entity @e[distance=..0.7,tag=pot,limit=1] ArmorItems[3].tag.medabots_server merge value {contents:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:19,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_temple_master"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"16"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pretty_prime"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_temple_master.model"}']},medabots_server:{stage_item:1b,id:"medabots_server:pretty_prime_temple_master",gender:1b,move:"two_legged",part:"legs",armor:35,defense:16,activated:0b,model_data:{height:0,legs:[{l:0,u:0,f:0},{l:0,u:0,f:0}]},version:1}}}}
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