pushd backend
source "$HOME/.rvm/scripts/rvm"
rvm use 2.3.3
rails s &
popd
npm run dev --prefix frontend
