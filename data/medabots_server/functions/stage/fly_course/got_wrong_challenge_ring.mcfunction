playsound medabots_server:block.fly_course_ring master @s ~ ~ ~ 1000 0.5
tellraw @s {"translate":"medabots_server:message.stage.fly_course.wrong_challenge_ring","color":"green"}
tellraw @s {"translate":"medabots_server:message.stage.fly_course.results","color":"green","with":[{"score":{"name":"@s","objective":"Rings"},"color":"green"},{"score":{"name":"@s","objective":"RingsTotal"},"color":"green"}]}
scoreboard players set @s FlyCourse 0