clear;clc;
A4=440;%
pt=44100;p0=pt/2;%
scale12=A4/2^(9/12)*2.^((0:11)/12);%
map=[1 3 5 6 8 10 12];%
%
score=[1 1 5 5 6 6 5;%do do sol sol la la sol-
    4 4 3 3 2 2 1;%fa fa mi mi re re do-
    5 5 4 4 3 3 2;%sol sol fa fa mi mi re-
    5 5 4 4 3 3 2;%sol sol fa fa mi mi re-
    1 1 5 5 6 6 5;%do do sol sol la la sol-
    4 4 3 3 2 2 1];%fa fa mi mi re re do-
%
rhythm=repmat([1 1 1 1 1 1 2],1,6);
%
lyric=['Twinkle twinkle little star';
       'How I wonder what you are  ';
       'Up above the world so high ';
       'like a diamond in the sky  ';
       'Twinkle twinkle little star';
       'How I wonder what you are  '];
%
[I J] = size(score);
for i=1:I
    fprintf(1,'%s',lyric(i,:))
    for j = 1:J
        sound(sin((1:rhythm(j)*p0)/pt*2*pi*scale12(map(score(i,j)))),pt);
    if mod(j,7)==0
        fprintf(1,'\n');
    end
    end
end