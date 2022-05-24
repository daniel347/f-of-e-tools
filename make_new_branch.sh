echo "Making new branch named: $1";

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
