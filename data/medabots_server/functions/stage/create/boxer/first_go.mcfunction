execute positioned 32 53 62 run function medabots_server:spawn_entities/item/10_medallar_cents
summon minecraft:item 32 53 31 {Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:19,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_reflectmirror"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.scout"}','{"italic":false,"color":"white","translate":"medabots_server:move.scout.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pretty_prime"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_reflectmirror.model"}']},medabots_server:{stage_item:1b,id:"medabots_server:pretty_prime_reflectmirror",gender:1b,move:"scout",part:"head",armor:50,charge:60,power:18,uses:7,activated:0b,version:1}}},Tags:["hostile","do_not_teleport"],Age:-32768s}
execute positioned 32 53 21 run function medabots_server:set_blocks/wall
execute positioned 39 53 24 run function medabots_server:set_blocks/wall
execute positioned 42 53 32 run function medabots_server:set_blocks/wall
execute positioned 39 53 39 run function medabots_server:set_blocks/wall
execute positioned 31 53 42 run function medabots_server:set_blocks/wall
execute positioned 24 53 39 run function medabots_server:set_blocks/wall
execute positioned 21 53 31 run function medabots_server:set_blocks/wall
execute positioned 23 53 25 run function medabots_server:set_blocks/wall
execute positioned 28 53 28 run function medabots_server:set_blocks/wall
execute positioned 29 53 34 run function medabots_server:set_blocks/wall
execute positioned 35 53 35 run function medabots_server:set_blocks/wall
execute positioned 34 53 29 run function medabots_server:set_blocks/wall
execute positioned 31 53 31 run function medabots_server:set_blocks/wall
execute positioned 32 53 32 run function medabots_server:set_blocks/wall
execute positioned 30 53 45 run function medabots_server:set_blocks/door/x/power_0
execute positioned 42 53 41 run function medabots_server:set_blocks/door/x/power_0
execute positioned 45 53 32 run function medabots_server:set_blocks/door/z/power_1
execute positioned 41 53 20 run function medabots_server:set_blocks/door/z/power_1
execute positioned 32 53 18 run function medabots_server:set_blocks/door/x/power_1
execute positioned 20 53 22 run function medabots_server:set_blocks/door/x/power_1
execute positioned 18 53 30 run function medabots_server:set_blocks/door/z/power_1
execute positioned 22 53 42 run function medabots_server:set_blocks/door/z/power_1
execute positioned 22 53 42 run tag @e[distance=..0.7,tag=door] add robattle
execute positioned 31 53 55 run function medabots_server:set_blocks/starting_area
teleport @s 31 53 55 0 0
bossbar set medabots_server:boxer/time value 0
bossbar set medabots_server:boxer/time players @s
scoreboard players set @s State 1
scoreboard players set @a[scores={Gamemode=0,Stage=29}] Stage 29
execute as @a[scores={Gamemode=0,Stage=29}] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[scores={Gamemode=0,Stage=29}] MusicType 21