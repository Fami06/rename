%フォルダ内の全てのファイルの拡張子を変更する(DICOM)
folderName = 'DWI＿b0';

% フォルダ内の全てのファイルを取得
fileList = dir(fullfile(folderName, '0*'));
numFiles = numel(fileList);

% 各ファイルの拡張子を'.dcm'に変更する
for i = 1:numFiles
    [~,name,ext] = fileparts(fileList(i).name);

    if ~strcmpi(ext, '.dcm')
        newFileName = fullfile(folderName, [name '.dcm']);
        movefile(fullfile(folderName, fileList(i).name), newFileName);

    end
end
