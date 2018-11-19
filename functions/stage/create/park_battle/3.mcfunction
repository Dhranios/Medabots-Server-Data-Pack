setblock -1950 51 -590 minecraft:air
setblock -1948 51 -590 minecraft:air
setblock -1950 53 -591 minecraft:red_wool
setblock -1948 53 -591 minecraft:red_wool
setblock -1970 45 -551 minecraft:comparator[facing=north,mode=compare,powered=false]
setblock -1966 45 -559 minecraft:comparator[facing=north,mode=compare,powered=false]
setblock -1957 45 -559 minecraft:comparator[facing=north,mode=compare,powered=false]
setblock -1953 45 -551 minecraft:comparator[facing=north,mode=compare,powered=false]
setblock -1962 45 -543 minecraft:comparator[facing=east,mode=compare,powered=false]
setblock -1954 45 -547 minecraft:comparator[facing=east,mode=compare,powered=false]
setblock -1954 45 -556 minecraft:comparator[facing=east,mode=compare,powered=false]
setblock -1962 45 -560 minecraft:comparator[facing=east,mode=compare,powered=false]
setblock -1970 45 -552 minecraft:comparator[facing=south,mode=compare,powered=false]
setblock -1966 45 -544 minecraft:comparator[facing=south,mode=compare,powered=false]
setblock -1957 45 -544 minecraft:comparator[facing=south,mode=compare,powered=false]
setblock -1953 45 -552 minecraft:comparator[facing=south,mode=compare,powered=false]
setblock -1961 45 -543 minecraft:comparator[facing=west,mode=compare,powered=false]
setblock -1969 45 -547 minecraft:comparator[facing=west,mode=compare,powered=false]
setblock -1969 45 -556 minecraft:comparator[facing=west,mode=compare,powered=false]
setblock -1961 45 -560 minecraft:comparator[facing=west,mode=compare,powered=false]
fill -1950 45 -561 -1950 48 -561 minecraft:bedrock
fill -1951 45 -562 -1951 48 -562 minecraft:bedrock
fill -1952 45 -563 -1952 48 -563 minecraft:bedrock
teleport @a[x=-1950,y=51,z=-590,distance=..0.7,limit=1] -1967 45 -552
teleport @a[x=-1948,y=51,z=-590,distance=..0.7,limit=1] -1956 45 -551
scoreboard players set @e[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Stage 101
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Battle 1