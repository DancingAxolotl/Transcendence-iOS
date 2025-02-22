//
//  Strings.swift
//  breadwallet
//
//  Created by Adrian Corscadden on 2016-12-14.
//  Copyright © 2016 breadwallet LLC. All rights reserved.
//

import Foundation

enum S {

    enum Symbols {
        static let bits = "ƀ"
        static let sat = "SAT"
        static var btc: String {
            if  #available(iOS 10, *) {
                return "Ŧ"
            } else {
                return "Ŧ"
            }
        }
        static let narrowSpace = "\u{2009}"
        static let lock = "\u{1F512}"
        static let redX = "\u{274C}"
        static func currencyButtonTitle(maxDigits: Int) -> String {
            switch maxDigits {
            case 0:
                return "Satoshi (\(S.Symbols.sat))"
            case 2:
                return "Bits\(S.Symbols.narrowSpace)(\(S.Symbols.bits))"
            case 5:
                return "\(S.Symbols.narrowSpace)(m\(S.Symbols.btc))"
            case 8:
                return "TELOS\(S.Symbols.narrowSpace)(\(S.Symbols.btc))"
            default:
                return "\(S.Symbols.bits)"
            }
        }
    }

    enum Button {
        static let ok = NSLocalizedString("Button.ok", value:"OK", comment: "OK button label")
        static let cancel = NSLocalizedString("Button.cancel", value:"Cancel", comment: "Cancel button label")
        static let settings = NSLocalizedString("Button.settings", value:"Settings", comment: "Settings button label")
        static let submit = NSLocalizedString("Button.submit", value:"Submit", comment: "Settings button label")
        static let ignore = NSLocalizedString("Button.ignore", value:"Ignore", comment: "Ignore button label")
        static let yes = NSLocalizedString("Button.yes", value: "Yes", comment: "Yes button")
        static let no = NSLocalizedString("Button.no", value: "No", comment: "No button")
        static let send = NSLocalizedString("Button.send", value: "send", comment: "send button")
        static let receive = NSLocalizedString("Button.receive", value: "receive", comment: "receive button")
        static let menu = NSLocalizedString("Button.menu", value: "menu", comment: "menu button")
    }

    enum Alert {
        static let warning = NSLocalizedString("Alert.warning", value: "Warning", comment: "Warning alert title")
        static let error = NSLocalizedString("Alert.error", value: "Error", comment: "Error alert title")
        static let noInternet = NSLocalizedString("Alert.noInternet", value: "No internet connection found. Check your connection and try again.", comment: "No internet alert message")
    }

    enum Scanner {
        static let flashButtonLabel = NSLocalizedString("Scanner.flashButtonLabel", value:"Camera Flash", comment: "Scan bitcoin address camera flash toggle")
    }

    enum Send {
        static let title = NSLocalizedString("Send.title", value:"Send", comment: "Send modal title")
        static let toLabel = NSLocalizedString("Send.toLabel", value:"To", comment: "Send money to label")
        static let amountLabel = NSLocalizedString("Send.amountLabel", value:"Amount", comment: "Send money amount label")
        static let descriptionLabel = NSLocalizedString("Send.descriptionLabel", value:"Note", comment: "Description for sending money label")
        static let sendLabel = NSLocalizedString("Send.sendLabel", value:"Send", comment: "Send button label")
        static let pasteLabel = NSLocalizedString("Send.pasteLabel", value:"Paste", comment: "Paste button label")
        static let scanLabel = NSLocalizedString("Send.scanLabel", value:"Scan", comment: "Scan button label")
        static let invalidAddressTitle = NSLocalizedString("Send.invalidAddressTitle", value:"Invalid Address", comment: "Invalid address alert title")
        static let invalidAddressMessage = NSLocalizedString("Send.invalidAddressMessage", value:"The destination address is not a valid bitcoin address.", comment: "Invalid address alert message")
        static let invalidAddressOnPasteboard = NSLocalizedString("Send.invalidAddressOnPasteboard", value: "Pasteboard does not contain a valid bitcoin address.", comment: "Invalid address on pasteboard message")
        static let emptyPasteboard = NSLocalizedString("Send.emptyPasteboard", value: "Pasteboard is empty", comment: "Empty pasteboard error message")
        static let cameraUnavailableTitle = NSLocalizedString("Send.cameraUnavailableTitle", value:"Hodl is not allowed to access the camera", comment: "Camera not allowed alert title")
        static let cameraUnavailableMessage = NSLocalizedString("Send.cameraunavailableMessage", value:"Go to Settings to allow camera access.", comment: "Camera not allowed message")
        static let feeLimitMessage = NSLocalizedString("Send.feeLimitMessage", value: "Fee is too high. Maximum fee is 1200 sat/byte.", comment: "Custom fee limit alert message")
        static let balance = NSLocalizedString("Send.balance", value:"Balance: %1$@", comment: "Balance: $4.00")
        static let fee = NSLocalizedString("Send.fee", value:"Network Fee: %1$@", comment: "Network Fee: $0.01")
        static let containsAddress = NSLocalizedString("Send.containsAddress", value: "The destination is your own address. You cannot send to yourself.", comment: "Warning when sending to self.")
        enum UsedAddress {
            static let title = NSLocalizedString("Send.UsedAddress.title", value: "Address Already Used", comment: "Adress already used alert title")
            static let firstLine = NSLocalizedString("Send.UsedAddress.firstLine", value: "Bitcoin addresses are intended for single use only.", comment: "Adress already used alert message - first part")
            static let secondLine = NSLocalizedString("Send.UsedAddress.secondLIne", value: "Re-use reduces privacy for both you and the recipient and can result in loss if the recipient doesn't directly control the address.", comment: "Adress already used alert message - second part")
        }
        static let identityNotCertified = NSLocalizedString("Send.identityNotCertified", value: "Payee identity isn't certified.", comment: "Payee identity not certified alert title.")
        static let createTransactionError = NSLocalizedString("Send.creatTransactionError", value: "Could not create transaction.", comment: "Could not create transaction alert title")
        static let publicTransactionError = NSLocalizedString("Send.publishTransactionError", value: "Could not publish transaction.", comment: "Could not publish transaction alert title")
        static let noAddress = NSLocalizedString("Send.noAddress", value: "Please enter the recipient's address.", comment: "Empty address alert message")
        static let noAmount = NSLocalizedString("Send.noAmount", value: "Please enter an amount to send.", comment: "Emtpy amount alert message")
        static let isRescanning = NSLocalizedString("Send.isRescanning", value: "Sending is disabled during a full rescan.", comment: "Is rescanning error message")
        static let remoteRequestError = NSLocalizedString("Send.remoteRequestError", value: "Could not load payment request", comment: "Could not load remote request error message")
        static let loadingRequest = NSLocalizedString("Send.loadingRequest", value: "Loading Request", comment: "Loading request activity view message")
        static let insufficientFunds = NSLocalizedString("Send.insufficientFunds", value: "Insufficient Funds", comment: "Insufficient funds error")
    }

    enum Receive {
        static let title = NSLocalizedString("Receive.title", value:"Receive", comment: "Receive modal title")
        static let emailButton = NSLocalizedString("Receive.emailButton", value:"EMAIL", comment: "Share via email button label")
        static let textButton = NSLocalizedString("Receive.textButton", value:"TEXT", comment: "Share via text message (SMS)")
        static let orLabel = NSLocalizedString("Receive.orLabel", value:"or", comment: "Email or Text Message")
        static let copied = NSLocalizedString("Receive.copied", value:"Copied to clipboard.", comment: "Address copied message.")
        static let share = NSLocalizedString("Receive.share", value:"Share", comment: "Share button label")
        static let request = NSLocalizedString("Receive.request", value:"Request an Amount", comment: "Request button label")
    }

    enum Account {
        static let loadingMessage = NSLocalizedString("Account.loadingMessage", value:"Loading Wallet", comment: "Loading Wallet Message")
    }

    enum JailbreakWarnings {
        static let title = NSLocalizedString("JailbreakWarnings.title", value:"WARNING", comment: "Jailbreak warning title")
        static let messageWithBalance = NSLocalizedString("JailbreakWarnings.messageWithBalance", value:"DEVICE SECURITY COMPROMISED\n Any 'jailbreak' app can access Hodl's keychain data and steal your bitcoin! Wipe this wallet immediately and restore on a secure device.", comment: "Jailbreak warning message")
        static let messageWithoutBalance = NSLocalizedString("JailbreakWarnings.messageWithoutBalance", value:"DEVICE SECURITY COMPROMISED\n Any 'jailbreak' app can access Hodl's keychain data and steal your bitcoin. Please only use Hodl on a non-jailbroken device.", comment: "Jailbreak warning message")
        static let ignore = NSLocalizedString("JailbreakWarnings.ignore", value:"Ignore", comment: "Ignore jailbreak warning button")
        static let wipe = NSLocalizedString("JailbreakWarnings.wipe", value:"Wipe", comment: "Wipe wallet button")
        static let close = NSLocalizedString("JailbreakWarnings.close", value:"Close", comment: "Close app button")
    }

    enum ErrorMessages {
        static let emailUnavailableTitle = NSLocalizedString("ErrorMessages.emailUnavailableTitle", value:"Email Unavailable", comment: "Email unavailable alert title")
        static let emailUnavailableMessage = NSLocalizedString("ErrorMessages.emailUnavailableMessage", value:"This device isn't configured to send email with the iOS mail app.", comment: "Email unavailable alert title")
        static let messagingUnavailableTitle = NSLocalizedString("ErrorMessages.messagingUnavailableTitle", value:"Messaging Unavailable", comment: "Messaging unavailable alert title")
        static let messagingUnavailableMessage = NSLocalizedString("ErrorMessages.messagingUnavailableMessage", value:"This device isn't configured to send messages.", comment: "Messaging unavailable alert title")
    }

    enum UnlockScreen {
        static let myAddress = NSLocalizedString("UnlockScreen.myAddress", value:"My Address", comment: "My Address button title")
        static let scan = NSLocalizedString("UnlockScreen.scan", value:"Scan", comment: "Scan button title")
        static let touchIdText = NSLocalizedString("UnlockScreen.touchIdText", value:"Unlock with TouchID", comment: "Unlock with TouchID accessibility label")
        static let touchIdPrompt = NSLocalizedString("UnlockScreen.touchIdPrompt", value:"Unlock your wallet.", comment: "TouchID/FaceID prompt text")
        static let subheader = NSLocalizedString("UnlockScreen.subheader", value:"ENTER PIN", comment: "Unlock Screen sub-header")
        static let unlocked = NSLocalizedString("UnlockScreen.unlocked", value:"WALLET UNLOCKED", comment: "Wallet unlocked message")
        static let disabled = NSLocalizedString("UnlockScreen.disabled", value:"Disabled until: %1$@", comment: "Disabled until date")
        static let resetPin = NSLocalizedString("UnlockScreen.resetPin", value:"Reset PIN", comment: "Reset PIN with Backup Recovery Key button label.")
        static let faceIdText = NSLocalizedString("UnlockScreen.faceIdText", value:"Unlock with FaceID", comment: "Unlock with FaceID accessibility label")
    }

    enum Transaction {
        static let justNow = NSLocalizedString("Transaction.justNow", value:"just now", comment: "Timestamp label for event that just happened")
        static let invalid = NSLocalizedString("Transaction.invalid", value:"INVALID", comment: "Invalid transaction")
        static let complete = NSLocalizedString("Transaction.complete", value:"Complete", comment: "Transaction complete label")
        static let waiting = NSLocalizedString("Transaction.waiting", value:"Waiting to be confirmed. Some merchants require confirmation to complete a transaction. Estimated time: 1-2 hours.", comment: "Waiting to be confirmed string")
        static let starting = NSLocalizedString("Transaction.starting", value: "Starting balance: %1$@", comment: "eg. Starting balance: $50.00")
        static let fee = NSLocalizedString("Transaction.fee", value: "(%1$@ fee)", comment: "(b600 fee)")
        static let ending = NSLocalizedString("Transaction.ending", value: "Ending balance: %1$@", comment: "eg. Ending balance: $50.00")
        static let exchangeOnDaySent = NSLocalizedString("Transaction.exchangeOnDaySent", value: "Exchange rate when sent:", comment: "Exchange rate on date header")
        static let exchangeOnDayReceived = NSLocalizedString("Transaction.exchangeOnDayReceived", value: "Exchange rate when received:", comment: "Exchange rate on date header")
        static let receivedStatus = NSLocalizedString("Transaction.receivedStatus", value: "In progress: %1$@", comment: "Receive status text: 'In progress: 20%'")
        static let sendingStatus = NSLocalizedString("Transaction.sendingStatus", value: "In progress: %1$@", comment: "Send status text: 'In progress: 20%'")
        static let awaitingStatus = NSLocalizedString("Transaction.awaitingStatus", value: "Awaiting confirmation", comment: "Displayed before 1 confirmation has been found")
        static let firstConfirmation = NSLocalizedString("Transaction.firstConfirmation", value: "1 confirmation", comment: "For 1 confirmation")
        static let secondConfirmation = NSLocalizedString("Transaction.secondConfirmation", value: "2 confirmations", comment: "For 2 confirmations")
        static let thirdConfirmation = NSLocalizedString("Transaction.thirdConfirmation", value: "3 confirmations", comment: "For 3 confirmations")
        static let available = NSLocalizedString("Transaction.available", value: "Available to Spend", comment: "Availability status text")
    }

    enum TransactionDetails {
        static let title = NSLocalizedString("TransactionDetails.title", value:"Transaction Details", comment: "Transaction Details Title")
        static let statusHeader = NSLocalizedString("TransactionDetails.statusHeader", value:"Status", comment: "Status section header")
        static let commentsHeader = NSLocalizedString("TransactionDetails.commentsHeader", value:"Note", comment: "Note section header")
        static let amountHeader = NSLocalizedString("TransactionDetails.amountHeader", value:"Amount", comment: "Amount section header")
        static let emptyMessage = NSLocalizedString("TransactionDetails.emptyMessage", value:"Your transactions will appear here.", comment: "Empty transaction list message.")
        static let more = NSLocalizedString("TransactionDetails.more", value:"More...", comment: "More button title")
        static let txHashHeader = NSLocalizedString("TransactionDetails.txHashHeader", value:"Telos Transaction ID", comment: "Transaction ID header")
        static let sentAmountDescription = NSLocalizedString("TransactionDetails.sentAmountDescription", value: "Sent <b>-%1$@</b>", comment: "Sent $5.00")
        static let receivedAmountDescription = NSLocalizedString("TransactionDetails.receivedAmountDescription", value: "Received <b>%1$@</b>", comment: "Received $5.00")
        static let movedAmountDescription = NSLocalizedString("TransactionDetails.movedAmountDescription", value: "Transferred to self <b>%1$@</b>", comment: "Transferred to self $5.00")
        static let account = NSLocalizedString("TransactionDetails.account", value: "account", comment: "e.g. I received money from an account.")
        static let sent = NSLocalizedString("TransactionDetails.sent", value:"Sent %1$@", comment: "Sent $5.00 (sent title 1/2)")
        static let received = NSLocalizedString("TransactionDetails.received", value:"Received %1$@", comment: "Received $5.00 (received title 1/2)")
        static let moved = NSLocalizedString("TransactionDetails.moved", value:"Transferred to self %1$@", comment: "Transferred to self $5.00")
        static let to = NSLocalizedString("TransactionDetails.to", value:"to %1$@", comment: "[sent] to <address> (sent title 2/2)")
        static let from = NSLocalizedString("TransactionDetails.from", value:"at %1$@", comment: "[received] at <address> (received title 2/2)")
        static let blockHeightLabel = NSLocalizedString("TransactionDetails.blockHeightLabel", value: "Confirmed in Block", comment: "Block height label")
        static let notConfirmedBlockHeightLabel = NSLocalizedString("TransactionDetails.notConfirmedBlockHeightLabel", value: "Not Confirmed", comment: "eg. Confirmed in Block: Not Confirmed")
    }

    enum SecurityCenter {
        static let title = NSLocalizedString("SecurityCenter.title", value:"Security Center", comment: "Security Center Title")
        static let info = NSLocalizedString("SecurityCenter.info", value:"Enable all security features for maximum protection.", comment: "Security Center Info")
        enum Cells {
            static let pinTitle = NSLocalizedString("SecurityCenter.pinTitle", value:"6-Digit PIN", comment: "PIN button title")
            static let pinDescription = NSLocalizedString("SecurityCenter.pinDescription", value:"Protects your wallet from unauthorized users.", comment: "PIN button description")
            static let touchIdTitle = NSLocalizedString("SecurityCenter.touchIdTitle", value:"Touch ID", comment: "Touch ID button title")
            static let touchIdDescription = NSLocalizedString("SecurityCenter.touchIdDescription", value:"Conveniently unlock your wallet and send money up to a set limit.", comment: "Touch ID/FaceID button description")
            static let paperKeyTitle = NSLocalizedString("SecurityCenter.paperKeyTitle", value:"Backup Recovery Key", comment: "Backup Recovery Key button title")
            static let paperKeyDescription = NSLocalizedString("SecurityCenter.paperKeyDescription", value:"The only way to access your bitcoin if you lose or upgrade your phone.", comment: "Backup Recovery Key button description")
            static let faceIdTitle = NSLocalizedString("SecurityCenter.faceIdTitle", value:"Face ID", comment: "Face ID button title")
        }
    }

    enum UpdatePin {
        static let updateTitle = NSLocalizedString("UpdatePin.updateTitle", value:"Update PIN", comment: "Update PIN title")
        static let createTitle = NSLocalizedString("UpdatePin.createTitle", value:"Set PIN", comment: "Update PIN title")
        static let createTitleConfirm = NSLocalizedString("UpdatePin.createTitleConfirm", value:"Re-Enter PIN", comment: "Update PIN title")
        static let createInstruction = NSLocalizedString("UpdatePin.createInstruction", value:"Your PIN will be used to unlock your wallet and send money.", comment: "PIN creation info.")
        static let enterCurrent = NSLocalizedString("UpdatePin.enterCurrent", value:"Enter your current PIN.", comment: "Enter current PIN instruction")
        static let enterNew = NSLocalizedString("UpdatePin.enterNew", value:"Enter your new PIN.", comment: "Enter new PIN instruction")
        static let reEnterNew = NSLocalizedString("UpdatePin.reEnterNew", value:"Re-Enter your new PIN.", comment: "Re-Enter new PIN instruction")
        static let caption = NSLocalizedString("UpdatePin.caption", value:"Remember this PIN. If you forget it, you won't be able to access your bitcoin.", comment: "Update PIN caption text")
        static let setPinErrorTitle = NSLocalizedString("UpdatePin.setPinErrorTitle", value:"Update PIN Error", comment: "Update PIN failure alert view title")
        static let setPinError = NSLocalizedString("UpdatePin.setPinError", value:"Sorry, could not update PIN.", comment: "Update PIN failure error message.")
    }

    enum RecoverWallet {
        static let next = NSLocalizedString("RecoverWallet.next", value:"Next", comment: "Next button label")
        static let intro = NSLocalizedString("RecoverWallet.intro", value:"Recover your wallet with your backup recovery key.", comment: "Recover wallet intro")
        static let leftArrow = NSLocalizedString("RecoverWallet.leftArrow", value:"Left Arrow", comment: "Previous button accessibility label")
        static let rightArrow = NSLocalizedString("RecoverWallet.rightArrow", value:"Right Arrow", comment: "Next button accessibility label")
        static let done = NSLocalizedString("RecoverWallet.done", value:"Done", comment: "Done button text")
        static let instruction = NSLocalizedString("RecoverWallet.instruction", value:"Enter Backup Recovery Key", comment: "Enter backup recovery key instruction")
        static let header = NSLocalizedString("RecoverWallet.header", value:"Recover Wallet", comment: "Recover wallet header")
        static let subheader = NSLocalizedString("RecoverWallet.subheader", value:"Enter the backup recovery key for the wallet you want to recover.", comment: "Recover wallet sub-header")

        static let headerResetPin = NSLocalizedString("RecoverWallet.header_reset_pin", value:"Reset PIN", comment: "Reset PIN with backup recovery key: header")
        static let subheaderResetPin = NSLocalizedString("RecoverWallet.subheader_reset_pin", value:"To reset your PIN, enter the words from your backup recovery key into the boxes below.", comment: "Reset PIN with backup recovery key: sub-header")
        static let resetPinInfo = NSLocalizedString("RecoverWallet.reset_pin_more_info", value:"Tap here for more information.", comment: "Reset PIN with backup recovery key: more information button.")
        static let invalid = NSLocalizedString("RecoverWallet.invalid", value:"The backup recovery key you entered is invalid. Please double-check each word and try again.", comment: "Invalid backup recovery key message")
    }

    enum ManageWallet {
        static let title = NSLocalizedString("ManageWallet.title", value:"Manage Wallet", comment: "Manage wallet modal title")
        static let textFieldLabel = NSLocalizedString("ManageWallet.textFeildLabel", value:"Wallet Name", comment: "Change Wallet name textfield label")
        static let description = NSLocalizedString("ManageWallet.description", value:"Your wallet name only appears in your account transaction history and cannot be seen by anyone else.", comment: "Manage wallet description text")
        static let creationDatePrefix = NSLocalizedString("ManageWallet.creationDatePrefix", value:"You created your wallet on %1$@", comment: "Wallet creation date prefix")
    }

    enum AccountHeader {
        static let defaultWalletName = NSLocalizedString("AccountHeader.defaultWalletName", value:"My Wallet", comment: "Default wallet name")
        static let manageButtonName = NSLocalizedString("AccountHeader.manageButtonName", value:"MANAGE", comment: "Manage wallet button title")
        static let equals = NSLocalizedString("AccountHeader.equals", value:"=", comment: "Equals symbol")
        static let btcLabel = NSLocalizedString("AccountHeader.btcLabel", value: "1 TELOS", comment: "TELOS ")
    }

    enum VerifyPin {
        static let title = NSLocalizedString("VerifyPin.title", value:"PIN Required", comment: "Verify PIN view title")
        static let continueBody = NSLocalizedString("VerifyPin.continueBody", value:"Please enter your PIN to continue.", comment: "Verify PIN view body")
        static let authorize = NSLocalizedString("VerifyPin.authorize", value: "Please enter your PIN to authorize this transaction.", comment: "Verify PIN for transaction view body")
        static let touchIdMessage = NSLocalizedString("VerifyPin.touchIdMessage", value: "Authorize this transaction", comment: "Authorize transaction with touch id message")
    }

    enum TouchIdSettings {
        static let title = NSLocalizedString("TouchIdSettings.title", value:"Touch ID", comment: "Touch ID settings view title")
        static let label = NSLocalizedString("TouchIdSettings.label", value:"Use your fingerprint to unlock your wallet and send money up to a set limit.", comment: "Touch Id screen label")
        static let switchLabel = NSLocalizedString("TouchIdSettings.switchLabel", value:"Enable Touch ID for Hodl", comment: "Touch id switch label.")
        static let unavailableAlertTitle = NSLocalizedString("TouchIdSettings.unavailableAlertTitle", value:"Touch ID Not Set Up", comment: "Touch ID unavailable alert title")
        static let unavailableAlertMessage = NSLocalizedString("TouchIdSettings.unavailableAlertMessage", value:"You have not set up Touch ID on this device. Go to Settings->Touch ID & Passcode to set it up now.", comment: "Touch ID unavailable alert message")
        static let spendingLimit = NSLocalizedString("TouchIdSettings.spendingLimit", value: "Spending limit: %1$@ (%2$@)", comment: "Spending Limit: b100,000 ($100)")
        static let customizeText = NSLocalizedString("TouchIdSettings.customizeText", value: "You can customize your Touch ID spending limit from the %1$@.", comment: "You can customize your Touch ID Spending Limit from the [TouchIdSettings.linkText gets added here as a button]")
        static let linkText = NSLocalizedString("TouchIdSettings.linkText", value: "Touch ID Spending Limit Screen", comment: "Link Text (see TouchIdSettings.customizeText)")
    }
    
    enum FaceIDSettings {
        static let title = NSLocalizedString("FaceIDSettings.title", value:"Face ID", comment: "Face ID settings view title")
        static let label = NSLocalizedString("FaceIDSettings.label", value:"Use your face to unlock your wallet and send money up to a set limit.", comment: "Face Id screen label")
        static let switchLabel = NSLocalizedString("FaceIDSettings.switchLabel", value:"Enable Face ID for wallet", comment: "Face id switch label.")
        static let unavailableAlertTitle = NSLocalizedString("FaceIDSettings.unavailableAlertTitle", value:"Face ID Not Set Up", comment: "Face ID unavailable alert title")
        static let unavailableAlertMessage = NSLocalizedString("FaceIDSettings.unavailableAlertMessage", value:"You have not set up Face ID on this device. Go to Settings->Face ID & Passcode to set it up now.", comment: "Face ID unavailable alert message")
        static let customizeText = NSLocalizedString("FaceIDSettings.customizeText", value: "You can customize your Face ID spending limit from the %1$@.", comment: "You can customize your Face ID Spending Limit from the [TouchIdSettings.linkText gets added here as a button]")
        static let linkText = NSLocalizedString("FaceIDSettings.linkText", value: "Face ID Spending Limit Screen", comment: "Link Text (see TouchIdSettings.customizeText)")
    }

    enum TouchIdSpendingLimit {
        static let title = NSLocalizedString("TouchIdSpendingLimit.title", value:"Touch ID Spending Limit", comment: "Touch Id spending limit screen title")
        static let body = NSLocalizedString("TouchIdSpendingLimit.body", value:"You will be asked to enter your 6-digit PIN to send any transaction over your spending limit, and every 48 hours since the last time you entered your 6-digit PIN.", comment: "Touch ID spending limit screen body")
        static let requirePasscode = NSLocalizedString("TouchIdSpendingLimit", value: "Always require passcode", comment: "Always require passcode option")
    }
    
    enum FaceIdSpendingLimit {
        static let title = NSLocalizedString("FaceIDSpendingLimit.title", value:"Face ID Spending Limit", comment: "Face Id spending limit screen title")
    }

    enum Settings {
        static let title = NSLocalizedString("Settings.title", value:"Settings", comment: "Settings title")
        static let wallet = NSLocalizedString("Settings.wallet", value: "Wallet", comment: "Wallet Settings section header")
        static let manage = NSLocalizedString("Settings.manage", value: "Manage", comment: "Manage settings section header")
        static let importTile = NSLocalizedString("Settings.importTitle", value:"Sweep Private Key", comment: "Sweep private key label")
        static let notifications = NSLocalizedString("Settings.notifications", value:"Notifications", comment: "Notifications label")
        static let touchIdLimit = NSLocalizedString("Settings.touchIdLimit", value:"Touch ID Spending Limit", comment: "Touch ID spending limit label")
        static let currency = NSLocalizedString("Settings.currency", value:"Display Currency", comment: "Default currency label")
        static let sync = NSLocalizedString("Settings.sync", value:"Sync Blockchain", comment: "Sync blockchain label")
        static let shareData = NSLocalizedString("Settings.shareData", value:"Share Anonymous Data", comment: "Share anonymous data label")
        static let about = NSLocalizedString("Settings.about", value:"About", comment: "About label")
        static let review = NSLocalizedString("Settings.review", value: "Leave us a Review", comment: "Leave review button label")
        static let enjoying = NSLocalizedString("Settings.enjoying", value: "Are you enjoying Hodl?", comment: "Are you enjoying hodl alert message body")
        static let wipe = NSLocalizedString("Settings.wipe", value: "Start/Recover Another Wallet", comment: "Start or recover another wallet menu label.")
        static let legacyAddress = NSLocalizedString("Settings.legacyAddress", value: "Show Legacy Address", comment: "Generates a legacy address and shows its QR code.")
        static let legacyAddressTitle = NSLocalizedString("Settings.legacyAddressTitle", value: "Legacy Address", comment: "Shows a legacy address to the user.")
        static let advancedTitle = NSLocalizedString("Settings.advancedTitle", value: "Advanced Settings", comment: "Advanced Settings title")
        static let faceIdLimit = NSLocalizedString("Settings.faceIdLimit", value:"Face ID Spending Limit", comment: "Face ID spending limit label")
    }

    enum About {
        static let title = NSLocalizedString("About.title", value:"About", comment: "About screen title")
        static let blog = NSLocalizedString("About.blog", value:"Blog", comment: "About screen blog label")
        static let twitter = NSLocalizedString("About.twitter", value:"Twitter", comment: "About screen twitter label")
        static let reddit = NSLocalizedString("About.reddit", value:"Reddit", comment: "About screen reddit label")
        static let privacy = NSLocalizedString("About.privacy", value:"Privacy Policy", comment: "Privay Policy button label")
        static let footer = NSLocalizedString("About.footer", value:"Made by Akshay CM. Version %1$@", comment: "About screen footer")
    }

    enum PushNotifications {
        static let title = NSLocalizedString("PushNotifications.title", value:"Notifications", comment: "Push notifications settings view title label")
        static let body = NSLocalizedString("PushNotifications.body", value:"Turn on notifications to receive special messages from Hodl in the future.", comment: "Push notifications settings view body")
        static let label = NSLocalizedString("PushNotifications.label", value:"Push Notifications", comment: "Push notifications toggle switch label")
        static let on = NSLocalizedString("PushNotifications.on", value: "On", comment: "Push notifications are on label")
        static let off = NSLocalizedString("PushNotifications.off", value: "Off", comment: "Push notifications are off label")
    }

    enum DefaultCurrency {
        static let rateLabel = NSLocalizedString("DefaultCurrency.rateLabel", value:"Exchange Rate", comment: "Exchange rate label")
        static let bitcoinLabel = NSLocalizedString("DefaultCurrency.bitcoinLabel", value: "Bitcoin Display Unit", comment: "Bitcoin denomination picker label")
    }

    enum SyncingView {
        static let syncing = NSLocalizedString("SyncingView.syncing", value:"SYNCING", comment: "Syncing view syncing state header text")
        static let connecting = NSLocalizedString("SyncingView.connecting", value:"CONNECTING", comment: "Syncing view connectiong state header text")
    }

    enum ReScan {
        static let header = NSLocalizedString("ReScan.header", value:"Sync Blockchain", comment: "Sync Blockchain view header")
        static let subheader1 = NSLocalizedString("ReScan.subheader1", value:"Estimated time", comment: "Subheader label")
        static let subheader2 = NSLocalizedString("ReScan.subheader2", value:"When to Sync?", comment: "Subheader label")
        static let body1 = NSLocalizedString("ReScan.body1", value:"1-3 hours", comment: "extimated time")
        static let body2 = NSLocalizedString("ReScan.body2", value:"If a transaction shows as completed on the bitcoin network but not in your wallet.", comment: "Syncing explanation")
        static let body3 = NSLocalizedString("ReScan.body3", value:"You repeatedly get an error saying your transaction was rejected.", comment: "Syncing explanation")
        static let buttonTitle = NSLocalizedString("ReScan.buttonTitle", value:"Start Sync", comment: "Start Sync button label")
        static let footer = NSLocalizedString("ReScan.footer", value:"You will not be able to send bitcoin while syncing with the blockchain.", comment: "Sync blockchain view footer")
        static let alertTitle = NSLocalizedString("ReScan.alertTitle", value:"Sync with Blockchain?", comment: "Alert message title")
        static let alertMessage = NSLocalizedString("ReScan.alertMessage", value:"You will not be able to send bitcoin while syncing.", comment: "Alert message body")
        static let alertAction = NSLocalizedString("ReScan.alertAction", value:"Sync", comment: "Alert action button label")
    }

    enum ShareData {
        static let header = NSLocalizedString("ShareData.header", value:"Share Data?", comment: "Share data header")
        static let body = NSLocalizedString("ShareData.body", value:"Help improve Hodl by sharing your anonymous data with us. This does not include any financial information. We respect your financial privacy.", comment: "Share data view body")
        static let toggleLabel = NSLocalizedString("ShareData.toggleLabel", value:"Share Anonymous Data?", comment: "Share data switch label.")
    }

    enum ConfirmPaperPhrase {
        static let word = NSLocalizedString("ConfirmPaperPhrase.word", value:"Word #%1$@", comment: "Word label eg. Word #1, Word #2")
        static let label = NSLocalizedString("ConfirmPaperPhrase.label", value:"To make sure everything was written down correctly, please enter the following words from your backup recovery key.", comment: "Confirm paper phrase view label.")
        static let error = NSLocalizedString("ConfirmPaperPhrase.error", value: "The words entered do not match your backup recovery key. Please try again.", comment: "Confirm paper phrase error message")
    }

    enum StartPaperPhrase {
        static let body = NSLocalizedString("StartPaperPhrase.body", value:"Your backup recovery key is the only way to restore your wallet if your phone is lost, stolen, broken, or upgraded.\n\nWe will show you a list of words to write down on a piece of paper and keep safe.", comment: "Backup recovery key explanation text.")
        static let buttonTitle = NSLocalizedString("StartPaperPhrase.buttonTitle", value:"Write Down Backup Recovery Key", comment: "button label")
        static let againButtonTitle = NSLocalizedString("StartPaperPhrase.againButtonTitle", value:"Write Down Backup Recovery Key Again", comment: "button label")
        static let date = NSLocalizedString("StartPaperPhrase.date", value:"You last wrote down your backup recovery key on %1$@", comment: "Argument is date")
    }

    enum WritePaperPhrase {
        static let instruction = NSLocalizedString("WritePaperPhrase.instruction", value:"Write down each word in order and store it in a safe place.", comment: "Backup recovery key instructions.")
        static let step = NSLocalizedString("WritePaperPhrase.step", value:"%1$d of %2$d", comment: "1 of 3")
        static let next = NSLocalizedString("WritePaperPhrase.next", value:"Next", comment: "button label")
        static let previous = NSLocalizedString("WritePaperPhrase.previous", value:"Previous", comment: "button label")
    }

    enum TransactionDirection {
        static let to = NSLocalizedString("TransactionDirection.to", value:"Sent to this Address", comment: "(this transaction was) Sent to this address:")
        static let received = NSLocalizedString("TransactionDirection.address", value:"Received at this Address", comment: "(this transaction was) Received at this address:")
    }

    enum RequestAnAmount {
        static let title = NSLocalizedString("RequestAnAmount.title", value:"Request an Amount", comment: "Request a specific amount of bitcoin")
        static let noAmount = NSLocalizedString("RequestAnAmount.noAmount", value: "Please enter an amount first.", comment: "No amount entered error message.")
    }

    enum Alerts {
        static let pinSet = NSLocalizedString("Alerts.pinSet", value:"PIN Set", comment: "Alert Header label (the PIN was set)")
        static let paperKeySet = NSLocalizedString("Alerts.paperKeySet", value:"Backup Recovery Key Set", comment: "Alert Header Label (the backup recovery key was set)")
        static let sendSuccess = NSLocalizedString("Alerts.sendSuccess", value:"Send Confirmation", comment: "Send success alert header label (confirmation that the send happened)")
        static let sendFailure = NSLocalizedString("Alerts.sendFailure", value:"Send failed", comment: "Send failure alert header label (the send failed to happen)")
        static let paperKeySetSubheader = NSLocalizedString("Alerts.paperKeySetSubheader", value:"Awesome!", comment: "Alert Subheader label (playfully positive)")
        static let sendSuccessSubheader = NSLocalizedString("Alerts.sendSuccessSubheader", value:"Money Sent!", comment: "Send success alert subheader label (e.g. the money was sent)")
        static let copiedAddressesHeader = NSLocalizedString("Alerts.copiedAddressesHeader", value:"Addresses Copied", comment: "'the addresses were copied'' Alert title")
        static let copiedAddressesSubheader = NSLocalizedString("Alerts.copiedAddressesSubheader", value:"All wallet addresses successfully copied.", comment: "Addresses Copied Alert sub header")
    }

    enum MenuButton {
        static let security = NSLocalizedString("MenuButton.security", value:"Security Center", comment: "Menu button title")
        static let support = NSLocalizedString("MenuButton.support", value:"Knowledge", comment: "Menu button title")
        static let settings = NSLocalizedString("MenuButton.settings", value:"Settings", comment: "Menu button title")
        static let lock = NSLocalizedString("MenuButton.lock", value:"Lock Wallet", comment: "Menu button title")
        static let buy = NSLocalizedString("MenuButton.buy", value:"Buy Bitcoin", comment: "Buy bitcoin title")
    }

    enum MenuViewController {
        static let modalTitle = NSLocalizedString("MenuViewController.modalTitle", value:"Menu", comment: "Menu modal title")
    }

    enum StartViewController {
        static let createButton = NSLocalizedString("MenuViewController.createButton", value:"CREATE NEW WALLET", comment: "button label")
        static let recoverButton = NSLocalizedString("MenuViewController.recoverButton", value:"RECOVER WALLET", comment: "button label")
        static let message = NSLocalizedString("StartViewController.message", value: "IN 'TO THE MOON' WE TRUST", comment: "Start view message")
    }

    enum AccessibilityLabels {
        static let close = NSLocalizedString("AccessibilityLabels.close", value:"Close", comment: "Close modal button accessibility label")
        static let faq = NSLocalizedString("AccessibilityLabels.faq", value: "Support Center", comment: "Support center accessibiliy label")
    }

    enum Watch {
        static let noWalletWarning = NSLocalizedString("Watch.noWalletWarning", value: "Open the Hodl iPhone app to set up your wallet.", comment: "'No wallet' warning for watch app")
    }

    enum Search {
        static let sent = NSLocalizedString("Search.sent", value: "sent", comment: "Sent filter label")
        static let received = NSLocalizedString("Search.received", value: "received", comment: "Received filter label")
        static let pending = NSLocalizedString("Search.pending", value: "pending", comment: "Pending filter label")
        static let complete = NSLocalizedString("Search.complete", value: "complete", comment: "Complete filter label")
    }

    enum Prompts {
        enum TouchId {
            static let title = NSLocalizedString("Prompts.TouchId.title", value: "Enable Touch ID", comment: "Enable touch ID prompt title")
            static let body = NSLocalizedString("Prompts.TouchId.body", value: "Tap here to enable Touch ID", comment: "Enable touch ID prompt body")
        }
        enum PaperKey {
            static let title = NSLocalizedString("Prompts.PaperKey.title", value: "Action Required", comment: "An action is required (You must do this action).")
            static let body = NSLocalizedString("Prompts.PaperKey.body", value: "Your Backup Recovery Key must be saved in case you ever lose or change your phone. Tap here to continue.", comment: "Warning about backup recovery key.")
        }
        enum UpgradePin {
            static let title = NSLocalizedString("Prompts.UpgradePin.title", value: "Upgrade PIN", comment: "Upgrade PIN prompt title.")
            static let body = NSLocalizedString("Prompts.UpgradePin.body", value: "Hodl has upgraded to using a 6-digit PIN. Tap here to upgrade.", comment: "Upgrade PIN prompt body.")
        }
        enum RecommendRescan {
            static let title = NSLocalizedString("Prompts.RecommendRescan.title", value: "Transaction Rejected", comment: "Transaction rejected prompt title")
            static let body = NSLocalizedString("Prompts.RecommendRescan.body", value: "Your wallet may be out of sync. This can often be fixed by rescanning the blockchain.", comment: "Transaction rejected prompt body")
        }
        enum NoPasscode {
            static let title = NSLocalizedString("Prompts.NoPasscode.title", value: "Turn device passcode on", comment: "No Passcode set warning title")
            static let body = NSLocalizedString("Prompts.NoPasscode.body", value: "A device passcode is needed to safeguard your wallet. Go to settings and turn passcode on.", comment: "No passcode set warning body")
        }
        enum ShareData {
            static let title = NSLocalizedString("Prompts.ShareData.title", value: "Share Anonymous Data", comment: "Share data prompt title")
            static let body = NSLocalizedString("Prompts.ShareData.body", value: "Help improve Hodl by sharing your anonymous data with us", comment: "Share data prompt body")
        }
        enum FaceId {
            static let title = NSLocalizedString("Prompts.FaceId.title", value: "Enable Face ID", comment: "Enable face ID prompt title")
            static let body = NSLocalizedString("Prompts.FaceId.body", value: "Tap here to enable Face ID", comment: "Enable face ID prompt body")
        }
    }

    enum PaymentProtocol {
        enum Errors {
            static let untrustedCertificate = NSLocalizedString("PaymentProtocol.Errors.untrustedCertificate", value: "untrusted certificate", comment: "Untrusted certificate payment protocol error message")
            static let missingCertificate = NSLocalizedString("PaymentProtocol.Errors.missingCertificate", value: "missing certificate", comment: "Missing certificate payment protocol error message")
            static let unsupportedSignatureType = NSLocalizedString("PaymentProtocol.Errors.unsupportedSignatureType", value: "unsupported signature type", comment: "Unsupported signature type payment protocol error message")
            static let requestExpired = NSLocalizedString("PaymentProtocol.Errors.requestExpired", value: "request expired", comment: "Request expired payment protocol error message")
            static let badPaymentRequest = NSLocalizedString("PaymentProtocol.Errors.badPaymentRequest", value: "Bad Payment Request", comment: "Bad Payment request alert title")
            static let smallOutputErrorTitle = NSLocalizedString("PaymentProtocol.Errors.smallOutputError", value: "Couldn't make payment", comment: "Payment too small alert title")
            static let smallPayment = NSLocalizedString("PaymentProtocol.Errors.smallPayment", value: "Bitcoin payments can't be less than %1$@.", comment: "Amount too small error message")
            static let smallTransaction = NSLocalizedString("PaymentProtocol.Errors.smallTransaction", value: "Bitcoin transaction outputs can't be less than %1$@.", comment: "Output too small error message.")
            static let corruptedDocument = NSLocalizedString("PaymentProtocol.Errors.corruptedDocument", value: "Unsupported or corrupted document", comment: "Error opening payment protocol file message")
        }
    }

    enum URLHandling {
        static let addressListAlertTitle = NSLocalizedString("URLHandling.addressListAlertTitle", value: "Copy Wallet Addresses", comment: "Authorize to copy wallet address alert title")
        static let addressListAlertMessage = NSLocalizedString("URLHandling.addressaddressListAlertMessage", value: "Copy wallet addresses to clipboard?", comment: "Authorize to copy wallet addresses alert message")
        static let addressListVerifyPrompt = NSLocalizedString("URLHandling.addressList", value: "Authorize to copy wallet address to clipboard", comment: "Authorize to copy wallet address PIN view prompt.")
        static let copy = NSLocalizedString("URLHandling.copy", value: "Copy", comment: "Copy wallet addresses alert button label")
    }

    enum ApiClient {
        static let notReady = NSLocalizedString("ApiClient.notReady", value: "Wallet not ready", comment: "Wallet not ready error message")
        static let jsonError = NSLocalizedString("ApiClient.jsonError", value: "JSON Serialization Error", comment: "JSON Serialization error message")
        static let tokenError = NSLocalizedString("ApiClient.tokenError", value: "Unable to retrieve API token", comment: "API Token error message")
    }

    enum CameraPlugin {
        static let centerInstruction = NSLocalizedString("CameraPlugin.centerInstruction", value: "Center your ID in the box", comment: "Camera plugin instruction")
    }

    enum LocationPlugin {
        static let disabled = NSLocalizedString("LocationPlugin.disabled", value: "Location services are disabled.", comment: "Location services disabled error")
        static let notAuthorized = NSLocalizedString("LocationPlugin.notAuthorized", value: "Hodl does not have permission to access location services.", comment: "No permissions for location services")
    }

    enum Webview {
        static let updating = NSLocalizedString("Webview.updating", value: "Updating...", comment: "Updating webview message")
        static let errorMessage = NSLocalizedString("Webview.errorMessage", value: "There was an error loading the content. Please try again.", comment: "Webview loading error message")
        static let dismiss = NSLocalizedString("Webview.dismiss", value: "Dismiss", comment: "Dismiss button label")

    }

    enum TimeSince {
        static let seconds = NSLocalizedString("TimeSince.seconds", value: "%1$@ s", comment: "6 s (6 seconds)")
        static let minutes = NSLocalizedString("TimeSince.minutes", value: "%1$@ m", comment: "6 m (6 minutes)")
        static let hours = NSLocalizedString("TimeSince.hours", value: "%1$@ h", comment: "6 h (6 hours)")
        static let days = NSLocalizedString("TimeSince.days", value:"%1$@ d", comment: "6 d (6 days)")
    }

    enum Import {
        static let leftCaption = NSLocalizedString("Import.leftCaption", value: "Private key to be swept", comment: "Caption for graphics")
        static let rightCaption = NSLocalizedString("Import.rightCaption", value: "Your Hodl Wallet", comment: "Caption for graphics")
        static let importMessage = NSLocalizedString("Import.message", value: "Sweeping a private key transfers all the bitcoin from your private key into your Hodl wallet using a single transaction.", comment: "Sweep private key intro screen message")
        static let importWarning = NSLocalizedString("Import.warning", value: "Sweeping a private key does not include transaction history or other details.", comment: "Sweep private key intro warning message")
        static let scan = NSLocalizedString("Import.scan", value: "Scan Private Key", comment: "Scan Private key button label")
        static let title = NSLocalizedString("Import.title", value: "Sweep Private Key", comment: "Sweep Private Key screen title")
        static let importing = NSLocalizedString("Import.importing", value: "Sweeping Private Key", comment: "Sweeping private key progress view label")
        static let confirm = NSLocalizedString("Import.confirm", value: "Send %1$@ from this private key into your wallet? The bitcoin network will receive a fee of %2$@.", comment: "Sweep private key confirmation message")
        static let checking = NSLocalizedString("Import.checking", value: "Checking private key balance...", comment: "Checking private key balance progress view text")
        static let password = NSLocalizedString("Import.password", value: "This private key is password protected.", comment: "Enter password alert view title")
        static let passwordPlaceholder = NSLocalizedString("Import.passwordPlaceholder", value: "password", comment: "password textfield placeholder")
        static let unlockingActivity = NSLocalizedString("Import.unlockingActivity", value: "Unlocking Key", comment: "Unlocking Private key activity view message.")
        static let importButton = NSLocalizedString("Import.importButton", value: "Sweep", comment: "Sweep button label")
        static let success = NSLocalizedString("Import.success", value: "Success", comment: "Sweep private key success alert title")
        static let successBody = NSLocalizedString("Import.SuccessBody", value: "Successfully swept private key.", comment: "Successfully swept private key message body")
        static let wrongPassword = NSLocalizedString("Import.wrongPassword", value: "Wrong password, please try again.", comment: "Wrong password alert message")
        enum Error {
            static let notValid = NSLocalizedString("Import.Error.notValid", value: "Not a valid private key", comment: "Not a valid private key error message")
            static let duplicate = NSLocalizedString("Import.Error.duplicate", value: "This private key is already in your wallet.", comment: "Duplicate key error message")
            static let empty = NSLocalizedString("Import.Error.empty", value: "This private key is empty.", comment: "empty private key error message")
            static let highFees = NSLocalizedString("Import.Error.highFees", value: "Transaction fees would cost more than the funds available on this private key.", comment: "High fees error message")
            static let signing = NSLocalizedString("Import.Error.signing", value: "Error signing transaction", comment: "Sweep signing error message")
        }
    }

    enum BitID {
        static let title = NSLocalizedString("BitID.title", value: "BitID Authentication Request", comment: "BitID Authentication Request alert view title")
        static let authenticationRequest = NSLocalizedString("BitID.authenticationRequest", value: "%1$@ is requesting authentication using your bitcoin wallet", comment: "<sitename> is requesting authentication using your bitcoin wallet")
        static let deny = NSLocalizedString("BitID.deny", value: "Deny", comment: "Deny button label")
        static let approve = NSLocalizedString("BitID.approve", value: "Approve", comment: "Approve button label")
        static let success = NSLocalizedString("BitID.success", value: "Successfully Authenticated", comment: "BitID success alert title")
        static let error = NSLocalizedString("BitID.error", value: "Authentication Error", comment: "BitID error alert title")
        static let errorMessage = NSLocalizedString("BitID.errorMessage", value: "Please check with the service. You may need to try again.", comment: "BitID error alert messaage")
        
    }

    enum WipeWallet {
        static let title = NSLocalizedString("WipeWallet.title", value: "Start or Recover Another Wallet", comment: "Wipe wallet navigation item title.")
        static let alertTitle = NSLocalizedString("WipeWallet.alertTitle", value: "Wipe Wallet?", comment: "Wipe wallet alert title")
        static let alertMessage = NSLocalizedString("WipeWallet.alertMessage", value: "Are you sure you want to delete this wallet?", comment: "Wipe wallet alert message")
        static let wipe = NSLocalizedString("WipeWallet.wipe", value: "Wipe", comment: "Wipe wallet button title")
        static let wiping = NSLocalizedString("WipeWallet.wiping", value: "Wiping...", comment: "Wiping activity message")
        static let failedTitle = NSLocalizedString("WipeWallet.failedTitle", value: "Failed", comment: "Failed wipe wallet alert title")
        static let failedMessage = NSLocalizedString("WipeWallet.failedMessage", value: "Failed to wipe wallet.", comment: "Failed wipe wallet alert message")
        static let instruction = NSLocalizedString("WipeWallet.instruction", value: "To start a new wallet or restore an existing wallet, you must first erase the wallet that is currently installed. To continue, enter the current wallet's Backup Recovery Key.", comment: "Enter key to wipe wallet instruction.")
        static let startMessage = NSLocalizedString("WipeWallet.startMessage", value: "Starting or recovering another wallet allows you to access and manage a different Hodl wallet on this device.", comment: "Start wipe wallet view message")
        static let startWarning = NSLocalizedString("WipeWallet.startWarning", value: "Your current wallet will be removed from this device. If you wish to restore it in the future, you will need to enter your Backup Recovery Key.", comment: "Start wipe wallet view warning")
    }

    enum FeeSelector {
        static let title = NSLocalizedString("FeeSelector.title", value: "Processing Speed", comment: "Fee Selector title")
        static let estimatedDelivery = NSLocalizedString("FeeSelector.estimatedDeliver", value: "Estimated Delivery: %1$@", comment: "Fee Selector regular fee description")
        static let estDelivery = NSLocalizedString("FeeSelector.estDelivery", value: "Est. Confirmation", comment: "Fee Selector delivery header (CONFIRMATION otherwise)")
        static let networkFee = NSLocalizedString("FeeSelector.networkFee", value: "Transaction Fee", comment: "Fee Selector network header") /* Localize */
        static let economyWarning = NSLocalizedString("FeeSelector.economyWarning", value: "This option is not recommended for time-sensitive transactions.", comment: "Warning message for economy fee")
        static let regular = NSLocalizedString("FeeSelector.regular", value: "Regular", comment: "Regular fee")
        static let economy = NSLocalizedString("FeeSelector.economy", value: "Economy", comment: "Economy fee")
        static let economyTime = NSLocalizedString("FeeSelector.economyTime", value: "1-24 hours", comment: "E.g. [This transaction is predicted to complete in] 1-24 hours")
        static let regularTime = NSLocalizedString("FeeSelector.regularTime", value: "10-60 minutes", comment: "E.g. [This transaction is predicted to complete in] 10-60 minutes")
        static let minuteTime = NSLocalizedString("FeeSelector.minuteTime", value: "%1$@ minutes", comment: "E.g. [This transaction is predicted to complete in] %d minutes")
        static let hourTime = NSLocalizedString("FeeSelector.hourTime", value: "%1$@ hours", comment: "E.g. [This transaction is predicted to complete in] %d hours")
        static let satByte = NSLocalizedString("FeeSelector.satByte", value: "%1$@ sat/byte", comment: "Satoshis per byte")
        static let sat_byte = NSLocalizedString("FeeSelector.sat_byte", value: "sat/byte", comment: "Satoshis Per Byte")
        static let feeDescription = NSLocalizedString("FeeSelector.feeDescription", value: "%1$@", comment: "$1.00")
        static let slow = NSLocalizedString("FeeSelector.slow", value: "Economy", comment: "Slow label for fee slider ")
        static let normal = NSLocalizedString("FeeSelector.normal", value: "Normal", comment: "Normal label for fee slider")
        static let fastest = NSLocalizedString("FeeSelector.fastest", value: "High", comment: "Fastest label for fee slider")
        static let customFee = NSLocalizedString("FeeSelector.customFee", value: "Custom Fee", comment: "Label for Advanced/Custom Fee")
        static let advancedTitle = NSLocalizedString("FeeSelector.advancedTitle", value: "Custom Fee", comment: "Title for Advanced Fee Selector")
        static let advancedBody = NSLocalizedString("FeeSelector.advancedTitle", value: "Setting custom Fee is not recommended. If the Fee is too low, the transaction may never get confirmed.", comment: "Body for Advanced Fee Selector")
        static let advancedProcess = NSLocalizedString("FeeSelector.advancedProcess", value: "Unavailable", comment: "Processing time for Advanced Fee")
    }

    enum Confirmation {
        static let title = NSLocalizedString("Confirmation.title", value: "Confirmation", comment: "Confirmation Screen title")
        static let send = NSLocalizedString("Confirmation.send", value: "Send", comment: "Send: (amount)")
        static let to = NSLocalizedString("Confirmation.to", value: "To", comment: "To: (address)")
        static let processingTime = NSLocalizedString("Confirmation.processingTime", value: "Processing time: This transaction is predicted to complete in %1$@.", comment: "E.g. Processing time: This transaction is predicted to complete in [10-60 minutes].")
        static let amountLabel = NSLocalizedString("Confirmation.amountLabel", value: "Amount to Send:", comment: "Amount to Send: ($1.00)")
        static let feeLabel = NSLocalizedString("Confirmation.feeLabel", value: "Transaction Fee:", comment: "Transaction Fee: ($1.00)")
        static let totalLabel = NSLocalizedString("Confirmation.totalLabel", value: "Total Cost:", comment: "Total Cost: ($5.00)")
    }

    enum BCH {
        static let title = NSLocalizedString("BCH.title", value: "Withdraw BCH", comment: "Widthdraw BCH view title")
        static let body = NSLocalizedString("BCH.body", value: "Enter a destination BCH address below. All BCH in your wallet at the time of the fork (%1$@) will be sent.", comment: "Send BCH view body.")
        static let txHashHeader = NSLocalizedString("BCH.txHashHeader", value: "BCH Transaction ID", comment: "Tx Hash button header")
        static let paymentProtocolError = NSLocalizedString("BCH.paymentProtocolError", value: "Payment Protocol Requests are not supported for BCH transactions", comment: "Attempted to scan unsupported qr code error message.")
        static let noAddressError = NSLocalizedString("BCH.noAddressError", value: "Please enter an address", comment: "No address error message")
        static let confirmationTitle = NSLocalizedString("BCH.confirmationTitle", value: "Confirmation", comment: "Confirmation alert title")
        static let confirmationMessage = NSLocalizedString("BCH.confirmationMessage", value: "Confirm sending %1$@ to %2$@", comment: "Confirm sending <$5.00> to <address>?")
        static let successMessage = NSLocalizedString("BCH.successMessage", value: "BCH was successfully sent.", comment: "BCH successfully sent alert message")
        static let hashCopiedMessage = NSLocalizedString("BCH.hashCopiedMessage", value: "Transaction ID copied", comment: "Transaction ID copied message")
        static let genericError = NSLocalizedString("BCH.genericError", value: "Your account does not contain any BCH, or you received BCH after the fork.", comment: "Generic bch erorr message")
    }

    enum NodeSelector {
        static let manualButton = NSLocalizedString("NodeSelector.manualButton", value: "Switch to Manual Mode", comment: "Switch to manual mode button label")
        static let automaticButton = NSLocalizedString("NodeSelector.automaticButton", value: "Switch to Automatic Mode", comment: "Switch to automatic mode button label")
        static let title = NSLocalizedString("NodeSelector.title", value: "Bitcoin Nodes", comment: "Node Selector view title")
        static let nodeLabel = NSLocalizedString("NodeSelector.nodeLabel", value: "Current Primary Node", comment: "Node address label")
        static let statusLabel = NSLocalizedString("NodeSelector.statusLabel", value: "Node Connection Status", comment: "Node status label")
        static let connected = NSLocalizedString("NodeSelector.connected", value: "Connected", comment: "Node is connected label")
        static let notConnected = NSLocalizedString("NodeSelector.notConnected", value: "Not Connected", comment: "Node is not connected label")
        static let enterTitle = NSLocalizedString("NodeSelector.enterTitle", value: "Enter Node", comment: "Enter Node ip address view title")
        static let enterBody = NSLocalizedString("NodeSelector.enterBody", value: "Enter Node IP address and port (optional)", comment: "Enter node ip address view body")
    }

    enum Welcome {
        static let title = NSLocalizedString("Welcome.title", value: "Welcome to TelosWallet!", comment: "Welcome view title")
        static let body = NSLocalizedString("Welcome.body", value: "If you need help, look for the (?) in the top right of most screens.", comment: "Welcome view body text")
    }
    
    enum Segwit {
        static let title = NSLocalizedString("Segwit.title", value: "Transcendence Wallet has Upgraded!", comment: "Segwit view title")
        static let body = NSLocalizedString("Segwit.body", value: "Transcendence has upgraded to the newest Bitcoin address standard. This gives you the added benefit of saving on transaction fees and being compatible with the latest standards of the Bitcoin Network. You don't have to do anything different and the only thing you'll notice is your addresses have changed and now begin with \"bc\".\n\nYour money is safe and still stored on your Backup Recovery Key.\n\nSince this change is still taking effect across the Bitcoin Network, some services may not be ready to send to this new address type. If you encounter this you can still access the old addresses that begin with \"1\" via: Settings/ Wallet/ Show Legacy Address", comment: "Segwit view body text")
    }
}
