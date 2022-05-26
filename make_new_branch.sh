if [ $# -ne 1 ] 
then
	echo "Makes a new branch in the main respositiory and the sail-core subrepository"
	echo "Usage: make_new_branch.sh <branch_name>"
fi

echo "Making new branch in f-of-e-tools and sail-core modules, with branch name $1";

# First branch and checkout the sail-core submodule fork
cd verilog/hardware/processor/sail-core;
git branch $1;
git checkout $1;

# Now branch and checkout the main fork
cd ../../../../
git branch $1;
git checkout $1;

# Now set this branch of the main fork to use the submodule branch
git config -f .gitmodules submodule.Sail-RV32I-common.branch $1
git submodule sync

# Notes:
# - You will need to git push --set-upstream origin <branch_name> for both sail-core and f-of-e-tools 
# for the first time you push
#  - Commit to either as normal, each branch of f-of-e-tools uses the sail-core branch of the same name
#  - If two people are working on the same branch, either manually pull from sail-core as well as f-of-e-tools 
# or use git submodule update --remote --recursive to update sail-core (and other subrepositories)
