.class public Lme/android/browser/NavigationBarPhone;
.super Lme/android/browser/NavigationBarBase;
.source "NavigationBarPhone.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lme/android/browser/UrlInputView$StateListener;


# instance fields
.field private mClearButton:Landroid/widget/ImageView;

.field private mComboIcon:Landroid/view/View;

.field private mIncognitoIcon:Landroid/view/View;

.field private mMagnify:Landroid/widget/ImageView;

.field private mMore:Landroid/view/View;

.field private mNeedsMenu:Z

.field private mOverflowMenuShowing:Z

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mRefreshDescription:Ljava/lang/String;

.field private mRefreshDrawable:Landroid/graphics/drawable/Drawable;

.field private mStopButton:Landroid/widget/ImageView;

.field private mStopDescription:Ljava/lang/String;

.field private mStopDrawable:Landroid/graphics/drawable/Drawable;

.field private mTabSwitcher:Landroid/view/View;

.field private mTextfieldBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mTitleContainer:Landroid/view/View;

.field private mVoiceButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lme/android/browser/NavigationBarBase;-><init>(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lme/android/browser/NavigationBarBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lme/android/browser/NavigationBarBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method private onMenuHidden()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/android/browser/NavigationBarPhone;->mOverflowMenuShowing:Z

    .line 199
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mBaseUi:Lme/android/browser/BaseUi;

    invoke-virtual {v0}, Lme/android/browser/BaseUi;->showTitleBarForDuration()V

    .line 200
    return-void
.end method


# virtual methods
.method public isMenuShowing()Z
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lme/android/browser/NavigationBarBase;->isMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lme/android/browser/NavigationBarPhone;->mOverflowMenuShowing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    .line 143
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v1}, Lme/android/browser/TitleBar;->isInLoad()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v1}, Lme/android/browser/UiController;->stopLoading()V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mBaseUi:Lme/android/browser/BaseUi;

    invoke-virtual {v1}, Lme/android/browser/BaseUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 147
    .local v0, "web":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lme/android/browser/NavigationBarPhone;->stopEditingUrl()V

    .line 149
    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 152
    .end local v0    # "web":Landroid/webkit/WebView;
    :cond_2
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mTabSwitcher:Landroid/view/View;

    if-ne p1, v1, :cond_3

    .line 153
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mBaseUi:Lme/android/browser/BaseUi;

    check-cast v1, Lme/android/browser/PhoneUi;

    invoke-virtual {v1}, Lme/android/browser/PhoneUi;->toggleNavScreen()V

    goto :goto_0

    .line 154
    :cond_3
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mMore:Landroid/view/View;

    if-ne v1, p1, :cond_4

    .line 155
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mMore:Landroid/view/View;

    invoke-virtual {p0, v1}, Lme/android/browser/NavigationBarPhone;->showMenu(Landroid/view/View;)V

    goto :goto_0

    .line 156
    :cond_4
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mClearButton:Landroid/widget/ImageView;

    if-ne v1, p1, :cond_5

    .line 157
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mUrlInput:Lme/android/browser/UrlInputView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lme/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 158
    :cond_5
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mComboIcon:Landroid/view/View;

    if-ne v1, p1, :cond_6

    .line 159
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v1}, Lme/android/browser/UiController;->showPageInfo()V

    goto :goto_0

    .line 160
    :cond_6
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mVoiceButton:Landroid/widget/ImageView;

    if-ne v1, p1, :cond_7

    .line 161
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v1}, Lme/android/browser/UiController;->startVoiceRecognizer()V

    goto :goto_0

    .line 163
    :cond_7
    invoke-super {p0, p1}, Lme/android/browser/NavigationBarBase;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 192
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    if-ne p1, v0, :cond_0

    .line 193
    invoke-direct {p0}, Lme/android/browser/NavigationBarPhone;->onMenuHidden()V

    .line 195
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-super {p0}, Lme/android/browser/NavigationBarBase;->onFinishInflate()V

    .line 71
    const v1, 0x7f0d0081

    invoke-virtual {p0, v1}, Lme/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lme/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    .line 72
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f0d0083

    invoke-virtual {p0, v1}, Lme/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lme/android/browser/NavigationBarPhone;->mClearButton:Landroid/widget/ImageView;

    .line 74
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v1, 0x7f0d0082

    invoke-virtual {p0, v1}, Lme/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lme/android/browser/NavigationBarPhone;->mVoiceButton:Landroid/widget/ImageView;

    .line 76
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v1, 0x7f0d007e

    invoke-virtual {p0, v1}, Lme/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lme/android/browser/NavigationBarPhone;->mMagnify:Landroid/widget/ImageView;

    .line 78
    const v1, 0x7f0d0084

    invoke-virtual {p0, v1}, Lme/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lme/android/browser/NavigationBarPhone;->mTabSwitcher:Landroid/view/View;

    .line 79
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mTabSwitcher:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v1, 0x7f0d0059

    invoke-virtual {p0, v1}, Lme/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lme/android/browser/NavigationBarPhone;->mMore:Landroid/view/View;

    .line 81
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mMore:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v1, 0x7f0d0080

    invoke-virtual {p0, v1}, Lme/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lme/android/browser/NavigationBarPhone;->mComboIcon:Landroid/view/View;

    .line 83
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mComboIcon:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v1, 0x7f0d007d

    invoke-virtual {p0, v1}, Lme/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lme/android/browser/NavigationBarPhone;->mTitleContainer:Landroid/view/View;

    .line 85
    invoke-virtual {p0, v2}, Lme/android/browser/NavigationBarPhone;->setFocusState(Z)V

    .line 86
    invoke-virtual {p0}, Lme/android/browser/NavigationBarPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lme/android/browser/NavigationBarPhone;->mStopDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lme/android/browser/NavigationBarPhone;->mRefreshDrawable:Landroid/graphics/drawable/Drawable;

    .line 89
    const v1, 0x7f08015b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/android/browser/NavigationBarPhone;->mStopDescription:Ljava/lang/String;

    .line 90
    const v1, 0x7f08015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/android/browser/NavigationBarPhone;->mRefreshDescription:Ljava/lang/String;

    .line 91
    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lme/android/browser/NavigationBarPhone;->mTextfieldBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mUrlInput:Lme/android/browser/UrlInputView;

    invoke-virtual {v1, p0}, Lme/android/browser/UrlInputView;->setContainer(Landroid/view/View;)V

    .line 93
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mUrlInput:Lme/android/browser/UrlInputView;

    invoke-virtual {v1, p0}, Lme/android/browser/UrlInputView;->setStateListener(Lme/android/browser/UrlInputView$StateListener;)V

    .line 94
    invoke-virtual {p0}, Lme/android/browser/NavigationBarPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lme/android/browser/NavigationBarPhone;->mNeedsMenu:Z

    .line 95
    const v1, 0x7f0d007f

    invoke-virtual {p0, v1}, Lme/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lme/android/browser/NavigationBarPhone;->mIncognitoIcon:Landroid/view/View;

    .line 96
    return-void

    .line 94
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 204
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mUrlInput:Lme/android/browser/UrlInputView;

    if-ne p1, v0, :cond_0

    .line 205
    if-eqz p2, :cond_1

    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mUrlInput:Lme/android/browser/UrlInputView;

    invoke-virtual {v0}, Lme/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mUrlInput:Lme/android/browser/UrlInputView;

    invoke-virtual {v1}, Lme/android/browser/UrlInputView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mUrlInput:Lme/android/browser/UrlInputView;

    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mUrlInput:Lme/android/browser/UrlInputView;

    invoke-virtual {v0}, Lme/android/browser/UrlInputView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lme/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;Z)V

    .line 208
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mUrlInput:Lme/android/browser/UrlInputView;

    invoke-virtual {v0}, Lme/android/browser/UrlInputView;->selectAll()V

    .line 213
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lme/android/browser/NavigationBarBase;->onFocusChange(Landroid/view/View;Z)V

    .line 214
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mUrlInput:Lme/android/browser/UrlInputView;

    invoke-virtual {v0}, Lme/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/android/browser/NavigationBarPhone;->setDisplayTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 261
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v0, p1}, Lme/android/browser/UiController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onProgressStarted()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lme/android/browser/NavigationBarBase;->onProgressStarted()V

    .line 101
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mStopDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mStopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mStopDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mComboIcon:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public onProgressStopped()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Lme/android/browser/NavigationBarBase;->onProgressStopped()V

    .line 114
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mRefreshDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mRefreshDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p0}, Lme/android/browser/NavigationBarPhone;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mComboIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :cond_0
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mUrlInput:Lme/android/browser/UrlInputView;

    invoke-virtual {v0}, Lme/android/browser/UrlInputView;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lme/android/browser/NavigationBarPhone;->onStateChanged(I)V

    .line 120
    return-void
