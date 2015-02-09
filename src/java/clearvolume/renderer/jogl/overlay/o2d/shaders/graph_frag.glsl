#version 400 core

in VertexData {
    vec4 Position;
    vec3 Normal;
    vec2 TexCoord;
} VertexIn;

uniform vec4 color = vec4(1.0, 0.0, 0.0, 1.0);
out vec4 outColor;

 
void main()
{

	float intensity = 0.5;

    outColor = vec4(intensity,intensity*0.2,intensity*0.7, 0.5);
    
}


//bvec2 toDiscard = greaterThan(fract(VertexIn.TexCoord*10.0), vec2(0.01, 0.01));
//
//    if(all(toDiscard)) {
//        discard;
//    } else {
//        outColor = vec4(0.5, 0.5, 0.5, 1.0);
//    }