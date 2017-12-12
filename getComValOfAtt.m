function val = getComValOfAtt(examples,target_attribute)

values = [] 

for i = 1:length(examples)
    currentVal = examples(i).(target_attribute)
    if(length(values)== 0)
        values = [{currentVal}]
        valCount.(currentVal) = 1
    else
        bAddtoValArr = true
        for j = 1:length(values)
            if(strcmp(values{j}, currentVal))
                bAddtoValArr = false;
            end
        end
        if(bAddtoValArr)
            values = [values, {currentVal}];
            valCount.(currentVal) = 1;
        else
            valCount.(currentVal) = valCount.(currentVal) + 1;
        end
    end
end

largestCnt = -1
for i = 1:length(values)
    if(valCount.(values{i})> largestCnt)
        largestCnt = valCount.(values{i})
        %if two values are just as common, returns the one earliest in the
        %collected array
        values
        val = values{i}
    end
end