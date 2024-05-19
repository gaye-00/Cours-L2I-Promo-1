numbers=()

while true; do
  read -p "Entrez un nombre (ou tapez 'q' pour quitter) : " number
  if [[ $number == "q" ]]; then
    break
  fi
  if [[ $number =~ ^[0-9]+$ ]]; then
    if [[ $number -ge 0 ]]; then
      numbers+=($number)
    else
      echo "Veuillez entrer un nombre positif."
    fi
  else
    echo "Veuillez entrer un nombre valide."
  fi
done

echo "Les nombres positifs entrés sont : ${numbers[@]}"
