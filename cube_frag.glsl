#version 460 core

uniform samplerCube cubeMap;

in vec3 texCoord;

out vec4 fragColor;

void main(void)
{
    //vec3 temp = (texCoord + vec3(1.f,1.f,1.f) )/2.f;
    //fragColor = vec4(0.8f, 0.f, 1.f, 0.1f);
    //fragColor = texture(cubeMap, vec3(1.f,1.f, 1.f));

    //fragColor = vec4(temp, 1.f);
    //if(texCoord.s < 0.5f)
    //{
    //    fragColor = texture(cubeMap, texCoord);
    //}
    fragColor = texture(cubeMap, texCoord);
    
}

