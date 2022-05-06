function writeOff(filename, V, F)
f = fopen( filename, 'wt' );
fprintf(f, 'OFF\n');
fprintf(f, '%d %d 0\n', size(V,1), size(F, 1));

fprintf(f, '%f %f %f\n', V');

if (~isempty(F)) 
    F = F - 1; 
end
fprintf( f, '3 %d %d %d\n', F');

fclose(f);
end
