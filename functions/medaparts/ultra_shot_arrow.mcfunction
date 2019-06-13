# Leave yellow light trail
summon minecraft:armor_stand ~ ~-1.7 ~ {CustomName:'{"translate":"medabots_server:move.kabuto"}',Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:yellow_stained_glass",Count:1b}],Marker:1b,Tags:["life_time"]}
effect give @a[distance=..10] minecraft:night_vision 1 0 true