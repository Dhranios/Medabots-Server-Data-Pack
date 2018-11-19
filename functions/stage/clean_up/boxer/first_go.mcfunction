setblock -1889 43 -595 minecraft:sand
setblock -1889 47 -595 minecraft:air
fill -1889 44 -582 -1889 47 -582 minecraft:air
fill -1882 44 -579 -1882 47 -579 minecraft:air
fill -1879 44 -571 -1879 47 -571 minecraft:air
fill -1882 44 -564 -1882 47 -564 minecraft:air
fill -1890 44 -561 -1890 47 -561 minecraft:air
fill -1897 44 -564 -1897 47 -564 minecraft:air
fill -1900 44 -572 -1900 47 -572 minecraft:air
fill -1898 44 -578 -1898 47 -578 minecraft:air
fill -1893 44 -575 -1893 47 -575 minecraft:air
fill -1892 44 -569 -1892 47 -569 minecraft:air
fill -1886 44 -568 -1886 47 -568 minecraft:air
fill -1887 44 -574 -1887 47 -574 minecraft:air
fill -1890 44 -572 -1890 47 -572 minecraft:air
fill -1889 44 -571 -1889 47 -571 minecraft:air
fill -1901 44 -581 -1900 47 -581 minecraft:air
fill -1903 44 -573 -1903 47 -572 minecraft:air
fill -1917 44 -566 -1917 45 -566 minecraft:air
fill -1918 44 -567 -1918 45 -567 minecraft:air
fill -1907 44 -576 -1907 45 -576 minecraft:air
fill -1908 44 -577 -1908 45 -577 minecraft:air
fill -1917 44 -577 -1917 45 -577 minecraft:air
fill -1918 44 -576 -1918 45 -576 minecraft:air
fill -1908 44 -566 -1908 45 -566 minecraft:air
fill -1907 44 -567 -1907 45 -567 minecraft:air
fill -1899 44 -561 -1899 47 -560 minecraft:air
fill -1890 44 -558 -1891 47 -558 minecraft:air
fill -1879 44 -562 -1878 47 -562 minecraft:air
fill -1876 44 -571 -1876 47 -570 minecraft:air
fill -1880 44 -583 -1880 47 -582 minecraft:air
fill -1889 44 -585 -1888 47 -585 minecraft:air
fill -1921 43 -603 -1858 43 -540 minecraft:sand replace minecraft:moving_piston
fill -1921 44 -603 -1858 44 -540 minecraft:air replace minecraft:stone_slab
tag @a[scores={Stage=79..80},tag=enemy] remove enemy
scoreboard players set @a[scores={Stage=79..80}] Music 0
scoreboard players set @a[scores={Stage=79..80}] MusicType 1
scoreboard players set @a[scores={Stage=79..80}] Battle 0
teleport @a[scores={Stage=79..80}] -1890 50 -571 -180 0
tag @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,type=!minecraft:player] add dead
data merge block -1891 51 -603 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/boxer/play\"}}"}
setblock -1891 52 -605 minecraft:redstone_block
scoreboard players set @s MusicType 1