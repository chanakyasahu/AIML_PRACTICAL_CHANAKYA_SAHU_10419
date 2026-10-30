# Represent the classic AI Blocks World Problem and check the validity of stacking states


state = {
    "ON(B,TABLE)",
    "ON(A,TABLE)",
    "ON(C,A)",
    "HAND_EMPTY",
    "CLEAR(C)",
    "CLEAR(B)"
}

def move_C_to_table():
    if "ON(C,A)" in state and "CLEAR(C)" in state:
        # Delete list
        state.remove("ON(C,A)")
        state.remove("CLEAR(A)") if "CLEAR(A)" in state else None

        # Add list
        state.add("ON(C,TABLE)")
        state.add("CLEAR(A)")
        print("Action: Move C to Table")

def move_B_on_C():
    if "ON(B,TABLE)" in state and "CLEAR(B)" in state \
       and "CLEAR(C)" in state and "HAND_EMPTY" in state:

        # Delete list
        state.remove("ON(B,TABLE)")
        state.remove("CLEAR(C)")

        # Add list
        state.add("ON(B,C)")
        state.add("CLEAR(B)")
        print("Action: Move B on C")

def move_A_on_B():
    if "ON(A,TABLE)" in state and "CLEAR(A)" in state \
       and "CLEAR(B)" in state and "HAND_EMPTY" in state:

        # Delete list
        state.remove("ON(A,TABLE)")
        state.remove("CLEAR(B)")

        # Add list
        state.add("ON(A,B)")
        state.add("CLEAR(A)")
        print("Action: Move A on B")

print("Initial State:", state)

move_C_to_table()
move_B_on_C()
move_A_on_B()

goal = {
    "ON(C,TABLE)",
    "ON(B,C)",
    "ON(A,B)",
    "HAND_EMPTY",
    "CLEAR(A)"
}

print("\nFinal State:", state)
print("Goal Achieved:", goal.issubset(state))
