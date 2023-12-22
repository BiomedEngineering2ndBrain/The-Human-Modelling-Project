classdef Heart
    properties
        time
        time_step
        heart_SpO2
        heart_glucose
        heart_flowrate
    end
    methods 
        % Heart object constructor
        function obj = Heart(time, time_step, heart_SpO2, heart_glucose, heart_flowrate)
            obj.time = time;
            obj.time_step = time_step;
            obj.heart_SpO2 = heart_SpO2;
            obj.heart_glucose = heart_glucose;
            obj.heart_flowrate = heart_flowrate;
        end     
        % getters
        function time = get.time(obj)
            time = obj.time;
        end
        function time_step = get.time_step(obj)
            time_step = obj.time_step;
        end
        function heart_SpO2 = get.heart_SpO2(obj)
            heart_SpO2 = obj.heart_SpO2;
        end
        function heart_glucose = get.heart_glucose(obj)
            heart_glucose = obj.heart_glucose;
        end
        function heart_flowrate = get.heart_flowrate(obj)
            heart_flowrate = obj.heart_flowrate;
        end
        % setters
        function obj = set.time(obj, time)
            obj.time = time;
        end
        function obj = set.time_step(obj, time_step)
            obj.time_step = time_step;
        end
        function obj = set.heart_SpO2(obj, heart_SpO2)
            obj.heart_SpO2 = heart_SpO2;
        end
        function obj = set.heart_glucose(obj, heart_glucose)
            obj.heart_glucose = heart_glucose;
        end
        function obj = set.heart_flowrate(obj, heart_flowrate)
            obj.heart_flowrate = heart_flowrate;
        end
    end
end
