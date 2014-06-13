.class public Lcom/android/browser/PageDialogsHandler;
.super Ljava/lang/Object;
.source "PageDialogsHandler.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/browser/Controller;

.field private mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

.field private mPageInfoDialog:Landroid/app/AlertDialog;

.field private mPageInfoFromShowSSLCertificateOnError:Z

.field private mPageInfoView:Lcom/android/browser/Tab;

.field private mSSLCertificateDialog:Landroid/app/AlertDialog;

.field private mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

.field private mSSLCertificateOnErrorError:Landroid/net/http/SslError;

.field private mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

.field private mSSLCertificateOnErrorView:Landroid/webkit/WebView;

.field private mSSLCertificateView:Lcom/android/browser/Tab;

.field private mUrlCertificateOnError:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/Controller;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/browser/Controller;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/browser/PageDialogsHandler;->mController:Lcom/android/browser/Controller;

    .line 63
    return-void
.end method

.method static synthetic access$002(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/HttpAuthenticationDialog;)Lcom/android/browser/HttpAuthenticationDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/PageDialogsHandler;
    .param p1, "x1"    # Lcom/android/browser/HttpAuthenticationDialog;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/browser/PageDialogsHandler;)Lcom/android/browser/Controller;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/PageDialogsHandler;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mController:Lcom/android/browser/Controller;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/browser/PageDialogsHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/PageDialogsHandler;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/browser/PageDialogsHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/PageDialogsHandler;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/PageDialogsHandler;
    .param p1, "x1"    # Lcom/android/browser/Tab;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoView:Lcom/android/browser/Tab;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/browser/PageDialogsHandler;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/PageDialogsHandler;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/PageDialogsHandler;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/browser/PageDialogsHandler;)Landroid/webkit/SslErrorHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/PageDialogsHandler;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/SslErrorHandler;)Landroid/webkit/SslErrorHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/PageDialogsHandler;
    .param p1, "x1"    # Landroid/webkit/SslErrorHandler;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/browser/PageDialogsHandler;)Landroid/net/http/SslError;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/PageDialogsHandler;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/browser/PageDialogsHandler;Landroid/net/http/SslError;)Landroid/net/http/SslError;
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/PageDialogsHandler;
    .param p1, "x1"    # Landroid/net/http/SslError;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/Tab;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/PageDialogsHandler;
    .param p1, "x1"    # Lcom/android/browser/Tab;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/browser/PageDialogsHandler;->showSSLCertificate(Lcom/android/browser/Tab;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/browser/PageDialogsHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/PageDialogsHandler;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/PageDialogsHandler;
    .param p1, "x1"    # Lcom/android/browser/Tab;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateView:Lcom/android/browser/Tab;

    return-object p1
.end method

.method private addError(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;I)V
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/widget/LinearLayout;
    .param p3, "error"    # I

    .prologue
    .line 394
    const v1, 0x7f04002c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 396
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 397
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 398
    return-void
.end method

