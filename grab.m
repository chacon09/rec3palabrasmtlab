function [x k]=grab(fs);

 k = audiorecorder(fs, 16, 1);
disp('Reconociendo Palabra');
 recordblocking(k,2);
disp('Reconocimiento Finalizado');
x1 = getaudiodata(k);
 h=filtrod(200,4000,2000)
  x = conv(h,x1);
end