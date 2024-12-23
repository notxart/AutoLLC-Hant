# AutoLLC-Hant

## 簡介 / Abstract

一款**單命令式安裝腳本**，用於簡化遊戲**邊獄巴士**在**安裝繁體中文語言包**所需的複雜步驟。

A **single command installation script** to simplify the complex steps required when **installing the Traditional Chinese language pack** for **Limbus Company** games.

## 使用方法

請根據需求**選擇以下方式之一**進行安裝

### 方法1：適用於Steam安裝於默認位置（**C:\Program Files (x86)\Steam**）的用戶

1. 開啟 `PowerShell`（**請不要使用 CMD**）。為此，請右鍵點擊 Windows 開始功能表，然後選擇 `PowerShell` 或 `終端`。
2. 複製並貼上下面的程式碼，然後按下 `Enter` 鍵。

     ```PowerShell
     irm https://raw.githubusercontent.com/notxart/AutoLLC-Hant/refs/heads/main/limbus-hant.ps1 | iex
     ```

3. 安裝腳本將自動運行。

### 方法2：適用於Steam安裝於自定義位置的用戶

1. [前往安裝腳本](https://github.com/notxart/AutoLLC-Hant/blob/main/limbus-hant.ps1)，然後選擇右上角的下載按鍵下載該腳本。
2. 雙擊打開下載的腳本，並找到開頭第四行的 `$STEAM_PATH = "C:\Program Files (x86)\Steam"` ，然後將 `C:\Program Files (x86)\Steam` 的部分（**請務必保留左右兩個 `"`**）更改為您的**Steam啟動器安裝路徑**，然後按下 `Ctrl + S` 存檔。
3. 在 `下載` 或 `Downloads` 資料夾中開啟 `PowerShell`（**請不要使用 CMD**）。為此，請在資料夾中的 `任意空白位置` 按住 `Shift` 鍵並同時點擊 `滑鼠右鍵` （即 `Shift + 滑鼠右鍵`），然後按下 `t` 鍵。
4. 複製並貼上下面的程式碼，然後按下 `Enter` 鍵。該指令用於臨時更改更改此PowerShell的執行策略，以允許執行所有腳本和命令。

   ```PowerShell
   Set-ExecutionPolicy -Scope Process Unrestricted
   ```

5. 複製並貼上下面的程式碼，然後按下 `Enter` 鍵。該指令用於執行繁體中文語言包的安裝腳本。

    ```PowerShell
   .\limbus-hant.ps1
   ```

   #### 這裡會出現安全警告(Security warning)，輸入 `r` ，然後按下 `Enter` 鍵即可

6. 安裝腳本將會自動運行。
