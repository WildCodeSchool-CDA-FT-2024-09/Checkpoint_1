class Arr {
  // Value est un tableau de string
  value: string[] = [];

  push(el: string): number {
    const array = new Array(this.value.length + 1);

    for (let i = 0; i < this.value.length; i++) {
      array[i] = this.value[i];
    }
    array[this.value.length] = el;
    this.value = array;
    return this.value.length;
  }

  pop(): string | undefined {
    // La méthode pop() supprime le dernier élément d'un tableau et retourne cet élément.
    // Si le tableau est vide, la méthode pop() retourne undefined et le tableau n'est pas modifié.

    // Si le tableau est vide, on retourne undefined
    if (this.value.length === 0) {
      return undefined;
    }

    // On récupère le dernier élément du tableau
    const lastElement = this.value[this.value.length - 1];

    // On crée un nouveau tableau de taille - 1
    const array = new Array(this.value.length - 1);

    // On copie les éléments du tableau actuel dans le nouveau tableau
    for (let i = 0; i < array.length; i++) {
      array[i] = this.value[i];
    }

    // On remplace le tableau actuel par le nouveau tableau
    this.value = array;
    return lastElement;
  }

  shift(): string | undefined {
    // La méthode shift() permet de supprimer le premier élément d'un tableau et de renvoyer cet élément
    // Si le tableau est vide, la méthode shift() retourne undefined et le tableau n'est pas modifié.

    // Si le tableau est vide, on retourne undefined
    if (this.value.length === 0) {
      return undefined;
    }

    // Sauvegarde du premier élément
    const firstElement = this.value[0];

    // Créer un tableau plus petit (this.value.length - 1)
    const array = new Array(this.value.length - 1);

    // Copier les éléments sauf le premier
    for (let i = 1; i < this.value.length; i++) {
      array[i - 1] = this.value[i];
    }

    // Mettre à jour this.value avec le nouveau tableau
    this.value = array;

    // Retourner le premier élément retiré
    return firstElement;
  }
}

export default Arr;
