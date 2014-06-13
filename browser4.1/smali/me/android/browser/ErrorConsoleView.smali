.class Lme/android/browser/ErrorConsoleView;
.super Landroid/widget/LinearLayout;
.source "ErrorConsoleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/android/browser/ErrorConsoleView$ErrorConsoleListView;
    }
.end annotation


# static fields
.field public static final SHOW_MAXIMIZED:I = 0x1

.field public static final SHOW_MINIMIZED:I = 0x0

.field public static final SHOW_NONE:I = 0x2


# instance fields
.field private mConsoleHeader:Landroid/widget/TextView;

.field private mCurrentShowState:I

.field private mErrorList:Lme/android/browser/ErrorConsoleView$ErrorConsoleListView;

.field private mErrorMessageCache:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/webkit/ConsoleMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mEvalButton:Landroid/widget/Button;

.field private mEvalEditText:Landroid/widget/EditText;

.field private mEvalJsViewGroup:Landroid/widget/LinearLayout;

.field private mSetupComplete:Z

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lme/android/browser/ErrorConsoleView;->mCurrentShowState:I

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/android/browser/ErrorConsoleView;->mSetupComplete:Z

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lme/android/browser/ErrorConsoleView;->mCurrentShowState:I

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/android/browser/ErrorConsoleView;->mSetupComplete:Z

    .line 68
    return-void
.end method

