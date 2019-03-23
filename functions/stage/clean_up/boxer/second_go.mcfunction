fill -1890 44 -558 -1891 47 -558 minecraft:air
fill -1879 44 -562 -1878 47 -561 minecraft:air
fill -1876 44 -571 -1875 47 -570 minecraft:air
fill -1880 44 -582 -1879 47 -583 minecraft:air
fill -1889 44 -585 -1888 47 -586 minecraft:air
fill -1900 44 -581 -1901 47 -582 minecraft:air
fill -1903 44 -572 -1904 47 -573 minecraft:air
fill -1899 44 -561 -1900 47 -560 minecraft:air
setblock -1890 43 -548 minecraft:sand
setblock -1890 47 -548 minecraft:air
fill -1921 44 -603 -1858 44 -540 minecraft:air replace minecraft:stone_slab
bossbar set medabots_server:boxer/time players
scoreboard players set @a[scores={Stage=29}] Music 0
scoreboard players set @a[scores={Stage=29}] MusicType 22
scoreboard players set @a[scores={Stage=29}] Battle 0
tag @e[scores={Stage=29},type=!minecraft:player] add dead
data merge block -1891 51 -603 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/boxer/play\"}}"}
setblock -1891 52 -605 minecraft:redstone_block