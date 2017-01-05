function transformed =transform(toTransform,targetFrame,height,PosEast_m,PosNorth_m,psi,phi,theta,cameraParameters)
	%TRANSFORM Transformiert das pointInFrame Objekt aus dem ursprünglichen in den targetFrame
	%% Transformiert schrittweise von Frame zu Frame bis das Ziel erreicht ist.
	%% Benötigt wird hierzu die Pose des AUVs und die Kameraparameter aus der Kalibriegung
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