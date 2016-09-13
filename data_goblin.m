function [gobbled_data] = data_goblin(d)

%Pseudo randomly messes data that undergrads painstakingly put together so
%they can do some data interpolation

hours=length(d);

for i = 1:100
   index = ceil(hours*rand(1));
   d(index) = 0;
end

for i = 1:10
   index = ceil(hours*rand(1));
   d(index) = -999;
end

for i = 1:5
   index = ceil(hours*rand(1));
   d(index) = 1200000;
end

index = ceil(hours*rand(1));
d(index:index+1) = 0;

gobbled_data=d;

end

