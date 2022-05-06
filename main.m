function main(in_basename, out_basename)
  % read .ele, .node and .poly files
  ele_name = strcat(in_basename, '.1.ele');
  elements = readElements(ele_name);

  node_name = strcat(in_basename, '.1.node');
  nodes = readNodes(node_name);

  poly_name = strcat(in_basename, '.1.poly');
  segments = readPoly(poly_name);

  faces = elements;
  vert = zeros(size(nodes,1), 3);
  
  % we only need the x,y coordinates and not the optional markers
  vert(:,1:2) = nodes(:,1:2);
  
  out_filename = strcat(out_basename, '.off');
  writeOff(out_filename, vert, faces); 
end
