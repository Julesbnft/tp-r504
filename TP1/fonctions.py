def puissance(a, b):
    # Vérifier que a et b sont des entiers
    if not isinstance(a, int) or not isinstance(b, int):
        raise TypeError("Only integers are allowed")

    result = 1
    # Gérer les puissances négatives
    if b < 0:
        a = 1 / a
        b = -b
    
    # Calcul de a^b avec une boucle for
    for _ in range(b):
        result *= a
    
    return result
