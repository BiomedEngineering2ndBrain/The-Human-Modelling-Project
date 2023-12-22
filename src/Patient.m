classdef Patient
    properties
        sex
        weight
        age
        height
    end
    methods 
        % Patient object constructor
        function obj = Patient(sex, weight, age, height)
            obj.sex = sex;
            obj.weight = weight;
            obj.age = age;
            obj.height = height;
        end     
        % getters
        function sex = get.sex(obj)
            sex = obj.sex;
        end
        function weight = get.weight(obj)
            weight = obj.weight;
        end
        function age = get.age(obj)
            age = obj.age;
        end
        function height = get.height(obj)
            height = obj.height;
        end
        % setters
        function obj = set.sex(obj, sex)
            obj.sex = sex;
        end
        function obj = set.weight(obj, weight)
            obj.weight = weight;
        end
        function obj = set.age(obj, age)
            obj.age = age;
        end
        function obj = set.height(obj, height)
            obj.height = height;
        end
    end
end
