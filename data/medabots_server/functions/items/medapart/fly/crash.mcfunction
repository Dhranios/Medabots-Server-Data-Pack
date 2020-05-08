# Blow up crashing fliers
summon minecraft:creeper ~ ~-1 ~ {Fuse:0s,CustomName:'{"translate":"medabots_server:entity.flying_crash"}',Tags:["flying_crash"]}
function medabots_server:other/death/crash
tag @s add crasher
execute if entity @e[distance=0.1..4,tag=hostile,tag=medabot] run advancement grant @s only medabots_server:main/kamikaze_bomber

execute as @a[distance=0.1..4,tag=hostile,tag=!had_death] run function medabots_server:other/death/crashed_on
tag @s remove crasher