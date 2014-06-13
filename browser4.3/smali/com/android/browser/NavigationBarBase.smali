.class public Lcom/android/browser/NavigationBarBase;
.super Landroid/widget/LinearLayout;
.source "NavigationBarBase.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/browser/UrlInputView$UrlInputListener;


# instance fields
.field protected mBaseUi:Lcom/android/browser/BaseUi;

.field private mFavicon:Landroid/widget/ImageView;

.field private mLockIcon:Landroid/widget/ImageView;

.field protected mTitleBar:Lcom/android/browser/TitleBar;

.field protected mUiController:Lcom/android/browser/UiController;

.field protected mUrlInput:Lcom/android/browser/UrlInputView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 272
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 266
    return-void
.end method

.method clearCompletions()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->dismissDropDown()V

    .line 149
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "evt"    # Landroid/view/KeyEvent;

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarBase;->stopEditingUrl()V

    .line 221
    const/4 v0, 0x1

    .line 223
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public isEditingUrl()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public isMenuShowing()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public onAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarBase;->stopEditingUrl()V

    .line 160
    const-string v5, "browser-type"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 161
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/android/browser/UrlUtils;->smartUrlFilter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v5}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v3

    .line 165
    .local v3, "t":Lcom/android/browser/Tab;
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    const-string v5, "javascript:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 166
    iget-object v5, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v5, v3, v4}, Lcom/android/browser/UiController;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    .line 185
    .end local v3    # "t":Lcom/android/browser/Tab;
    .end local v4    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 172
    .local v2, "i":Landroid/content/Intent;
    const-string v0, "android.intent.action.SEARCH"

    .line 173
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v5, "query"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    if-eqz p2, :cond_1

    .line 176
    const-string v5, "intent_extra_data_key"

    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    :cond_1
    if-eqz p3, :cond_2

    .line 179
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v1, "appData":Landroid/os/Bundle;
    const-string v5, "source"

    invoke-virtual {v1, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v5, "app_data"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 183
    .end local v1    # "appData":Landroid/os/Bundle;
    :cond_2
    iget-object v5, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v5, v2}, Lcom/android/browser/UiController;->handleNewIntent(Landroid/content/Intent;)V

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    return-void
.end method

.method public onCopySuggestion(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;Z)V

    .line 208
    if-eqz p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setSelection(I)V

    .line 211
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 190
    .local v0, "currentTab":Lcom/android/browser/Tab;
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->hideTitleBar()V

    .line 191
    new-instance v1, Lcom/android/browser/NavigationBarBase$1;

    invoke-direct {v1, p0, v0}, Lcom/android/browser/NavigationBarBase$1;-><init>(Lcom/android/browser/NavigationBarBase;Lcom/android/browser/Tab;)V

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarBase;->post(Ljava/lang/Runnable;)Z

    .line 199
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 64
    const v0, 0x7f0d0073

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/NavigationBarBase;->mLockIcon:Landroid/widget/ImageView;

    .line 65
    const v0, 0x7f0d0006

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/NavigationBarBase;->mFavicon:Landroid/widget/ImageView;

    .line 66
    const v0, 0x7f0d0008

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/browser/UrlInputView;

    iput-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    .line 67
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, p0}, Lcom/android/browser/UrlInputView;->setUrlInputListener(Lcom/android/browser/UrlInputView$UrlInputListener;)V

    .line 68
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, p0}, Lcom/android/browser/UrlInputView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 69
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setSelectAllOnFocus(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, p0}, Lcom/android/browser/UrlInputView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 102
    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->needsUpdate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/browser/NavigationBarBase;->setFocusState(Z)V

    .line 105
    :cond_1
    if-eqz p2, :cond_3

    .line 106
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->showTitleBar()V

    .line 118
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->clearNeedsUpdate()V

    .line 119
    return-void

    .line 107
    :cond_3
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->needsUpdate()Z

    move-result v1

    if-nez v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->dismissDropDown()V

    .line 109
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->hideIME()V

    .line 110
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 111
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 112
    .local v0, "currentTab":Lcom/android/browser/Tab;
    if-eqz v0, :cond_4

    .line 113
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    .line 116
    .end local v0    # "currentTab":Lcom/android/browser/Tab;
    :cond_4
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->suggestHideTitleBar()V

    goto :goto_0
.end method

.method public onProgressStarted()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public onProgressStopped()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public onTabDataChanged(Lcom/android/browser/Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 258
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 269
    return-void
.end method

.method public onVoiceResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 261
    invoke-virtual {p0, v0, v0}, Lcom/android/browser/NavigationBarBase;->startEditingUrl(ZZ)V

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/browser/NavigationBarBase;->onCopySuggestion(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public setCurrentUrlIsBookmark(Z)V
    .locals 0
    .param p1, "isBookmark"    # Z

    .prologue
    .line 214
    return-void
.end method

.method setDisplayTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarBase;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;Z)V

    .line 141
    :cond_0
    return-void
.end method

.method public setFavicon(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mFavicon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mFavicon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1, p1}, Lcom/android/browser/BaseUi;->getFaviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected setFocusState(Z)V
    .locals 0
    .param p1, "focus"    # Z

    .prologue
    .line 122
    return-void
.end method

.method setIncognitoMode(Z)V
    .locals 1
    .param p1, "incognito"    # Z

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, p1}, Lcom/android/browser/UrlInputView;->setIncognitoMode(Z)V

    .line 145
    return-void
.end method

.method public setLock(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mLockIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 82
    :cond_0
    if-nez p1, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mLockIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mLockIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitleBar(Lcom/android/browser/TitleBar;)V
    .locals 2
    .param p1, "titleBar"    # Lcom/android/browser/TitleBar;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/browser/NavigationBarBase;->mTitleBar:Lcom/android/browser/TitleBar;

    .line 75
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getUi()Lcom/android/browser/BaseUi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    .line 76
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getUiController()Lcom/android/browser/UiController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    .line 77
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setController(Lcom/android/browser/UiController;)V

    .line 78
    return-void
.end method

.method startEditingUrl(ZZ)V
    .locals 2
    .param p1, "clearInput"    # Z
    .param p2, "forceIME"    # Z

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarBase;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->useQuickControls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getProgressView()Lcom/android/browser/PageProgressView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/browser/PageProgressView;->setVisibility(I)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->requestFocus()Z

    .line 239
    :cond_1
    if-eqz p1, :cond_2

    .line 240
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :cond_2
    if-eqz p2, :cond_3

    .line 243
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->showIME()V

    .line 245
    :cond_3
    return-void
.end method

.method stopEditingUrl()V
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 130
    .local v0, "currentTopWebView":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 133
    :cond_0
    return-void
.end method
