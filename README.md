# 🚀 Auto Installer - Apps para Linux

![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Bash](https://img.shields.io/badge/Shell_Script-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![Debian](https://img.shields.io/badge/Debian-A81D33?style=for-the-badge&logo=debian&logoColor=white)
![Flatpak](https://img.shields.io/badge/Flatpak-4A90E2?style=for-the-badge&logo=flatpak&logoColor=white)
![VS Code](https://img.shields.io/badge/VS%20Code-007ACC?style=for-the-badge&logo=visual-studio-code&logoColor=white)
![IntelliJ IDEA](https://img.shields.io/badge/IntelliJ_IDEA-000000.svg?style=for-the-badge&logo=intellij-idea&logoColor=white)
![Apache NetBeans](https://img.shields.io/badge/Apache%20NetBeans-1B6AC6?style=for-the-badge&logo=apache-netbeans&logoColor=white)
![Postman](https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=postman&logoColor=white)
![ProtonVPN](https://img.shields.io/badge/ProtonVPN-6D4AFF?style=for-the-badge&logo=protonvpn&logoColor=white)

Um script em Bash simples e automatizado para instalar rapidamente minhas ferramentas essenciais de desenvolvimento e utilitários em sistemas Linux baseados em Debian/Ubuntu.

> **Nota:** Este script foi desenvolvido com foco em distribuições baseadas em **Ubuntu / Debian** e utiliza `apt`, `snap` e `flatpak` para realizar as instalações.

---

## 💻 Aplicativos Instalados

O script realiza a instalação dos seguintes softwares:

- **Desenvolvimento & IDEs:**
  - [Visual Studio Code](https://code.visualstudio.com/) (Snap)
  - [IntelliJ IDEA](https://www.jetbrains.com/idea/) (Snap)
  - [Apache NetBeans](https://netbeans.apache.org/) (Snap)
  - [Postman](https://www.postman.com/) (Snap)
- **Banco de Dados:**
  - [Antares SQL](https://antares-sql.app/) (Flatpak)
- **Produtividade & Utilitários:**
  - [ProtonVPN](https://protonvpn.com/) (Debian Repo + APT)
  - [Gnome Extension Manager](https://extensionmanager.com/) (APT)

---

## 🛠️ Como Usar

### Pré-requisitos
Apenas certifique-se de estar usando uma distribuição Linux baseada em Debian/Ubuntu e que possui privilégios de super usuário (`sudo`).

### Passo a Passo

1. **Clone o repositório** (ou baixe o arquivo `apps.sh`):
   ```bash
   git clone https://github.com/SEU_USUARIO/install-apps-in-linux.git
   ```
2. **Abra a pasta criada**
    ```bash
    cd install-apps-in-linux
    ```
4. **Conceda permissões de execução do arquivo**
    ```bash
     chmod +x install-apps-in-linux
     ```
5. **Execute o arquivo**
    ``` bash
    ./apps.sh
    ``` 
