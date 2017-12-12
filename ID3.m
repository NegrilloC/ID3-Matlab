function tree =ID3(examples,target_attribute,attributes)
%create root node for tree
tree.root = ''

%If all Examples have the same Target value, Return single-node tree Root with value 
singleNode = examples(1).(target_attribute)
for i = 2:length(examples)
    if(~strcmp(examples(i).(target_attribute),singleNode))
        break
    elseif(i == length(examples))
        tree.root = singleNode
        return
    end
end

%If number of predicting attributes is empty, return the single node tree Root, 
%with label = most common value of the target attribute in examples. 
if(length(attributes)==0)
    tree.root = getComValOfAtt(examples,target_attribute)
    return
end
%Otherwise Begin 
%A = The Attribute that best classifies examples. (Highest Information Gain)
%Decision Tree attribute for Root = A. 
%For each possible value, vi, of A, 
%Add a new tree branch below Root, corresponding to the test A = vi. 
%Let Examples(vi), be the subset of examples that have the value vi for A 
%If Examples(vi) is empty 
%Then below this new branch add a leaf node with label = most common target value in the examples 
%lse below this new branch add the subtree ID3 (Examples(vi), Target_Attribute, Attributes – {A}) 
%End 
%Return Root 



