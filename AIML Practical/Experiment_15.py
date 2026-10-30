# Apply the Resolution Principle and Unification to prove a theorem in First Order Logic


def unify(x, y):
    if x == y:
        return
    if x.islower():
        return {x, y}
    if y.islower():
        return {y, x}

    return None


print(unify('x', 'Ram'))
print(unify('A', 'A'))
print(unify('x', 'y'))