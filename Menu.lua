--Menu de TDBD

--Almacenar imagen de las opciones
Menu = Image.load("Imagenes/Menu.png")
FrameMenu0 = Image.load("FramesMenu/Frame0.png")
FrameMenu1 = Image.load("FramesMenu/Frame1.png")
FrameMenu2 = Image.load("FramesMenu/Frame2.png")
FrameMenu3 = Image.load("FramesMenu/Frame3.png")
FrameMenu4 = Image.load("FramesMenu/Frame4.png")
FrameMenu5 = Image.load("FramesMenu/Frame5.png")
FrameMenu6 = Image.load("FramesMenu/Frame6.png")
FrameMenu7 = Image.load("FramesMenu/Frame7.png")
FrameMenu8 = Image.load("FramesMenu/Frame8.png")
FrameNada = Image.load("FrameNada/FrameNada.png")
oldpad = Controls.read()
opcion_actual = 1

--Empiezo
while true do
screen:clear()
pad = Controls.read()
screen:blit(0,0,Menu)
function cambiaopcion()
if opcion_actual == 1 then
Animacion1(true,6,25,0,0,FrameMenu0,FrameMenu1,FrameMenu2,FrameNada,FrameMenu2,FrameMenu1)
end
if opcion_actual == 2 then
Animacion2(true,6,25,0,0,FrameMenu3,FrameMenu4,FrameMenu5,FrameNada,FrameMenu5,FrameMenu4)
end
if opcion_actual == 3 then
Animacion3(true,6,25,0,0,FrameMenu6,FrameMenu7,FrameMenu8,FrameNada,FrameMenu8,FrameMenu7)
end
if pad:right() and not oldpad:right() then
opcion_actual = opcion_actual +1
end
if pad:left() and not oldpad:left() then 
opcion_actual = opcion_actual -1
end
if pad:cross() and opcion_actual == 1 then
Menu = nil
FrameMenu0 = nil
FrameMenu1 = nil
FrameMenu2 = nil
FrameMenu3 = nil
FrameMenu4 = nil
FrameMenu5 = nil
FrameMenu6 = nil
FrameMenu7 = nil
FrameMenu8 = nil
FrameNada = nil
collectgarbage("collect")
System.memclean()
dofile("Tester.lua")
end
if pad:cross() and opcion_actual == 2 then
Menu = nil
FrameMenu0 = nil
FrameMenu1 = nil
FrameMenu2 = nil
FrameMenu3 = nil
FrameMenu4 = nil
FrameMenu5 = nil
FrameMenu6 = nil
FrameMenu7 = nil
FrameMenu8 = nil
FrameNada = nil
collectgarbage("collect")
System.memclean()
dofile("MenuDump.lua")
end
if pad:cross() and opcion_actual == 3 then
System.Quit()
end
if opcion_actual>=4 then
opcion_actual=1
elseif opcion_actual<=0 then
opcion_actual=3
end
end
cambiaopcion()
oldpad = pad
screen.flip()
screen.waitVblankStart()
end