function id3_main
%target att

%define inputs to id3
examples = readData('car.data.txt')
target_attribute = 'class'
attributes = ["buying"; "doors"; "persons"; "lug_boot"; "safety"]

%convert class data to good or bad: good = {unacc, accc}, good = {good, vgood}
examples = multiple2BinaryAtt(examples);
% randomize struct rows
examples = randomizeData(examples);

%% begin building ID3
tree = ID3(examples,target_attribute,attributes)
