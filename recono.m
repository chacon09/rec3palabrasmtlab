
function recono(z,w,t,y);

v1 =z;
v2=w;
v3=t;

vocala = normalizar(v1);
trasfp1 = abs(fft(vocala));
vocale = normalizar(v2);
trasfp2 = abs(fft(vocale));
vocali = normalizar(v3);
trasfp3 = abs(fft(vocali));
voz_usuario = y;
usuario = normalizar(voz_usuario);
transfusuario = abs(fft(usuario));

error(1) = mean(abs(trasfp1 - transfusuario));
error(2) = mean(abs(trasfp2 - transfusuario));
error(3) = mean(abs(trasfp3 - transfusuario));
error(4) = mean(abs(trasfp3 - transfusuario));
min_error = min(error);
disp(error);
disp(min_error);

global c;
global m;
global b;

c = imread('lambor.jpg');
m = imread('honda.jpg');
b = imread('bicic.jpg');


if(usuario == 0)
    disp('No se ha ingresado la Palabra');
  
end
if(min_error == error(1)&&min_error ~= error(2)&&min_error ~= error(3))
    imshow(c);
    sound(z,44100);
end
if(min_error == error(2)&&min_error ~= error(3)&&min_error ~= error(1))
    imshow(m);
    sound(w,44100);
end
if(min_error == error(3)&&min_error ~= error(1)&&min_error ~= error(2))
    imshow(b);
    sound(t,44100);
end
if(min_error ~= error(1)&& min_error ~= error(2)&& min_error ~= error(3))
    disp('Palabra Ingresada no existe');
 
end
end
