integer isPointInPolygon2D_XY( list vLstPolygonXY, float vFltTesting_X, float vFltTesting_Y ){
integer vBooInPlygnXY;
integer vIntCounterXY = ([] != vLstPolygonXY);
float   vFltVertexA_X = llList2Float( vLstPolygonXY, -2 );
float   vFltVertexA_Y = llList2Float( vLstPolygonXY, -1 );
float   vFltVertexB_X;
float   vFltVertexB_Y;

while (vIntCounterXY){
vFltVertexB_X = vFltVertexA_X;
vFltVertexB_Y = vFltVertexA_Y;
vFltVertexA_X = llList2Float( vLstPolygonXY, vIntCounterXY++ );
vFltVertexA_Y = llList2Float( vLstPolygonXY, vIntCounterXY++ );

if ((vFltVertexA_Y > vFltTesting_Y) ^ (vFltVertexB_Y > vFltTesting_Y)){
if (vFltTesting_X < (vFltVertexB_X - vFltVertexA_X) * (vFltTesting_Y - vFltVertexA_Y) /
                     (vFltVertexB_Y - vFltVertexA_Y) +  vFltVertexA_X ){
vBooInPlygnXY = !vBooInPlygnXY;
}
}
}
return vBooInPlygnXY;
}
