function h=filtrod(fc,fs,N);
for n=1:N
    a=n-N/2;
    b=2*pi*fc*a/fs;
    c=2*fc/fs;
    if(b==0)
        h(n)=1;
    else
    h(n)=c*sin(b)/b;
    end
end
end
    