shader_type canvas_item;

void fragment() {
	float glow_strength = sin(TIME * 5.0) * 0.5 + 0.5;
    COLOR = texture(TEXTURE, UV) * vec4(1.0, 0.0, 0.0, 1.0);
    COLOR.rgb += vec3(glow_strength);
	// Place fragment code here.
}
