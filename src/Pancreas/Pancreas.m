classdef Pancreas
    properties
        time
        time_step
        pancreas_SpO2
        pancreas_glucose
        pancreas_flowrate
    end
    methods 
        % Pancreas object constructor
        function obj = Pancreas(time, time_step, pancreas_SpO2, pancreas_glucose, pancreas_flowrate)
            obj.time = time;
            obj.time_step = time_step;
            obj.pancreas_SpO2 = pancreas_SpO2;
            obj.pancreas_glucose = pancreas_glucose;
            obj.pancreas_flowrate = pancreas_flowrate;
        end     
        % getters
        function time = get.time(obj)
            time = obj.time;
        end
        function time_step = get.time_step(obj)
            time_step = obj.time_step;
        end
        function pancreas_SpO2 = get.pancreas_SpO2(obj)
            pancreas_SpO2 = obj.pancreas_SpO2;
        end
        function pancreas_glucose = get.pancreas_glucose(obj)
            pancreas_glucose = obj.pancreas_glucose;
        end
        function pancreas_flowrate = get.pancreas_flowrate(obj)
            pancreas_flowrate = obj.pancreas_flowrate;
        end
        % setters
        function obj = set.time(obj, time)
            obj.time = time;
        end
        function obj = set.time_step(obj, time_step)
            obj.time_step = time_step;
        end
        function obj = set.pancreas_SpO2(obj, pancreas_SpO2)
            obj.pancreas_SpO2 = pancreas_SpO2;
        end
        function obj = set.pancreas_glucose(obj, pancreas_glucose)
            obj.pancreas_glucose = pancreas_glucose;
        end
        function obj = set.pancreas_flowrate(obj, pancreas_flowrate)
            obj.pancreas_flowrate = pancreas_flowrate;
        end
    end
end
