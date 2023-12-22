clearvars
% Declare objects

% Initialise parameters
% time parameters
% TODO - investigate matlab timeseries data type
time_step = 0.5; % seconds
% 0.1 -> 60
simulation_time = 1; % 24h00 format
simulation_time = simulation_time * 3600; % seconds
starting_time = 0; % 24h00 format
if starting_time == 24
    starting_time = 0;
end
starting_time = starting_time * 3600; % seconds
% vascular system parameters
% arterial blood
arterial_SpO2 = 0.98; %
arterial_glucose = 4; % mmol/L
arterial_insulin = 10; % mU/L
% venous blood
% initialise to the same as arterial
venous_SpO2 = arterial_SpO2; %
venous_glucose = arterial_glucose; % mmol/L
venous_insulin = arterial_insulin; % mU/L
% gut parameters
gut_SpO2 = 0.4; %
gut_glucose = 5; % mmol/L
gut_flowrate = 500; % ml/min
% pancreas parameters
pancreas_SpO2 = 0.4; %
pancreas_glucose = 5; % mmol/L
pancreas_flowrate = 500; % ml/min
% muscle parameters
muscle_SpO2 = 0.4; %
muscle_glucose = 5; % mmol/L
muscle_flowrate = 500; % ml/min
% liver parameters
liver_SpO2 = 0.4; %
liver_glucose = 5; % mmol/L
liver_flowrate = 500; % ml/min
% kidney parameters
kidney_SpO2 = 0.4; %
kidney_glucose = 5; % mmol/L
kidney_flowrate = 500; % ml/min
% lung parameters
lung_SpO2 = 0.4; %
lung_glucose = 5; % mmol/L
lung_flowrate = 500; % ml/min
% brain parameters
brain_SpO2 = 0.4; %
brain_glucose = 5; % mmol/L
brain_flowrate = 500; % ml/min
% heart parameters
heart_SpO2 = 0.4; %
heart_glucose = 5; % mmol/L
heart_flowrate = 500; % ml/min

% Initialise objects
VascularSystem = VascularSystem(starting_time, time_step, arterial_SpO2, arterial_glucose, arterial_insulin, venous_SpO2, venous_glucose, venous_insulin);
Gut = Gut(starting_time, time_step, gut_SpO2, gut_glucose, gut_flowrate);
Pancreas = Pancreas(starting_time, time_step, pancreas_SpO2, pancreas_glucose, pancreas_flowrate);
Muscle = Muscle(starting_time, time_step, muscle_SpO2, muscle_glucose, muscle_flowrate);
Liver = Liver(starting_time, time_step, liver_SpO2, liver_glucose, liver_flowrate);
Kidney = Kidney(starting_time, time_step, kidney_SpO2, kidney_glucose, kidney_flowrate);
Lung = Lung(starting_time, time_step, lung_SpO2, lung_glucose, lung_flowrate);
Brain = Brain(starting_time, time_step, brain_SpO2, brain_glucose, brain_flowrate);
Heart = Heart(starting_time, time_step, heart_SpO2, heart_glucose, heart_flowrate);

% Create graphing storage vectors
time_vector = zeros(1,simulation_time/time_step);
arterial_SpO2_vector = zeros(1,simulation_time/time_step);
arterial_glucose_vector = zeros(1,simulation_time/time_step);
arterial_insulin_vector = zeros(1,simulation_time/time_step);
venous_SpO2_vector = zeros(1,simulation_time/time_step);
venous_glucose_vector = zeros(1,simulation_time/time_step);
venous_insulin_vector = zeros(1,simulation_time/time_step);  
gut_SpO2_vector = zeros(1,simulation_time/time_step);
gut_glucose_vector = zeros(1,simulation_time/time_step);
pancreas_SpO2_vector = zeros(1,simulation_time/time_step);
pancreas_glucose_vector = zeros(1,simulation_time/time_step);
muscle_SpO2_vector = zeros(1,simulation_time/time_step);
muscle_glucose_vector = zeros(1,simulation_time/time_step);
liver_SpO2_vector = zeros(1,simulation_time/time_step);
liver_glucose_vector = zeros(1,simulation_time/time_step);
kidney_SpO2_vector = zeros(1,simulation_time/time_step);
kidney_glucose_vector = zeros(1,simulation_time/time_step);
lung_SpO2_vector = zeros(1,simulation_time/time_step);
lung_glucose_vector = zeros(1,simulation_time/time_step);
brain_SpO2_vector = zeros(1,simulation_time/time_step);
brain_glucose_vector = zeros(1,simulation_time/time_step);
heart_SpO2_vector = zeros(1,simulation_time/time_step);
heart_glucose_vector = zeros(1,simulation_time/time_step);

% Run simulation
for i = 0:time_step:simulation_time-time_step
    % calculate new gut
    Gut = calc_gut(Gut, arterial_SpO2, arterial_glucose, arterial_insulin, gut_SpO2, gut_glucose, gut_flowrate);
    % create output vectors at each time step
    time_vector((i/time_step)+1) = Gut.time;
    arterial_SpO2_vector((i/time_step)+1) = arterial_SpO2;
    arterial_glucose_vector((i/time_step)+1) = arterial_glucose;
    arterial_insulin_vector((i/time_step)+1) = arterial_insulin;
    gut_SpO2_vector((i/time_step)+1) = Gut.gut_SpO2;
    gut_glucose_vector((i/time_step)+1) = Gut.gut_glucose;
end
