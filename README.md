## 注意！該專案已經歸檔，並且不再維護，現在開始請使用新啟動器：[AutoLLC](https://github.com/notxart/AutoLLC)
## Notice! This project has been archived and is no longer maintained. Please use the new launcher now: [AutoLLC](https://github.com/notxart/AutoLLC)

# AutoLLC-Hant

## 簡介 / Abstract

一款**單命令式安裝腳本**，用於簡化**安裝邊獄巴士繁體中文語言包**時所需的複雜步驟，並且**現在也可以作為遊戲啟動器使用**！

A **single-command installation script** that simplifies the complex steps required to **install the Limbus Company Traditional Chinese language pack**. Additionally, it now **supports being used as a game launcher**!

## 使用方法

1. 登入Steam，並確保已在Steam中下載[Limbus Company](https://store.steampowered.com/app/1973530/Limbus_Company/)。\
   ![Steam](https://github.com/user-attachments/assets/bd1d5a5e-8080-497d-a509-a04a90d340d0)
2. 開啟 `PowerShell`（**請不要使用 CMD 或 具有管理員權限的 PowerShell**）。如果您不知道怎麼做，請右鍵點擊 Windows 開始功能表，然後選擇 `PowerShell` 或 `終端機`（`Terminal`）。\
   ![PowerShell](https://github.com/user-attachments/assets/8127f94d-ce97-427f-8f39-8ccd18536e24)
3. 複製以下指令，並於 `PowerShell` 中貼上，然後按下 `Enter` 鍵，安裝腳本將自動運行。

     ```PowerShell
     irm https://raw.githubusercontent.com/notxart/AutoLLC-Hant/refs/heads/main/limbus-hant.ps1 | iex
     ```

     ![Terminal](https://github.com/user-attachments/assets/31e6a25d-67f3-4fea-b855-ab9b3bc00621)
4. 若出現類似**NuGet provider is required to continue**的資訊，請輸入`y`，然後按下 `Enter` 鍵，繼續完成安裝腳本。\
   ![NuGet](https://github.com/user-attachments/assets/97adbd0b-8dbf-4c66-bcb5-1b130698d445)
5. 在漢化補丁安裝完成後，會彈出以下**BepInEx小黑框**，請耐心等待其完成作業。\
   ![BepInEx](https://github.com/user-attachments/assets/896556ff-b53c-4e07-bac8-1e2064025df4)
6. 在遊戲介面彈出後，即可開始遊戲，**在遊玩時請注意不要關閉BepInEx小黑框**，遊戲愉快！\
   ![Game](https://github.com/user-attachments/assets/211f39eb-9a89-4133-ae83-4533d7ef7147)

## 免責聲明

**重要提醒**：在使用本腳本前，請仔細閱讀以下免責聲明。通過下載、安裝或使用本腳本，即表示您已知悉並同意以下所有條款：

1. **本腳本僅用於安裝「邊獄巴士」（Limbus Company）的繁體中文語言包插件**，不會干涉或參與遊戲的運行，亦不會破壞遊戲完整性，因此正常使用下，不應被認定為非法外掛程式，亦不構成封號理由。
2. **本腳本屬於個人開發項目**，與遊戲開發商 Project Moon 無任何關聯。一切遊戲相關內容之最終解釋權僅由開發商 Project Moon 持有，與本腳本作者無關。
3. **使用本腳本的風險由使用者自行承擔**。本腳本作者對於因使用本腳本而可能產生的任何直接或間接損失不承擔任何責任，包括但不限於遊戲帳號被封禁、遊戲性能問題或其他技術故障。
4. **本腳本所有功能均「按現狀」提供**，不保證其適用性、完整性、準確性或可靠性。使用者應自行確認其是否符合需求，並確保安裝過程嚴格遵守使用說明。
5. **使用者應自行備份相關數據及設置**，以防因使用本腳本而引發的潛在問題。

如有任何疑問或建議，請聯繫開發者。感謝您的理解與配合。
