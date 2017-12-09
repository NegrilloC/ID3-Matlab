function [sdata]=readData(fname)

%% Read whole file into RAM at once

fid=fopen(fname,'r');
txt=fread(fid,'*char');
fclose(fid);
txt=txt.';

%% Split lines into cells
c=regexp(txt,['(.+?)' char(10)], 'tokens');
c=cellfun(@(x)x{1},c,'uniformoutput',0);

data = cell(length(c),7);

for i= 1:length(c)
    data(i,:) = strsplit(c{i}(1:end-1),',');
end


sdata = struct('buying', data(:,1), 'maint' , data(:,2), 'doors', data(:,3), 'persons' , data(:,4), 'lug_boot', data(:,5), 'safety', data(:,6), 'class', data(:,7))




