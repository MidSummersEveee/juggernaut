// Detector(x, y)

// used by enemies to detect the champion based on self coordinates

selfx = argument0;

if(selfx - obj_JonSnow.x <= 500)
{
	return true;
}