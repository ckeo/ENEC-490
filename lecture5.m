%Lecture 5

%Read electricity demand data
%Pre processing

data = xlsread('hourly demand.xls');

vector = mat2vec(data);

gobbled_data = data_goblin(vector);

processed_data = pre_processor(gobbled_data);

plot(processed_data);

%Part 3

[M, I] = max(processed_data(:,7000:8000))

%Data Transformation
%Part 2

qqplot(processed_data);
qqplot(log(processed_data));
hist(log(processed_data));

%Doesn't appear that a log transformation really helps that much

%Part 3

subsetted_data = processed_data(:,7000:8000);
outlier = max(subsetted_data);
xbar = mean(processed_data, 'omitnan');
sd = std(processed_data, 'omitnan');


SDsOfOutlier = (outlier - xbar)/sd

%Part 4
%November is 7296 to 8016


