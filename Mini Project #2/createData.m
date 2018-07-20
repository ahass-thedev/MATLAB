function [Data] = createData(num) 
%Creates the data structure and then assigns values to each structure value
    Data.values=num;
    Data.mean=num;
    Data.median=num; 
    Data.variance=0;
end 
function[Data] = addData(beginningData, dataPoint)
%sorts the data in ascending order and returns the data structure with a
%new data point in the correct order
    Data.values = sort([beginningData.values,dataPoint]);
end
function[Data] = updateStats(beginningData)
%updates the data in the structure
%finds the median
if(mod(length(beginningData.values),2) == 1)
    Data.median = beginningData.values((length(beginningData.values)/2)+.5);
   else 
         Data.median = (beginningData.values((length(beginningData.values)/2))+beginningData.values((length(beginningData.values)/2)+1))/2;
end
mean = 0;
%using a for loop for the length of the array of data, the mean can be
%found out
for values = 1:1:length(beginningData.values)
   mean = beginningData.values(values) + mean;
end
Data.mean = mean/length(beginningData.values);
variance = 0;
%finds the variance of the data
for elements = 1:1:length(beginningData.values)
    variance = ((beginningData.values(elements) - Data.mean)^2) + variance;
end
Data.variance = variance/(length(beginningData.values) - 1);
end