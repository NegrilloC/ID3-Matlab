function output = multiple2BinaryAtt(data)

%%convert class data to good or bad: good = {unacc, accc}, good = {good, vgood}
n = length(output)
output(1).class
for i = 1:n
    if(output(i).class == "good" || output(i).class == "vgood")
        output(i).class = 'good';
    else
        output(i).class = 'bad';
    end
end