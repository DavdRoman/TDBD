--MenuTester

MenuTester = Image.load("Imagenes/MenuTester.png")
Tick = Image.load("Imagenes/Tick.png")

--Tester
while true do
pad = Controls.read()
screen:clear()
screen:blit(0,0,MenuTester)
if pad:up() then
screen:blit(172,71,Tick)
end
if pad:down() then
screen:blit(172,71,Tick)
end
if pad:right() then
screen:blit(172,71,Tick)
end
if pad:left() then
screen:blit(172,71,Tick)
end
if pad:circle() then
screen:blit(172,71,Tick)
end
if pad:square() then
screen:blit(172,71,Tick)
end
if pad:triangle() then
screen:blit(172,71,Tick)
end
if pad:cross() then
screen:blit(172,71,Tick)
end
if pad:l() then
screen:blit(172,71,Tick)
end
if pad:r() then
screen:blit(172,71,Tick)
end
if pad:select() then
screen:blit(172,71,Tick)
end
if pad:start() then
screen:blit(172,71,Tick)
end
if pad:hold() then
screen:blit(172,71,Tick)
end
if pad:l() and pad:r() then
MenuTester = nil
Tick = nil
collectgarbage("collect")
System.memclean()
dofile("Menu.lua")
end
screen.waitVblankStart()
screen.flip()
end