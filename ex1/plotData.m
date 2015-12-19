function plotData(x, y)
%PLOTDATA Plots the data points x and y into a new figure 
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   population and profit.

plot(x, y, 'rx', 'MarkerSize', 10); % plot the data
ylabel('Proit in $10,000s'); % y axis label
xlabel('Population of City in 10,0000s'); % x axis label 

end
