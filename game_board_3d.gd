extends StaticBody3D

@onready var mesh_instance: MeshInstance3D = %MeshInstance3D
@onready var collision_shape: CollisionShape3D = %CollisionShape3D



func _ready() -> void:
	# Make sure our collision shape has the same shape
	var mesh := mesh_instance.mesh
	if mesh:
		collision_shape.shape = mesh.create_trimesh_shape()
	
