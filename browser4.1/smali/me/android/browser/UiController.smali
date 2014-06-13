.class public interface abstract Lme/android/browser/UiController;
.super Ljava/lang/Object;
.source "UiController.java"


# virtual methods
.method public abstract attachSubWindow(Lme/android/browser/Tab;)V
.end method

.method public abstract bookmarkCurrentPage()V
.end method

.method public abstract bookmarksOrHistoryPicker(Lme/android/browser/UI$ComboViews;)V
.end method

.method public abstract closeCurrentTab()V
.end method

.method public abstract closeTab(Lme/android/browser/Tab;)V
.end method

.method public abstract createBookmarkCurrentPageIntent(Z)Landroid/content/Intent;
.end method

.method public abstract createNewSnapshotTab(JZ)Lme/android/browser/SnapshotTab;
.end method

.method public abstract editUrl()V
.end method

.method public abstract endActionMode()V
.end method

.method public abstract findOnPage()V
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getCurrentTab()Lme/android/browser/Tab;
.end method

.method public abstract getCurrentTopWebView()Landroid/webkit/WebView;
.end method

.method public abstract getCurrentWebView()Landroid/webkit/WebView;
.end method

.method public abstract getSettings()Lme/android/browser/BrowserSettings;
.end method

.method public abstract getTabControl()Lme/android/browser/TabControl;
.end method

.method public abstract getTabs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lme/android/browser/Tab;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUi()Lme/android/browser/UI;
.end method

.method public abstract handleNewIntent(Landroid/content/Intent;)V
.end method

.method public abstract hideCustomView()V
.end method

.method public abstract isInCustomActionMode()Z
.end method

.method public abstract loadUrl(Lme/android/browser/Tab;Ljava/lang/String;)V
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract openIncognitoTab()Lme/android/browser/Tab;
.end method

.method public abstract openPreferences()V
.end method

.method public abstract openTab(Ljava/lang/String;ZZZ)Lme/android/browser/Tab;
.end method

.method public abstract openTabToHomePage()Lme/android/browser/Tab;
.end method

.method public abstract removeSubWindow(Lme/android/browser/Tab;)V
.end method

.method public abstract setActiveTab(Lme/android/browser/Tab;)V
.end method

.method public abstract setBlockEvents(Z)V
.end method

.method public abstract shareCurrentPage()V
.end method

.method public abstract shouldShowErrorConsole()Z
.end method

.method public abstract showPageInfo()V
.end method

.method public abstract startVoiceRecognizer()V
.end method

.method public abstract stopLoading()V
.end method

.method public abstract supportsVoice()Z
.end method

.method public abstract switchToTab(Lme/android/browser/Tab;)Z
.end method

.method public abstract toggleUserAgent()V
.end method

.method public abstract updateMenuState(Lme/android/browser/Tab;Landroid/view/Menu;)V
.end method
