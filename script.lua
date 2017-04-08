Portada = Image.load("Imagenes/Portada.png")
for n = 255, 0, -10 do
negro = Image.createEmpty(480,272)
negro:clear(Color.new(0,0,0,n))
screen:blit(0,0,Portada)
screen:blit(0,0,negro)
screen.flip()
System.sleep(2)
end
screen:blit(0,0,Portada)          
System.sleep(4000)
for n = 0, 255, 10 do 
Portada:clear( Color.new(0,0,0,n ))
screen:blit(0,0,Portada)                                
screen.flip()
System.sleep(2)
end
Portada = nil
collectgarbage("collect")
System.memclean()
dofile("Cargar_Libreria.lua")