.method private createSslCertificateDialog(Landroid/net/http/SslCertificate;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 8
    .param p1, "certificate"    # Landroid/net/http/SslCertificate;
    .param p2, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 345
    iget-object v6, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v6}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 346
    .local v0, "certificateView":Landroid/view/View;
    const v6, 0x1020375

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 349
    .local v3, "placeholder":Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 352
    .local v1, "factory":Landroid/view/LayoutInflater;
    if-nez p2, :cond_1

    .line 353
    const v2, 0x7f020024

    .line 354
    .local v2, "iconId":I
    const v6, 0x7f04002b

    invoke-virtual {v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 355
    .local v5, "table":Landroid/widget/LinearLayout;
    const v6, 0x7f0d0069

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 356
    .local v4, "successString":Landroid/widget/TextView;
    const v6, 0x10404f8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 387
    .end local v4    # "successString":Landroid/widget/TextView;
    .end local v5    # "table":Landroid/widget/LinearLayout;
    :cond_0
    :goto_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x10404f7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    return-object v6

    .line 358
    .end local v2    # "iconId":I
    :cond_1
    const v2, 0x7f020023

    .line 359
    .restart local v2    # "iconId":I
    const/4 v6, 0x3

    invoke-virtual {p2, v6}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 360
    const v6, 0x7f0c001c

    invoke-direct {p0, v1, v3, v6}, Lcom/android/browser/PageDialogsHandler;->addError(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;I)V

    .line 362
    :cond_2
    const/4 v6, 0x2

    invoke-virtual {p2, v6}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 363
    const v6, 0x7f0c001d

    invoke-direct {p0, v1, v3, v6}, Lcom/android/browser/PageDialogsHandler;->addError(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;I)V

    .line 365
    :cond_3
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 366
    const v6, 0x7f0c001e

    invoke-direct {p0, v1, v3, v6}, Lcom/android/browser/PageDialogsHandler;->addError(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;I)V

    .line 368
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 369
    const v6, 0x7f0c001f

    invoke-direct {p0, v1, v3, v6}, Lcom/android/browser/PageDialogsHandler;->addError(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;I)V

    .line 371
    :cond_5
    const/4 v6, 0x4

    invoke-virtual {p2, v6}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 372
    const v6, 0x7f0c0020

    invoke-direct {p0, v1, v3, v6}, Lcom/android/browser/PageDialogsHandler;->addError(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;I)V

    .line 374
    :cond_6
    const/4 v6, 0x5

    invoke-virtual {p2, v6}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 375
    const v6, 0x7f0c0021

    invoke-direct {p0, v1, v3, v6}, Lcom/android/browser/PageDialogsHandler;->addError(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;I)V

    .line 382
    :cond_7
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 383
    const v6, 0x7f0c0022

    invoke-direct {p0, v1, v3, v6}, Lcom/android/browser/PageDialogsHandler;->addError(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;I)V

    goto :goto_0
.end method

.method private showSSLCertificate(Lcom/android/browser/Tab;)V
    .locals 4
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 243
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    .line 244
    .local v0, "cert":Landroid/net/http/SslCertificate;
    if-nez v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 248
    :cond_0
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateView:Lcom/android/browser/Tab;

    .line 249
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSslCertificateError()Landroid/net/http/SslError;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/browser/PageDialogsHandler;->createSslCertificateDialog(Landroid/net/http/SslCertificate;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0012

    new-instance v3, Lcom/android/browser/PageDialogsHandler$7;

    invoke-direct {v3, p0, p1}, Lcom/android/browser/PageDialogsHandler$7;-><init>(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/Tab;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/browser/PageDialogsHandler$6;

    invoke-direct {v2, p0, p1}, Lcom/android/browser/PageDialogsHandler$6;-><init>(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/Tab;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 68
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoView:Lcom/android/browser/Tab;

    iget-boolean v1, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoFromShowSSLCertificateOnError:Z

    iget-object v2, p0, Lcom/android/browser/PageDialogsHandler;->mUrlCertificateOnError:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/browser/PageDialogsHandler;->showPageInfo(Lcom/android/browser/Tab;ZLjava/lang/String;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 74
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateView:Lcom/android/browser/Tab;

    invoke-direct {p0, v0}, Lcom/android/browser/PageDialogsHandler;->showSSLCertificate(Lcom/android/browser/Tab;)V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 78
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    iget-object v2, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/browser/PageDialogsHandler;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

    invoke-virtual {v0}, Lcom/android/browser/HttpAuthenticationDialog;->reshow()V

    .line 85
    :cond_3
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/browser/PageDialogsHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 122
    .local v0, "w":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method showHttpAuthentication(Lcom/android/browser/Tab;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tab"    # Lcom/android/browser/Tab;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Lcom/android/browser/HttpAuthenticationDialog;

    iget-object v1, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3, p4}, Lcom/android/browser/HttpAuthenticationDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

    .line 92
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

    new-instance v1, Lcom/android/browser/PageDialogsHandler$1;

    invoke-direct {v1, p0, p2}, Lcom/android/browser/PageDialogsHandler$1;-><init>(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/browser/HttpAuthenticationDialog;->setOkListener(Lcom/android/browser/HttpAuthenticationDialog$OkListener;)V

    .line 99
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

    new-instance v1, Lcom/android/browser/PageDialogsHandler$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/browser/PageDialogsHandler$2;-><init>(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/HttpAuthHandler;Lcom/android/browser/Tab;)V

    invoke-virtual {v0, v1}, Lcom/android/browser/HttpAuthenticationDialog;->setCancelListener(Lcom/android/browser/HttpAuthenticationDialog$CancelListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

    invoke-virtual {v0}, Lcom/android/browser/HttpAuthenticationDialog;->show()V

    .line 107
    return-void
.end method

.method showPageInfo(Lcom/android/browser/Tab;ZLjava/lang/String;)V
    .locals 9
    .param p1, "tab"    # Lcom/android/browser/Tab;
    .param p2, "fromShowSSLCertificateOnError"    # Z
    .param p3, "urlCertificateOnError"    # Ljava/lang/String;

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v6, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 143
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v6, 0x7f040022

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 145
    .local v2, "pageInfoView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    .line 147
    .local v5, "view":Landroid/webkit/WebView;
    if-eqz p2, :cond_5

    move-object v4, p3

    .line 148
    .local v4, "url":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "title":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 151
    const-string v4, ""

    .line 153
    :cond_1
    if-nez v3, :cond_2

    .line 154
    const-string v3, ""

    .line 157
    :cond_2
    const v6, 0x7f0d0032

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const v6, 0x7f0d0007

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoView:Lcom/android/browser/Tab;

    .line 161
    iput-boolean p2, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoFromShowSSLCertificateOnError:Z

    .line 162
    iput-object p3, p0, Lcom/android/browser/PageDialogsHandler;->mUrlCertificateOnError:Ljava/lang/String;

    .line 164
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0c0014

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x108009b

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c0012

    new-instance v8, Lcom/android/browser/PageDialogsHandler$4;

    invoke-direct {v8, p0, p2}, Lcom/android/browser/PageDialogsHandler$4;-><init>(Lcom/android/browser/PageDialogsHandler;Z)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/browser/PageDialogsHandler$3;

    invoke-direct {v7, p0, p2}, Lcom/android/browser/PageDialogsHandler$3;-><init>(Lcom/android/browser/PageDialogsHandler;Z)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 206
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    if-nez p2, :cond_3

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 209
    :cond_3
    const v6, 0x7f0c001a

    new-instance v7, Lcom/android/browser/PageDialogsHandler$5;

    invoke-direct {v7, p0, p2, p1}, Lcom/android/browser/PageDialogsHandler$5;-><init>(Lcom/android/browser/PageDialogsHandler;ZLcom/android/browser/Tab;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 233
    :cond_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 147
    .end local v0    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 283
    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    .line 284
    .local v0, "cert":Landroid/net/http/SslCertificate;
    if-nez v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 288
    :cond_0
    iput-object p2, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    .line 289
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    .line 290
    iput-object p3, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    .line 291
    invoke-direct {p0, v0, p3}, Lcom/android/browser/PageDialogsHandler;->createSslCertificateDialog(Landroid/net/http/SslCertificate;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0012

    new-instance v3, Lcom/android/browser/PageDialogsHandler$10;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/browser/PageDialogsHandler$10;-><init>(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0015

    new-instance v3, Lcom/android/browser/PageDialogsHandler$9;

    invoke-direct {v3, p0, p1, p3}, Lcom/android/browser/PageDialogsHandler$9;-><init>(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/WebView;Landroid/net/http/SslError;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/browser/PageDialogsHandler$8;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/browser/PageDialogsHandler$8;-><init>(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method
