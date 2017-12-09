function [output] =randomizeData(data)

n = length(data);
idx = randperm(n);

for i=1:n
    output(i)=data(idx(i));
end
