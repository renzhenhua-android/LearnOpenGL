#version 330 core
out vec4 FragColor;

in vec3 ourColor;
in vec2 TexCoord;

// texture samplers
uniform sampler2D texture1;
uniform sampler2D texture2;

void main()
{
	// FragColor = mix(texture(texture1, TexCoord), texture(texture2, vec2(0.5 - TexCoord.x, 0.5-TexCoord.y)), 0.2);
	FragColor = mix(texture(texture1, TexCoord), texture(texture2, vec2(1 - TexCoord.x, TexCoord.y)), 0.5);
}