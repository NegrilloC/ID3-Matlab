function output = multiple2BinaryAtt(data)

%%convert class data to good or bad: good = {unacc, accc}, good = {good, vgood}
n = length(data);

for i = 1:n
    if(data(i).class == "good" || data(i).class == "vgood")
        output(i).class = 'good';
    else
        output(i).class = 'bad';
    end
end