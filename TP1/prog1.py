# Affiche "Hello, World!" au lancement
print("Hello, World!")

import fonctions as f

# Boucle infinie
while True:
    try:
        # Demander à l'utilisateur de saisir deux nombres
        a = float(input("Entrez le premier nombre (ou CTRL-C pour quitter) : "))
        b = float(input("Entrez le second nombre : "))

        # Convertir les nombres en entiers pour tester la fonction
        a_int = int(a)
        b_int = int(b)

        # Calculer et afficher a élevé à la puissance b
        resultat = f.puissance(a_int, b_int)
        print(f"{a_int} élevé à la puissance {b_int} est {resultat}")

    except TypeError as e:
        print(f"Erreur : {e}")
    except KeyboardInterrupt:
        print("\nProgramme interrompu. Au revoir !")
        break
