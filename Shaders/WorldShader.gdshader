shader_type spatial;
render_mode unshaded;

uniform sampler2D text : source_color, filter_nearest, repeat_enable;

void fragment() {
	vec4 texCol = texture(text, UV);
	if (texCol.a < 0.1f) discard;
	ALBEDO.rgb = texCol.rgb;
}
