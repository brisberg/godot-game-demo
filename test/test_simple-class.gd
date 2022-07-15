extends GutTest


var SimpleClass = load('res://simple-class.gd')
var obj: SimpleClass = null

func before_each():
	gut.p("ran setup", 2)
	obj = SimpleClass.new()
	
func after_each():
	obj.free()

func test_assert_member_equals_2():
	assert_eq(obj.getVariable(), 2)

# TODO Run these tests on windows, WSL, or Git Actions
