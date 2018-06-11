function [x x1 x2]=grabpa(fs);
disp('grabando palabra #1');
 [x k]=grab(fs);
 disp('grabando palabra #2');
 [x1 k1]=grab(fs);
 disp('grabando palabra #3');
 [x2 k2]=grab(fs);
end