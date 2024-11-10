filepath = uigetdir();
cd(filepath);

ls;

dlist = dir;

for i = 3:length(dlist)
    oldfilename = dlist(i).name;
    oldfilepath = fullfile(filepath,oldfilename);

    if size(oldfilename,2) == 8

       num = oldfilename(4);
       newStr = pad(num,3,'left','0');
       ext = '.dcm';
       newfilename = strcat(newStr,ext);
       newfilepath = fullfile(filepath,newfilename);

       movefile(oldfilepath, newfilepath);

    elseif size(oldfilename,2) == 9
       num = oldfilename(4:5);
       newStr = pad(num,3,'left','0');
       ext = '.dcm';
       newfilename = strcat(newStr,ext);
       newfilepath = fullfile(filepath,newfilename);

       movefile(oldfilepath, newfilepath);

    else 

    end

end

ls;

