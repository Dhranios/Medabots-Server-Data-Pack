setblock -1950 51 -590 minecraft:stone_pressure_plate
setblock -1948 51 -590 minecraft:stone_pressure_plate
setblock -1950 53 -591 minecraft:redstone_block
setblock -1948 53 -591 minecraft:redstone_block
fill -1945 45 -563 -1945 48 -563 minecraft:air
fill -1946 45 -562 -1946 48 -562 minecraft:air
fill -1947 45 -561 -1947 48 -561 minecraft:air
fill -1942 45 -569 -1941 48 -569 minecraft:air
fill -1938 45 -573 -1937 48 -573 minecraft:air
fill -1934 45 -569 -1933 48 -569 minecraft:air
fill -1927 45 -572 -1927 48 -571 minecraft:air
fill -1927 45 -576 -1927 48 -575 minecraft:air
fill -1930 45 -586 -1929 48 -586 minecraft:air
fill -1934 45 -582 -1933 48 -582 minecraft:air
fill -1938 45 -586 -1937 48 -586 minecraft:air
fill -1942 45 -586 -1941 48 -586 minecraft:air
fill -1944 45 -580 -1944 48 -579 minecraft:air
fill -1940 45 -575 -1940 48 -576 minecraft:air
fill -1938 45 -582 -1937 48 -582 minecraft:air
fill -1931 45 -580 -1931 48 -579 minecraft:air
fill -1934 45 -573 -1933 48 -573 minecraft:air
fill -1952 45 -563 -1952 48 -563 minecraft:air
fill -1951 45 -562 -1951 48 -562 minecraft:air
fill -1950 45 -561 -1950 48 -561 minecraft:air
fill -1947 45 -568 -1947 48 -568 minecraft:air
fill -1946 45 -567 -1946 48 -567 minecraft:air
fill -1945 45 -566 -1945 48 -566 minecraft:air
fill -1950 45 -568 -1950 48 -568 minecraft:air
fill -1951 45 -567 -1951 48 -567 minecraft:air
fill -1952 45 -566 -1952 48 -566 minecraft:air
fill -1973 44 -589 -1924 44 -540 minecraft:water replace minecraft:oak_planks
fill -1973 45 -589 -1924 45 -540 minecraft:air replace minecraft:stone_slab
fill -1973 45 -589 -1924 45 -540 minecraft:air replace minecraft:comparator
fill -1973 45 -589 -1924 45 -540 minecraft:grass_block replace minecraft:dirt
tag @e[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50,type=!minecraft:player] add dead
stopsound @s music
scoreboard players set @s Battle 0
scoreboard players set @s MusicType 1
scoreboard players set @s Music 299
playsound medabots_server:music.stage.stage_end music @s -1949 51 -564 3
scoreboard players add @s[tag=story_battle] Story 1
tag @s remove story_battle
teleport @s -1949 51 -564 -180 0