if [ -z "$1" ]; then
  rosbag record --tcpnodelay \
    /panda_dual/dual_arm_switching_controller/contact_wrench \
    /panda_dual/dual_arm_switching_controller/controller_params \
    /panda_dual/dual_arm_switching_controller/events \
    /panda_dual/dual_arm_switching_controller/goal_distance \
    /panda_dual/dual_arm_switching_controller/goals \
    /panda_dual/dual_arm_switching_controller/info \
    /panda_dual/dual_arm_switching_controller/obstacles \
    /panda_dual/dual_arm_switching_controller/position \
    /panda_dual/panda_left_state_controller/franka_states \
    /panda_dual/panda_right_state_controller/franka_states;
else
  rosbag record --tcpnodelay -o $1 \
    /panda_dual/dual_arm_switching_controller/contact_wrench \
    /panda_dual/dual_arm_switching_controller/controller_params \
    /panda_dual/dual_arm_switching_controller/events \
    /panda_dual/dual_arm_switching_controller/goal_distance \
    /panda_dual/dual_arm_switching_controller/goals \
    /panda_dual/dual_arm_switching_controller/info \
    /panda_dual/dual_arm_switching_controller/obstacles \
    /panda_dual/dual_arm_switching_controller/position \
    /panda_dual/panda_left_state_controller/franka_states \
    /panda_dual/panda_right_state_controller/franka_states;
fi

