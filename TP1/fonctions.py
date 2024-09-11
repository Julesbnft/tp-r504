def puissance(a, b):
    """Renvoie a élevé à la puissance b, si a et b sont des entiers."""
    if not isinstance(a, int) or not isinstance(b, int):
        raise TypeError("Only integers are allowed")
    return a ** b

