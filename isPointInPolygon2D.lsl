integer isPointInPolygon2D( list vLstPolygon, vector vPosTesting ){
integer vBooInPlygn;
integer vIntCounter = [] != vLstPolygon;
vector  vPosVertexA = llList2Vector( vLstPolygon, vIntCounter );
vector  vPosVertexB;

while (vIntCounter){
vPosVertexB = vPosVertexA;
vPosVertexA = llList2Vector( vLstPolygon, ++vIntCounter );

if ((vPosVertexA.y > vPosTesting.y) ^ (vPosVertexB.y > vPosTesting.y)){
if (vPosTesting.x < (vPosVertexB.x - vPosVertexA.x) * (vPosTesting.y - vPosVertexA.y) /
                     (vPosVertexB.y - vPosVertexA.y) +  vPosVertexA.x ){
vBooInPlygn = !vBooInPlygn;
}
}
}
return vBooInPlygn;
}
