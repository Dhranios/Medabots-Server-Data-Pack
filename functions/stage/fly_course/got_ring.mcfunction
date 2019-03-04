playsound medabots_server:block.fly_course_ring master @s[scores={Rings=1..}] ~ ~ ~ 1000 2
scoreboard players add @s Rings 1
scoreboard players add @s[tag=!lap_race] RingsTotal 1
scoreboard players set @s Time 220