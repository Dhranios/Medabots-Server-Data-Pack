summon minecraft:item -1889 44 -541 {Item:{id:"minecraft:lapis_lazuli",Count:10b,tag:{medabots_server:{stage_item:1b,id:"medabots_server:medallar_cent"},display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.medallar_cent"}'}}},Tags:["hostile","do_not_teleport"],Age:-32768s}
summon minecraft:item -1889 44 -572 {Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:19,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_reflectmirror"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.scout"}','{"italic":false,"color":"white","translate":"medabots_server:move.scout.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pretty_prime"}',"",'{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_reflectmirror.quote"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_reflectmirror.model"}']},medabots_server:{stage_item:1b,id:"medabots_server:pretty_prime_reflectmirror",gender:1b,move:"scout",part:"head",armor:50,power:18,uses:7,activated:0b,version:1}}},Tags:["hostile","do_not_teleport"],Age:-32768s}
fill -1889 44 -582 -1889 47 -582 minecraft:bedrock
fill -1882 44 -579 -1882 47 -579 minecraft:bedrock
fill -1879 44 -571 -1879 47 -571 minecraft:bedrock
fill -1882 44 -564 -1882 47 -564 minecraft:bedrock
fill -1890 44 -561 -1890 47 -561 minecraft:bedrock
fill -1897 44 -564 -1897 47 -564 minecraft:bedrock
fill -1900 44 -572 -1900 47 -572 minecraft:bedrock
fill -1898 44 -578 -1898 47 -578 minecraft:bedrock
fill -1893 44 -575 -1893 47 -575 minecraft:bedrock
fill -1892 44 -569 -1892 47 -569 minecraft:bedrock
fill -1886 44 -568 -1886 47 -568 minecraft:bedrock
fill -1887 44 -574 -1887 47 -574 minecraft:bedrock
fill -1890 44 -572 -1890 47 -572 minecraft:bedrock
fill -1889 44 -571 -1889 47 -571 minecraft:bedrock
setblock -1891 44 -558 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
setblock -1879 44 -562 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
setblock -1876 44 -571 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1880 44 -582 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1889 44 -585 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1900 44 -581 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1903 44 -572 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1899 44 -561 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1891 45 -558 minecraft:redstone_block
setblock -1879 45 -562 minecraft:redstone_block
setblock -1876 45 -571 minecraft:redstone_block
setblock -1880 45 -582 minecraft:redstone_block
setblock -1889 45 -585 minecraft:redstone_block
setblock -1900 45 -581 minecraft:redstone_block
setblock -1903 45 -572 minecraft:redstone_block
setblock -1899 45 -561 minecraft:redstone_block
setblock -1890 43 -548 minecraft:structure_block[mode=load]{name:"medabots_server:stage/starting_area",mode:"LOAD"}
setblock -1890 44 -548 minecraft:redstone_block
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