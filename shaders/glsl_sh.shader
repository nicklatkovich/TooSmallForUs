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

uniform sampler2D u_tTex;

void main( ) {
    vec4 tex = texture2D(u_tTex, v_vTexcoord);
    vec4 res = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    res.a = 1.0;
    res.r = min(1.0, max(0.0, (res.r - 0.5) * 0.2 + tex.r));
    res.gb = vec2(res.r, res.r);
    gl_FragColor = res;
}

