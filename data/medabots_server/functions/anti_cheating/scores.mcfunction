# Reset scores
scoreboard players reset @s[scores={OverheatingFly=0}] OverheatingFly

# Set scores
team join EnemyPlayer @s[team=!EnemyPlayer,scores={State=1..3}]
scoreboard players set @a[team=Moderator] Moderator 1
tag @s[team=Moderator,tag=!bug_tester] add bug_tester

# Prevent spawn point from moving
spawnpoint @s -286 55 -52