# TokenFluent - Usage Guide 🚀

This guide will help you install everything you need and use the **TokenFluent** repository in a simple way, even if you've never done something like this before! 😄

---

## 🔧 Step 1: Check Node.js and npm

First, we need to make sure you have **Node.js** and **npm** installed and updated.

### To check, open the terminal or command prompt and type:

```bash
node -v
npm -v
```

If version numbers appear, you're good to go!

### If they are NOT installed, follow these instructions:
- **Windows:** Download Node.js here 👉 [Node.js](https://nodejs.org) (LTS version) and follow the installation steps.
- **macOS:** Use [Homebrew](https://brew.sh/) in the terminal:
  ```bash
  brew install node
  ```
- **Linux (Debian/Ubuntu):** In the terminal:
  ```bash
  sudo apt update
  sudo apt install -y nodejs npm
  ```
---

## 📥 Step 2: Download the Repository from GitHub

In the terminal or command prompt, type:

```bash
git clone https://github.com/ira300/TokenFluent.git
cd TokenFluent
```

This will download the project and navigate to the correct folder!

---

## 🔑 Step 3: Configure Environment Variables

We need to adjust a few settings before running the project:

1. Copy the example file:
   ```bash
   cp .env.example .env
   ```

2. Open the `.env` file to edit:
   ```bash
   nano .env
   ```

   - Put **your private key** in the indicated field. Save and exit the editor.

3. Open the `hardhat.config.js` file to edit:
   ```bash
   nano hardhat.config.js
   ```

   - Enter **your private key** in the **private key** field. Save and exit.

---

## 🛠️ Step 4: Run the Setup Script

In the terminal, inside the **TokenFluent** folder, type:

```bash
./create.sh
```

This will set everything up! After that, you can create your contract. 🚀

---

## 🔍 Checking Your Contract

After creating your contract, you can view it on the following site:
👉 [BlockScout](https://blockscout.dev.gblend.xyz/)

---

## 💸 Make Sure You Have Balance in Your Wallet

Make sure you have balance in your wallet! Get free tokens here:
👉 [Faucet GBlend](https://faucet.dev.gblend.xyz/)

---

If you need help or have any issues, feel free to ask! 😊

