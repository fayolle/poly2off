function nodes = readNodes(node_name)
fid = fopen(node_name, 'r');

% header
[line, count] = fscanf(fid, '%d', 4);
num_vert = line(1);
attributes = line(3);

% read line by line
nodes = zeros(num_vert, 3);
for i = 1:num_vert
    if attributes
        [line, count] = fscanf(fid, '%f', 5);
        x = line(2);
        y = line(3);
        boundary = line(5);
        nodes(i,:) = [x, y, boundary];
    else
        [line, count] = fscanf(fid, '%f', 4);
        x = line(2);
        y = line(3);
        boundary = line(4);
        nodes(i,:) = [x, y, boundary];
    end
end


fclose(fid);
end
