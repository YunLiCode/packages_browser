.class public Lme/android/browser/BrowserActivity;
.super Landroid/app/Activity;
.source "BrowserActivity.java"


# static fields
.field public static final ACTION_RESTART:Ljava/lang/String; = "--restart--"

.field public static final ACTION_SHOW_BOOKMARKS:Ljava/lang/String; = "show_bookmarks"

.field public static final ACTION_SHOW_BROWSER:Ljava/lang/String; = "show_browser"

.field private static final EXTRA_STATE:Ljava/lang/String; = "state"

.field private static final LOGTAG:Ljava/lang/String; = "browser"

.field private static final LOGV_ENABLED:Z


# instance fields
.field private mController:Lme/android/browser/ActivityController;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    sget-object v0, Lme/android/browser/stub/NullController;->INSTANCE:Lme/android/browser/stub/NullController;

    iput-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    .line 40
    return-void
.end method

.method private createController()Lme/android/browser/Controller;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lme/android/browser/Controller;

    invoke-direct {v0, p0}, Lme/android/browser/Controller;-><init>(Landroid/app/Activity;)V

    .line 84
    .local v0, "controller":Lme/android/browser/Controller;
    invoke-static {p0}, Lme/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v2

    .line 85
    .local v2, "xlarge":Z
    const/4 v1, 0x0

    .line 86
    .local v1, "ui":Lme/android/browser/UI;
    if-eqz v2, :cond_0

    .line 87
    new-instance v1, Lme/android/browser/XLargeUi;

    .end local v1    # "ui":Lme/android/browser/UI;
    invoke-direct {v1, p0, v0}, Lme/android/browser/XLargeUi;-><init>(Landroid/app/Activity;Lme/android/browser/UiController;)V

    .line 91
    .restart local v1    # "ui":Lme/android/browser/UI;
    :goto_0
    invoke-virtual {v0, v1}, Lme/android/browser/Controller;->setUi(Lme/android/browser/UI;)V

    .line 92
    return-object v0

    .line 89
    :cond_0
    new-instance v1, Lme/android/browser/PhoneUi;

    .end local v1    # "ui":Lme/android/browser/UI;
    invoke-direct {v1, p0, v0}, Lme/android/browser/PhoneUi;-><init>(Landroid/app/Activity;Lme/android/browser/UiController;)V

    .restart local v1    # "ui":Lme/android/browser/UI;
    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private shouldIgnoreIntents()Z
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Lme/android/browser/BrowserActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v1, :cond_0

    .line 122
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lme/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lme/android/browser/BrowserActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 124
    :cond_0
    iget-object v1, p0, Lme/android/browser/BrowserActivity;->mPowerManager:Landroid/os/PowerManager;

    if-nez v1, :cond_1

    .line 125
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lme/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lme/android/browser/BrowserActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 127
    :cond_1
    iget-object v1, p0, Lme/android/browser/BrowserActivity;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 128
    .local v0, "ignore":Z
    :goto_0
    iget-object v1, p0, Lme/android/browser/BrowserActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    or-int/2addr v0, v1

    .line 132
    return v0

    .line 127
    .end local v0    # "ignore":Z
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 302
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lme/android/browser/ActivityController;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 302
    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 278
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lme/android/browser/ActivityController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 278
    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 284
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lme/android/browser/ActivityController;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 284
    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 290
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lme/android/browser/ActivityController;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 290
    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 296
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lme/android/browser/ActivityController;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 296
    goto :goto_0
.end method

.method getController()Lme/android/browser/Controller;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    check-cast v0, Lme/android/browser/Controller;

    return-object v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 262
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lme/android/browser/ActivityController;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 263
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 256
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lme/android/browser/ActivityController;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 257
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 268
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0, p1, p2, p3}, Lme/android/browser/ActivityController;->onActivityResult(IILandroid/content/Intent;)V

    .line 269
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 195
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lme/android/browser/ActivityController;->onConfgurationChanged(Landroid/content/res/Configuration;)V

    .line 196
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 232
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lme/android/browser/ActivityController;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 160
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lme/android/browser/ActivityController;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 161
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0}, Lme/android/browser/BrowserActivity;->shouldIgnoreIntents()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lme/android/browser/BrowserActivity;->finish()V

    .line 76
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Lme/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lme/android/browser/IntentHandler;->handleWebSearchIntent(Landroid/app/Activity;Lme/android/browser/Controller;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lme/android/browser/BrowserActivity;->finish()V

    goto :goto_0

    .line 72
    :cond_1
    invoke-direct {p0}, Lme/android/browser/BrowserActivity;->createController()Lme/android/browser/Controller;

    move-result-object v1

    iput-object v1, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    .line 74
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lme/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v1, v0}, Lme/android/browser/ActivityController;->start(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 227
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0, p1, p2, p3}, Lme/android/browser/ActivityController;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 228
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 207
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lme/android/browser/ActivityController;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 188
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0}, Lme/android/browser/ActivityController;->onDestroy()V

    .line 189
    sget-object v0, Lme/android/browser/stub/NullController;->INSTANCE:Lme/android/browser/stub/NullController;

    iput-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    .line 190
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 237
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0, p1, p2}, Lme/android/browser/ActivityController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 237
    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 243
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0, p1, p2}, Lme/android/browser/ActivityController;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 243
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 249
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0, p1, p2}, Lme/android/browser/ActivityController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 249
    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 201
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0}, Lme/android/browser/ActivityController;->onLowMemory()V

    .line 202
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0, p1, p2}, Lme/android/browser/ActivityController;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 149
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 102
    invoke-direct {p0}, Lme/android/browser/BrowserActivity;->shouldIgnoreIntents()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string v1, "--restart--"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v0, "outState":Landroid/os/Bundle;
    iget-object v1, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v1, v0}, Lme/android/browser/ActivityController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lme/android/browser/BrowserActivity;->finish()V

    .line 107
    invoke-virtual {p0}, Lme/android/browser/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 108
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lme/android/browser/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lme/android/browser/BrowserActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 110
    const-string v3, "state"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 107
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    .end local v0    # "outState":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v1, p1}, Lme/android/browser/ActivityController;->handleNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 218
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lme/android/browser/ActivityController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 154
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lme/android/browser/ActivityController;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 155
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0}, Lme/android/browser/ActivityController;->onPause()V

    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 180
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 213
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lme/android/browser/ActivityController;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 141
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0}, Lme/android/browser/ActivityController;->onResume()V

    .line 142
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lme/android/browser/ActivityController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 174
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lme/android/browser/BrowserActivity;->mController:Lme/android/browser/ActivityController;

    invoke-interface {v0}, Lme/android/browser/ActivityController;->onSearchRequested()Z

    move-result v0

    return v0
.end method
