polyin = polyshape({[0 0 1 3],[0.5 1.5 1.5 0.5]},{[0 3 3 0],[0.5 0.5 1.5 1.5]});
plot(polyin)
polyout1 = polybuffer(polyin,1);
hold on
plot(polyout1)
hold off
axis image