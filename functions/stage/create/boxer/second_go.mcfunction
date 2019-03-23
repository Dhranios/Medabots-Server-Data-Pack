summon minecraft:item -1889 44 -541 {Item:{id:"minecraft:lapis_lazuli",Count:10b,tag:{medabots_server:{stage_item:1b,id:"medabots_server:medallar_cent"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.medallar_cent\"}"}}},Tags:["hostile","do_not_teleport"],Age:-32768s}
setblock -1890 44 -558 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/open_door",mode:"LOAD"}
setblock -1879 44 -562 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
setblock -1878 44 -561 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/open_door",mode:"LOAD"}
setblock -1876 44 -571 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1875 44 -571 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
setblock -1880 44 -582 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1879 44 -583 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
setblock -1889 44 -585 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1889 44 -586 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
setblock -1900 44 -581 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1901 44 -582 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
setblock -1903 44 -572 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1904 44 -572 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
setblock -1899 44 -561 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
setblock -1900 44 -560 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
setblock -1890 45 -558 minecraft:redstone_block
setblock -1879 44 -563 minecraft:redstone_block
setblock -1879 44 -563 minecraft:air
setblock -1878 44 -560 minecraft:redstone_block
setblock -1878 44 -560 minecraft:air
setblock -1877 44 -571 minecraft:redstone_block
setblock -1877 44 -571 minecraft:air
setblock -1874 44 -571 minecraft:redstone_block
setblock -1874 44 -571 minecraft:air
setblock -1881 44 -582 minecraft:redstone_block
setblock -1881 44 -582 minecraft:air
setblock -1878 44 -583 minecraft:redstone_block
setblock -1878 44 -583 minecraft:air
setblock -1889 44 -584 minecraft:redstone_block
setblock -1889 44 -584 minecraft:air
setblock -1889 44 -587 minecraft:redstone_block
setblock -1889 44 -587 minecraft:air
setblock -1900 44 -580 minecraft:redstone_block
setblock -1900 44 -580 minecraft:air
setblock -1901 44 -583 minecraft:redstone_block
setblock -1901 44 -583 minecraft:air
setblock -1902 44 -572 minecraft:redstone_block
setblock -1902 44 -572 minecraft:air
setblock -1905 44 -572 minecraft:redstone_block
setblock -1905 44 -572 minecraft:air
setblock -1898 44 -561 minecraft:redstone_block
setblock -1898 44 -561 minecraft:air
setblock -1901 44 -560 minecraft:redstone_block
setblock -1901 44 -560 minecraft:air
setblock -1890 43 -548 minecraft:structure_block[mode=load]{name:"medabots_server:stage/starting_area",mode:"LOAD"}
setblock -1890 44 -548 minecraft:redstone_block
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=-1] -1890 44 -548
teleport @s[tag=-1] -1890 44 -548
tag @a[x=-1890,y=44,z=-548,distance=..1] remove -1
scoreboard players set @a[x=-1890,y=44,z=-548,distance=..1] Battle 1
scoreboard players set @a[x=-1890,y=44,z=-548,distance=..1] Stage 29
scoreboard players set @a[x=-1890,y=44,z=-548,distance=..1] Music 0
scoreboard players set @a[x=-1890,y=44,z=-548,distance=..1] MusicType 21
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=enemy_medabot] Battle 1
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=enemy_medabot] Stage 29
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=enemy_medabot] Music 0
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=enemy_medabot] MusicType 21