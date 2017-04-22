//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 u_clWater;
uniform vec4 u_clBeach;
uniform vec4 u_clForest;
uniform vec4 u_clMount;

void main( ) {
    vec4 preres = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    vec4 res;
    if (preres.r < 0.5) {
        res = u_clWater;
    } else if (preres.r < 0.6) {
        res = u_clBeach;
    } else if (preres.r < 0.8) {
        res = u_clForest;
    } else {
        res = u_clMount;
    }
    res.a = preres.a;
    gl_FragColor = res;
}

