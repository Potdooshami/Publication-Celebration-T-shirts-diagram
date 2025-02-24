classdef plg2
    %UNTITLED3 이 클래스의 요약 설명 위치
    %   자세한 설명 위치

    properties
        xShape
        yShape
        xCntr (1,1) double
        yCntr (1,1) double
    end
    properties (Dependent)
        polyO
        polyT 
    end

    methods
        function obj = plg2(xShape,yShape,xCntr,yCntr)
            obj.xShape = xShape;
            obj.yShape = yShape;
            obj.xCntr = xCntr;
            obj.yCntr = yCntr;
        end
        function v = get.polyO(obj)
            v = polyshape(obj.xShape,obj.yShape)
        end
        function v = get.polyT(obj)
            v = translate(polyshape(obj.xShape,obj.yShape),[obj.xCntr obj.yCntr])
        end
        function p = plot(obj)
            p = plot(obj.polyT);
        end        
    end
end