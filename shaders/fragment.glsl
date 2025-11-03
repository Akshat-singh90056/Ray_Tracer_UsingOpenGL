#version 330 core
out vec4 FragColor;
in vec2 fPos;

uniform vec2 WINDOW;
uniform vec2 center;
uniform float radius;

vec2 cordinateToNDC(vec2 cordinates){
    float x = (cordinates.x / WINDOW.x)* 2.0 -1.0;
    float y = 1.0 - (cordinates.y / WINDOW.y)* 2.0;
    return vec2(x,y);
}

float normaliseOne(float r){
    return (r/WINDOW.y)*2.0;
}

void main() {

    


        FragColor = vec4( (fPos.x+1.0 ) / 2.0 ,  (1.0 - fPos.y) / 2.0, 0.0, 1.0);

}
