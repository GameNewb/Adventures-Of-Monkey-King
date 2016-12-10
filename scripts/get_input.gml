///get_input

right =  keyboard_check(vk_right);
left = keyboard_check(vk_left);
up =  keyboard_check_pressed(vk_up);
up_release = keyboard_check_released(vk_up);
down = keyboard_check(vk_down);

attack = keyboard_check_pressed(ord('X')); //Strike attack or jump attack
thrust_attack = keyboard_check_pressed(ord('Z')); //Thrust attack
charge_released = keyboard_check_released(ord('X'));
interact = keyboard_check_pressed(ord('C'));

// Override the controls for a gamepad
var gp_id = 0; //Represents game pad that is plugged in
var thresh = .5;

if(gamepad_is_connected(gp_id))
{
    //Override variables
    right =  gamepad_axis_value(gp_id, gp_axislh) > thresh;
    left = gamepad_axis_value(gp_id, gp_axislh) < -thresh;
    up =  gamepad_button_check_pressed(gp_id, gp_face1);
    up_release = gamepad_button_check_released(gp_id, gp_face1);
    down = gamepad_axis_value(gp_id, gp_axislv) > thresh;
    attack = gamepad_button_check_pressed(gp_id, gp_face3);
    thrust_attack = gamepad_button_check_pressed(gp_id, gp_face4); 
    interact = gamepad_button_check_pressed(gp_id, gp_face2);
}
