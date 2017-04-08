--Menu Dumpeador de TDBD

--Almacenar imagen del Menu Dumpeador y datos de espacio y UMD
MenuDump = Image.load("Imagenes/MenuDump.png")
FrameDump0 = Image.load("FramesDump/Frame0.png")
FrameDump1 = Image.load("FramesDump/Frame1.png")
FrameDump2 = Image.load("FramesDump/Frame2.png")
FrameDump3 = Image.load("FramesDump/Frame3.png")
FrameDump4 = Image.load("FramesDump/Frame4.png")
FrameDump5 = Image.load("FramesDump/Frame5.png")
FrameNada = Image.load("FrameNada/FrameNada.png")
espaciolibre = System.getFreeSpace("ms0:")
comprobarUMD = UMD.checkDisk()
espacioUMD = UMD.getSize()
oldpad = Controls.read()

--¡A programar!
opcion_actual = 1
while true do
screen:clear()
pad = Controls.read()
screen:blit(0,0,MenuDump)
function cambia_opcion()
if opcion_actual == 1 then
Animacion4(true,6,25,0,0,FrameDump0,FrameDump1,FrameDump2,FrameNada,FrameDump2,FrameDump1)
end
if opcion_actual == 2 then
Animacion5(true,6,25,0,0,FrameDump3,FrameDump4,FrameDump5,FrameNada,FrameDump5,FrameDump4)
end
if pad:right() and not oldpad:right() then
opcion_actual = opcion_actual +1
end
if pad:left() and not oldpad:left() then
opcion_actual = opcion_actual -1
end
if opcion_actual >= 3 then
opcion_actual = 1
elseif opcion_actual <= 0 then
opcion_actual = 2
end
if pad:cross() and espaciolibre > espacioUMD and comprobarUMD == 1 and opcion_actual == 1 then
nombreiso = System.startOSK("ms0:/ISO/Nombre.ISO","Ruta del ISO y nombre")
UMD.ripISO(nombreiso)
System.message("Dumpeo realizado con exito",0)
end
if pad:cross() and espaciolibre < espacioUMD and opcion_actual == 1 then
System.message("No hay espacio suficiente en la MS",0)
end
if pad:cross() and comprobarUMD == 0 and opcion_actual == 1 then
System.message("No hay un UMD insertado",0)
end
if pad:cross() and opcion_actual == 2 then
MenuDump = nil
FrameDump0 = nil
FrameDump1 = nil
FrameDump2 = nil
FrameDump3 = nil
FrameDump4 = nil
FrameDump5 = nil
FrameNada = nil
collectgarbage("collect")
System.memclean()
dofile("Menu.lua")
end
end
cambia_opcion()
oldpad = pad
screen.flip()
screen.waitVblankStart()
end