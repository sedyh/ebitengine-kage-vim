## <img align="left" width="100px" src="https://user-images.githubusercontent.com/19890545/179967638-6b0e4e7d-7f8c-412a-b87d-47ba8e694477.png" alt="ebitengine-kage-support" /> Ebitengine Kage support for Vim

Basic syntax and snippet support for the Ebitengine Kage shading language. 

<br>

Ebitengine adopts an original shading language 'Kage'. This has a compatible syntax with Go, but the details are different. Kage has high portability. Ebitengine uses graphics libraries like OpenGL or Metal and this depends on environments, but Kage is compiled on the fly so that this works equally everywhere.

### Installation

[![](https://img.shields.io/badge/get%20it%20from-555555?style=for-the-badge&logo=vim&logoColor=60b371)![](https://img.shields.io/badge/vim.org-60b371?style=for-the-badge)](https://www.vim.org/scripts/script.php?script_id=6021)

<details><summary>Manual installation</summary><br>
  
  Make sure you are using `vim > 8.0.2` with `python3` support. Building the latest version of vim:

  ```
  git clone https://github.com/vim/vim.git
  cd vim/src/
  ./configure --enable-python3interp
  make
  sudo make install
  ```

  Install `vim-plug` plugin manager:

  ```
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```

  Install `vim-easycomplete` and `ultisnips` to support hints and snippets:

  ```vim
  Plug 'jayli/vim-easycomplete'
  Plug 'SirVer/ultisnips'
  ```

  Install `sedyh/ebitengine-kage-vim` to enable syntax highlighting and snippet support for Kage:

  ```vim
  Plug 'sedyh/ebitengine-kage-vim'
  ```
  
</details>

### Other editors

[![](https://img.shields.io/badge/source-555555?style=for-the-badge&logo=sublimetext&logoColor=ba9759)](https://github.com/sedyh/ebitengine-kage-sublime)[![](https://img.shields.io/badge/download-ba9759?style=for-the-badge)](https://packagecontrol.io)<br>
[![](https://img.shields.io/badge/source-555555?style=for-the-badge&logo=visualstudiocode&logoColor=72a9d4)](https://github.com/sedyh/ebitengine-kage-vscode)[![](https://img.shields.io/badge/download-72a9d4?style=for-the-badge)](https://marketplace.visualstudio.com/items?itemName=sedyh.ebitengine-kage)


### Features

- [Basic syntax highlighting](#basic-syntax-highlighting)
- [Quick start](#quick-start)
- [Short documentation](#short-documentation)
- [List of all built-in functions](#list-of-all-built-in-functions)

### Basic syntax highlighting

<a href="#features"><img src="https://user-images.githubusercontent.com/19890545/150034365-6561ab71-5cb4-466f-996c-ae4204ef7c12.png" alt="back" title="back" width="16px"/></a> This plugin provides basic Kage language support for Ebitengine. It includes keywords, types, literals and snippets.

![feature-syntax](https://user-images.githubusercontent.com/19890545/179100567-bcd809b1-d9b1-48e3-830a-55259feb463a.png)

### Quick start

<a href="#features"><img src="https://user-images.githubusercontent.com/19890545/150034365-6561ab71-5cb4-466f-996c-ae4204ef7c12.png" alt="back" title="back" width="16px"/></a> To quickly start writing a shader, you can type "fragment" or "package".

![feature-quickstart](https://user-images.githubusercontent.com/19890545/179321074-51b8bdf4-07d6-4ab9-b14d-8c201564becc.png)

### Short documentation

<a href="#features"><img src="https://user-images.githubusercontent.com/19890545/150034365-6561ab71-5cb4-466f-996c-ae4204ef7c12.png" alt="back" title="back" width="16px"/></a> The plugin provides a short help for each feature in Kage.

![feature-description](https://user-images.githubusercontent.com/19890545/179321166-23841d30-8e30-4784-9f53-d5067cf57463.png)

### List of all built-in functions

<a href="#features"><img src="https://user-images.githubusercontent.com/19890545/150034365-6561ab71-5cb4-466f-996c-ae4204ef7c12.png" alt="back" title="back" width="16px"/></a> You can see a list of all built-in functions by typing "kage".

![feature-help](https://user-images.githubusercontent.com/19890545/179321661-059ae3ca-f69e-4640-a213-ec3287b801b4.png)

## Known Issues

The plugin will highlight complex numbers despite the fact that, at the moment, Kage does not support them.

There are some problems with displaying scientific notation for floating point numbers (two numbers with the -+ operator without spaces will be highlighted as one).
