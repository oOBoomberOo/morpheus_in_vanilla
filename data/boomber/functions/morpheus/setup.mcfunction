scoreboard objectives add bb.mp.var dummy
scoreboard objectives add bb.mp.const dummy
scoreboard objectives add bb.mp.gamerule dummy

scoreboard players set #20 bb.mp.const 20
scoreboard players set #100 bb.mp.const 100

function boomber:morpheus/config

#define score_holder #sleep_time.tick
scoreboard players operation #sleep_time.tick bb.mp.const = #sleep_time bb.mp.gamerule
scoreboard players operation #sleep_time.tick bb.mp.const *= #20 bb.mp.const

function boomber:morpheus/main