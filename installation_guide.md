# PRIMAL Installation directions
## Prerequisites
- Git
- [Anaconda](`https://docs.anaconda.com/free/anaconda/install/index.html`)
- [Boost](https://www.boost.org/`)
- If using GPU:
    - cuDNN 6
    - CUDA 8
    - GCC 4.8
## Installation steps
- Run this command: `conda env create -f environment.yml` (or, if using a GPU `conda env create -f environment_gpu.yml`) This will create a new conda environment called `primal` that includes all the dependencies
- Activate the environment with this command: `conda activate primal`
- Run `cd od_mstar3` and then `python3 setup.py build_ext --inplace`, this builds the cpp_mstar library. (Note: if `python3` in the previous command does not work, try using just `python`)
- Run `cd ..` to get back in the main directory
## Installing pre-trained model
- Make sure you're in the root directory
- Create a directory called `model_primal` if it does not exist
- Download this file: `https://drive.google.com/file/d/1AtAeUwLF1Rn_X3b2FHkHi4fI5vveUHF6/view` (it will take some time)
- Extract the contents of that file to the model_primal directory
### You're all done!
## Notes:
- Training is done by the `DRLMAPF_A3C_RNN.ipynb` notebook. I do reccommend using the pre-trained model instead of retraining. Do not train unless you know what you're doing.
- To use the map creator, just run `python mapgenerator.py`
- Hotkeys for map generator:
    - o: obstacle mode
    - a: agent mode
    - g: goal mode, click an agent then click a free tile to place its goal
    - c: clear agents
    - r: reset
    - up/down arrows: change size
    - p: pause inference