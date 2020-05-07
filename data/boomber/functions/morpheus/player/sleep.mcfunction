#define tag boomber.morpheus.sleeping
tag @s add boomber.morpheus.sleeping

execute if score #chat bb.mp.gamerule matches 0 run function boomber:morpheus/player/message/0
execute if score #chat bb.mp.gamerule matches 1 run function boomber:morpheus/player/message/1
execute if score #chat bb.mp.gamerule matches 2 run function boomber:morpheus/player/message/2
execute if score #chat bb.mp.gamerule matches 3 run function boomber:morpheus/player/message/3