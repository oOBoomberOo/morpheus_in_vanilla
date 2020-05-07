execute store result score #sleep_timer bb.mp.var run data get entity @s SleepTimer

execute if entity @s[tag=boomber.morpheus.sleeping] if score #sleep_timer bb.mp.var matches 0 run function boomber:morpheus/player/awake
execute unless entity @s[tag=boomber.morpheus.sleeping] if score #sleep_timer bb.mp.var matches 1 run function boomber:morpheus/player/sleep
