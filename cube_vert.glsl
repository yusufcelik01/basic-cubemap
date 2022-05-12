#version 460 core

uniform mat4 modelingMatrix;
uniform mat4 viewingMatrix;
uniform mat4 projectionMatrix;
uniform vec3 eyePos;

layout(location=0) in vec3 inVertex;

out vec3 texCoord;

void main(void)
{
    texCoord = inVertex;
    //gl_Position = projectionMatrix * modelingMatrix * vec4(inVertex, 1);
    //gl_Position = projectionMatrix * modelingMatrix * viewingMatrix * vec4(inVertex, 1);

    //gl_Position = projectionMatrix * viewingMatrix * modelingMatrix * vec4(inVertex, 1.f);

    //gl_Position = projectionMatrix * viewingMatrix * vec4(inVertex, 1);

    gl_Position = projectionMatrix * vec4((viewingMatrix * vec4(inVertex, 0.f)).xyz, 1.0f);
}

