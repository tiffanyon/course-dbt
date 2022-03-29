{% macro is_it_cactus(product.name) %}

	{% if name = 'Cactus' %}
	  {{ return("Yup it's a cactus") }}
	{% else %}
	  {{ return("No it's not a cactus you dummy") }}
	{% endif %}

{% endmacro %}