.class public Lcom/android/browser/BrowserActivity;
.super Landroid/app/Activity;
.source "BrowserActivity.java"


# instance fields
.field private mController:Lcom/android/browser/ActivityController;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    sget-object v0, Lcom/android/browser/stub/NullController;->INSTANCE:Lcom/android/browser/stub/NullController;

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    return-void
.end method

.method private createController()Lcom/android/browser/Controller;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lcom/android/browser/Controller;

    invoke-direct {v0, p0}, Lcom/android/browser/Controller;-><init>(Landroid/app/Activity;)V

    .line 85
    .local v0, "controller":Lcom/android/browser/Controller;
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v2

    .line 86
    .local v2, "xlarge":Z
    const/4 v1, 0x0

    .line 87
    .local v1, "ui":Lcom/android/browser/UI;
    if-eqz v2, :cond_0

    .line 88
    new-instance v1, Lcom/android/browser/XLargeUi;

    .end local v1    # "ui":Lcom/android/browser/UI;
    invoke-direct {v1, p0, v0}, Lcom/android/browser/XLargeUi;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V

    .line 92
    .restart local v1    # "ui":Lcom/android/browser/UI;
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->setUi(Lcom/android/browser/UI;)V

    .line 93
    return-object v0

    .line 90
    :cond_0
    new-instance v1, Lcom/android/browser/PhoneUi;

    .end local v1    # "ui":Lcom/android/browser/UI;
    invoke-direct {v1, p0, v0}, Lcom/android/browser/PhoneUi;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V

    .restart local v1    # "ui":Lcom/android/browser/UI;
    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private shouldIgnoreIntents()Z
    .locals 2

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v1, :cond_0

    .line 123
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mPowerManager:Landroid/os/PowerManager;

    if-nez v1, :cond_1

    .line 126
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 129
    .local v0, "ignore":Z
    :goto_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    or-int/2addr v0, v1

    .line 133
    return v0

    .line 128
    .end local v0    # "ignore":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lcom/android/browser/ActivityController;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lcom/android/browser/ActivityController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lcom/android/browser/ActivityController;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lcom/android/browser/ActivityController;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lcom/android/browser/ActivityController;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getController()Lcom/android/browser/Controller;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    check-cast v0, Lcom/android/browser/Controller;

    return-object v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 262
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 263
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lcom/android/browser/ActivityController;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 264
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 257
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lcom/android/browser/ActivityController;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 258
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/browser/ActivityController;->onActivityResult(IILandroid/content/Intent;)V

    .line 270
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 196
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lcom/android/browser/ActivityController;->onConfgurationChanged(Landroid/content/res/Configuration;)V

    .line 197
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lcom/android/browser/ActivityController;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 161
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lcom/android/browser/ActivityController;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 162
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->shouldIgnoreIntents()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    .line 77
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/browser/IntentHandler;->handleWebSearchIntent(Landroid/app/Activity;Lcom/android/browser/Controller;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    goto :goto_0

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->createController()Lcom/android/browser/Controller;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    .line 75
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v1, v0}, Lcom/android/browser/ActivityController;->start(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/browser/ActivityController;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 229
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 208
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lcom/android/browser/ActivityController;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 189
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0}, Lcom/android/browser/ActivityController;->onDestroy()V

    .line 190
    sget-object v0, Lcom/android/browser/stub/NullController;->INSTANCE:Lcom/android/browser/stub/NullController;

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    .line 191
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/ActivityController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/ActivityController;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/ActivityController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 202
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0}, Lcom/android/browser/ActivityController;->onLowMemory()V

    .line 203
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/ActivityController;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 150
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->shouldIgnoreIntents()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v0, "--restart--"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v1, v0}, Lcom/android/browser/ActivityController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    .line 108
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/browser/BrowserActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lcom/android/browser/ActivityController;->handleNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lcom/android/browser/ActivityController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 222
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
    .line 155
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lcom/android/browser/ActivityController;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 156
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0}, Lcom/android/browser/ActivityController;->onPause()V

    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 181
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 214
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lcom/android/browser/ActivityController;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 142
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0}, Lcom/android/browser/ActivityController;->onResume()V

    .line 143
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0, p1}, Lcom/android/browser/ActivityController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 175
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/ActivityController;

    invoke-interface {v0}, Lcom/android/browser/ActivityController;->onSearchRequested()Z

    move-result v0

    return v0
.end method
