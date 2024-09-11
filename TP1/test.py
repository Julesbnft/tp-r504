import pytest
import fonctions as f

def test_1():
    assert f.puissance(2, 3) == 8
    assert f.puissance(2, 2) == 4

def test_2():
    # Tests avec des cas limites
    assert f.puissance(0, 0) == 1  # Cas limite
    assert f.puissance(0, 3) == 0
    assert f.puissance(2, -3) == 0.125  # Cas limite
    assert f.puissance(-2, 3) == -8  # Cas limite
    assert f.puissance(-2, 4) == 16  # Cas limite avec une puissance paire
    assert f.puissance(2, 0) == 1  # Puissance zéro
    assert f.puissance(1, 1000) == 1  # Grande puissance
    assert f.puissance(2, 1000) == 2**1000  # Grande puissance avec grande base

