// initialize health
healthValue = 1000;

// whether the champion is detected by this enemy
is_detected = false;

// times of being detected
//detect_count = 0;

originX=x;
originY=y;
moveDirection=0;
isActive=0;
isPositive=1; // changeable

r1=0;
cd=true;
state_h=0; //record the attack state of hero

alarm_set(2,1)