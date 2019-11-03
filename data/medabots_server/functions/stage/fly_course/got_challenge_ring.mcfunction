playsound medabots_server:block.fly_course_ring master @s ~ ~ ~ 1000 2
execute if entity @s[scores={Stage=1}] run function medabots_server:stage/fly_course/next_challenge_ring/easy_1
execute if entity @s[scores={Stage=2}] run function medabots_server:stage/fly_course/next_challenge_ring/medium_1
execute if entity @s[scores={Stage=3}] run function medabots_server:stage/fly_course/next_challenge_ring/hard_1
scoreboard players add @s RingsTotal 1
scoreboard players set @s Time 220