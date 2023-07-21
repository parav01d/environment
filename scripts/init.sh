function checkout() {
  local folder="repository/$1"
  local repo="$2"
  local branch="$3"

  if [ -d "$folder" ]; then
    echo "$1 already exist."
  else
    git clone "$repo" "$folder"
    cd "$folder" || exist

    git checkout "$branch"

    cd "../.." || exit
  fi
}

function checkout_all() {
  checkout "backend" "git@bitbucket.org:spcfy-gmbh/b-spcfy.git" "main"
  checkout "frontend-dashboard" "git@bitbucket.org:spcfy-gmbh/f-dashboard.git" "main"
  checkout "frontend-console" "git@bitbucket.org:spcfy-gmbh/f-console.git" "master"
  checkout "service-postgres" "git@bitbucket.org:spcfy-gmbh/s-postgres.git" "main"
}

checkout_all