#version 330 core

layout(location = 0) in vec3 position;
layout(location = 1) in vec3 normal;
layout(location = 2) in vec2 texCoords;

uniform mat4 matrixView;
uniform mat4 matrixModel;
uniform mat4 projectionMatrix;

void main(void)
{
    gl_Position = projectionMatrix*matrixView*matrixModel*vec4(position, 1.0);
}