.method static synthetic access$0(Lme/android/browser/ErrorConsoleView;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1(Lme/android/browser/ErrorConsoleView;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView;->mEvalEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lme/android/browser/ErrorConsoleView;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lme/android/browser/ErrorConsoleView;->mCurrentShowState:I

    return v0
.end method

.method private commonSetupIfNeeded()V
    .locals 4

    .prologue
    .line 71
    iget-boolean v2, p0, Lme/android/browser/ErrorConsoleView;->mSetupComplete:Z

    if-eqz v2, :cond_0

    .line 120
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lme/android/browser/ErrorConsoleView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 76
    const-string v3, "layout_inflater"

    .line 75
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 77
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040015

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 80
    const v2, 0x7f0d0043

    invoke-virtual {p0, v2}, Lme/android/browser/ErrorConsoleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lme/android/browser/ErrorConsoleView;->mConsoleHeader:Landroid/widget/TextView;

    .line 81
    const v2, 0x7f0d0044

    invoke-virtual {p0, v2}, Lme/android/browser/ErrorConsoleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lme/android/browser/ErrorConsoleView$ErrorConsoleListView;

    iput-object v2, p0, Lme/android/browser/ErrorConsoleView;->mErrorList:Lme/android/browser/ErrorConsoleView$ErrorConsoleListView;

    .line 82
    const v2, 0x7f0d0045

    invoke-virtual {p0, v2}, Lme/android/browser/ErrorConsoleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lme/android/browser/ErrorConsoleView;->mEvalJsViewGroup:Landroid/widget/LinearLayout;

    .line 83
    const v2, 0x7f0d0046

    invoke-virtual {p0, v2}, Lme/android/browser/ErrorConsoleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lme/android/browser/ErrorConsoleView;->mEvalEditText:Landroid/widget/EditText;

    .line 84
    const v2, 0x7f0d0047

    invoke-virtual {p0, v2}, Lme/android/browser/ErrorConsoleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lme/android/browser/ErrorConsoleView;->mEvalButton:Landroid/widget/Button;

    .line 86
    iget-object v2, p0, Lme/android/browser/ErrorConsoleView;->mEvalButton:Landroid/widget/Button;

    new-instance v3, Lme/android/browser/ErrorConsoleView$1;

    invoke-direct {v3, p0}, Lme/android/browser/ErrorConsoleView$1;-><init>(Lme/android/browser/ErrorConsoleView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v2, p0, Lme/android/browser/ErrorConsoleView;->mConsoleHeader:Landroid/widget/TextView;

    new-instance v3, Lme/android/browser/ErrorConsoleView$2;

    invoke-direct {v3, p0}, Lme/android/browser/ErrorConsoleView$2;-><init>(Lme/android/browser/ErrorConsoleView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v2, p0, Lme/android/browser/ErrorConsoleView;->mErrorMessageCache:Ljava/util/Vector;

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lme/android/browser/ErrorConsoleView;->mErrorMessageCache:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 116
    iget-object v2, p0, Lme/android/browser/ErrorConsoleView;->mErrorMessageCache:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 119
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lme/android/browser/ErrorConsoleView;->mSetupComplete:Z

    goto :goto_0

    .line 113
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ConsoleMessage;

    .line 114
    .local v1, "msg":Landroid/webkit/ConsoleMessage;
    iget-object v3, p0, Lme/android/browser/ErrorConsoleView;->mErrorList:Lme/android/browser/ErrorConsoleView$ErrorConsoleListView;

    invoke-virtual {v3, v1}, Lme/android/browser/ErrorConsoleView$ErrorConsoleListView;->addErrorMessage(Landroid/webkit/ConsoleMessage;)V

    goto :goto_1
.end method


# virtual methods
.method public addErrorMessage(Landroid/webkit/ConsoleMessage;)V
    .locals 1
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 126
    iget-boolean v0, p0, Lme/android/browser/ErrorConsoleView;->mSetupComplete:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView;->mErrorList:Lme/android/browser/ErrorConsoleView$ErrorConsoleListView;

    invoke-virtual {v0, p1}, Lme/android/browser/ErrorConsoleView$ErrorConsoleListView;->addErrorMessage(Landroid/webkit/ConsoleMessage;)V

    .line 134
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView;->mErrorMessageCache:Ljava/util/Vector;

    if-nez v0, :cond_1

    .line 130
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lme/android/browser/ErrorConsoleView;->mErrorMessageCache:Ljava/util/Vector;

    .line 132
    :cond_1
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView;->mErrorMessageCache:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clearErrorMessages()V
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lme/android/browser/ErrorConsoleView;->mSetupComplete:Z

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView;->mErrorList:Lme/android/browser/ErrorConsoleView$ErrorConsoleListView;

    invoke-virtual {v0}, Lme/android/browser/ErrorConsoleView$ErrorConsoleListView;->clearErrorMessages()V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView;->mErrorMessageCache:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView;->mErrorMessageCache:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto :goto_0
.end method

.method public getShowState()I
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lme/android/browser/ErrorConsoleView;->mSetupComplete:Z

    if-eqz v0, :cond_0

    .line 200
    iget v0, p0, Lme/android/browser/ErrorConsoleView;->mCurrentShowState:I

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public numberOfErrors()I
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lme/android/browser/ErrorConsoleView;->mSetupComplete:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView;->mErrorList:Lme/android/browser/ErrorConsoleView$ErrorConsoleListView;

    invoke-virtual {v0}, Lme/android/browser/ErrorConsoleView$ErrorConsoleListView;->getCount()I

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView;->mErrorMessageCache:Ljava/util/Vector;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView;->mErrorMessageCache:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "webview"    # Landroid/webkit/WebView;

    .prologue
    .line 163
    iput-object p1, p0, Lme/android/browser/ErrorConsoleView;->mWebView:Landroid/webkit/WebView;

    .line 164
    return-void
.end method

.method public showConsole(I)V
    .locals 4
    .param p1, "show_state"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 170
    invoke-direct {p0}, Lme/android/browser/ErrorConsoleView;->commonSetupIfNeeded()V

    .line 171
    packed-switch p1, :pswitch_data_0

    .line 192
    :goto_0
    iput p1, p0, Lme/android/browser/ErrorConsoleView;->mCurrentShowState:I

    .line 193
    return-void

    .line 173
    :pswitch_0
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView;->mConsoleHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView;->mConsoleHeader:Landroid/widget/TextView;

    const v1, 0x7f080138

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 175
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView;->mErrorList:Lme/android/browser/ErrorConsoleView$ErrorConsoleListView;

    invoke-virtual {v0, v2}, Lme/android/browser/ErrorConsoleView$ErrorConsoleListView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView;->mEvalJsViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView;->mConsoleHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView;->mConsoleHeader:Landroid/widget/TextView;

    const v1, 0x7f080139

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 182
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView;->mErrorList:Lme/android/browser/ErrorConsoleView$ErrorConsoleListView;

    invoke-virtual {v0, v3}, Lme/android/browser/ErrorConsoleView$ErrorConsoleListView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView;->mEvalJsViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 187
    :pswitch_2
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView;->mConsoleHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView;->mErrorList:Lme/android/browser/ErrorConsoleView$ErrorConsoleListView;

    invoke-virtual {v0, v2}, Lme/android/browser/ErrorConsoleView$ErrorConsoleListView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView;->mEvalJsViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
