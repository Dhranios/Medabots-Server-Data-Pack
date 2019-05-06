execute positioned -1889 44 -541 run function medabots_server:spawn_entities/item/10_medallar_cents
summon minecraft:item -1889 44 -572 {Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:19,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_reflectmirror"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.scout"}','{"italic":false,"color":"white","translate":"medabots_server:move.scout.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pretty_prime"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_reflectmirror.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_reflectmirror.model"}']},medabots_server:{stage_item:1b,id:"medabots_server:pretty_prime_reflectmirror",gender:1b,move:"scout",part:"head",armor:50,power:18,uses:7,activated:0b,version:1}}},Tags:["hostile","do_not_teleport"],Age:-32768s}
execute positioned -1889 44 -582 run function medabots_server:set_blocks/wall
execute positioned -1882 44 -579 run function medabots_server:set_blocks/wall
execute positioned -1879 44 -571 run function medabots_server:set_blocks/wall
execute positioned -1882 44 -564 run function medabots_server:set_blocks/wall
execute positioned -1890 44 -561 run function medabots_server:set_blocks/wall
execute positioned -1897 44 -564 run function medabots_server:set_blocks/wall
execute positioned -1900 44 -572 run function medabots_server:set_blocks/wall
execute positioned -1898 44 -578 run function medabots_server:set_blocks/wall
execute positioned -1893 44 -575 run function medabots_server:set_blocks/wall
execute positioned -1892 44 -569 run function medabots_server:set_blocks/wall
execute positioned -1886 44 -568 run function medabots_server:set_blocks/wall
execute positioned -1887 44 -574 run function medabots_server:set_blocks/wall
execute positioned -1890 44 -572 run function medabots_server:set_blocks/wall
execute positioned -1889 44 -571 run function medabots_server:set_blocks/wall
execute positioned -1891 44 -558 run function medabots_server:set_blocks/door/open/south
execute positioned -1879 44 -562 run function medabots_server:set_blocks/door/open/south
execute positioned -1876 44 -571 run function medabots_server:set_blocks/door/closed/east
execute positioned -1880 44 -582 run function medabots_server:set_blocks/door/closed/west
execute positioned -1889 44 -585 run function medabots_server:set_blocks/door/closed/south
execute positioned -1900 44 -581 run function medabots_server:set_blocks/door/closed/north
execute positioned -1903 44 -572 run function medabots_server:set_blocks/door/closed/west
execute positioned -1899 44 -561 run function medabots_server:set_blocks/door/closed/east
execute positioned -1890 44 -548 run function medabots_server:set_blocks/starting_area
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=-1] -1890 44 -548
teleport @s[tag=-1] -1890 44 -548
tag @a[x=-1890,y=44,z=-548,distance=..1] remove -1
bossbar set medabots_server:boxer/time value 0
bossbar set medabots_server:boxer/time players @a[x=-1890,y=44,z=-548,distance=..1]
scoreboard players set @a[x=-1890,y=44,z=-548,distance=..1] Battle 1
scoreboard players set @a[x=-1890,y=44,z=-548,distance=..1] Stage 29
scoreboard players set @a[x=-1890,y=44,z=-548,distance=..1] Music 0
scoreboard players set @a[x=-1890,y=44,z=-548,distance=..1] MusicType 21
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=enemy_medabot] Battle 1
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=enemy_medabot] Stage 29
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=enemy_medabot] Music 0
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=enemy_medabot] MusicType 21