.end method

.method public onStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 218
    packed-switch p1, :pswitch_data_0

    .line 250
    :goto_0
    return-void

    .line 220
    :pswitch_0
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mComboIcon:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mMagnify:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mTabSwitcher:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mTitleContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mMore:Landroid/view/View;

    iget-boolean v3, p0, Lme/android/browser/NavigationBarPhone;->mNeedsMenu:Z

    if-eqz v3, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 230
    :pswitch_1
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mComboIcon:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mMagnify:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mTabSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mMore:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mTitleContainer:Landroid/view/View;

    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mTextfieldBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 240
    :pswitch_2
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mComboIcon:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mMagnify:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mTabSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mMore:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mTitleContainer:Landroid/view/View;

    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mTextfieldBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTabDataChanged(Lme/android/browser/Tab;)V
    .locals 2
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 254
    invoke-super {p0, p1}, Lme/android/browser/NavigationBarBase;->onTabDataChanged(Lme/android/browser/Tab;)V

    .line 255
    iget-object v1, p0, Lme/android/browser/NavigationBarPhone;->mIncognitoIcon:Landroid/view/View;

    invoke-virtual {p1}, Lme/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 255
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 257
    return-void

    .line 256
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method setDisplayTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mUrlInput:Lme/android/browser/UrlInputView;

    invoke-virtual {v0, p1}, Lme/android/browser/UrlInputView;->setTag(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0}, Lme/android/browser/NavigationBarPhone;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    if-nez p1, :cond_1

    .line 132
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mUrlInput:Lme/android/browser/UrlInputView;

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Lme/android/browser/UrlInputView;->setText(I)V

    .line 136
    :goto_0
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mUrlInput:Lme/android/browser/UrlInputView;

    invoke-virtual {v0, v2}, Lme/android/browser/UrlInputView;->setSelection(I)V

    .line 138
    :cond_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lme/android/browser/NavigationBarPhone;->mUrlInput:Lme/android/browser/UrlInputView;

    invoke-static {p1}, Lme/android/browser/UrlUtils;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lme/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method showMenu(Landroid/view/View;)V
    .locals 4
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v2}, Lme/android/browser/UiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 174
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    if-nez v2, :cond_1

    .line 175
    new-instance v2, Landroid/widget/PopupMenu;

    iget-object v3, p0, Lme/android/browser/NavigationBarPhone;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lme/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 176
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 177
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 178
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 179
    const/4 v2, 0x0

    iput-object v2, p0, Lme/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 184
    .local v1, "menu":Landroid/view/Menu;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    const/4 v2, 0x1

    iput-boolean v2, p0, Lme/android/browser/NavigationBarPhone;->mOverflowMenuShowing:Z

    .line 186
    iget-object v2, p0, Lme/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method
