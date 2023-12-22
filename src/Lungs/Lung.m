classdef Lung
    properties
        time
        time_step
        lung_SpO2
        lung_glucose
        lung_flowrate
    end
    methods 
        % Lung object constructor
        function obj = Lung(time, time_step, lung_SpO2, lung_glucose, lung_flowrate)
            obj.time = time;
            obj.time_step = time_step;
            obj.lung_SpO2 = lung_SpO2;
            obj.lung_glucose = lung_glucose;
            obj.lung_flowrate = lung_flowrate;
        end     
        % getters
        function time = get.time(obj)
            time = obj.time;
        end
        function time_step = get.time_step(obj)
            time_step = obj.time_step;
        end
        function lung_SpO2 = get.lung_SpO2(obj)
            lung_SpO2 = obj.lung_SpO2;
        end
        function lung_glucose = get.lung_glucose(obj)
            lung_glucose = obj.lung_glucose;
        end
        function lung_flowrate = get.lung_flowrate(obj)
            lung_flowrate = obj.lung_flowrate;
        end
        % setters
        function obj = set.time(obj, time)
            obj.time = time;
        end
        function obj = set.time_step(obj, time_step)
            obj.time_step = time_step;
        end
        function obj = set.lung_SpO2(obj, lung_SpO2)
            obj.lung_SpO2 = lung_SpO2;
        end
        function obj = set.lung_glucose(obj, lung_glucose)
            obj.lung_glucose = lung_glucose;
        end
        function obj = set.lung_flowrate(obj, lung_flowrate)
            obj.lung_flowrate = lung_flowrate;
        end
    end
end
