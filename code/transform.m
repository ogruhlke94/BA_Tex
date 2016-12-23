function transformed =transform(toTransform,targetFrame,height,PosEast_m,PosNorth_m,psi,phi,theta,cameraParameters)
%TRANSFORM Summary of this function goes here
%   Detailed explanation goes here
    while(toTransform.frame~=targetFrame)
        switch toTransform.frame
            case frames.image
                toTransform = pic2cam(toTransform,height,phi,theta,cameraParameters);
            case frames.cam
                toTransform = cam2body(toTransform);
            case frames.body
                toTransform = body2world(toTransform,psi,PosEast_m,PosNorth_m,height);
            case frames.world
                toTransform = world2vrml(toTransform);
        end
    end
    transformed = toTransform;
end