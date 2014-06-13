.class Lme/android/browser/Preloader$PreloaderSession;
.super Ljava/lang/Object;
.source "Preloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/Preloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloaderSession"
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mTabControl:Lme/android/browser/PreloadedTabControl;

.field private final mTimeoutTask:Ljava/lang/Runnable;

.field final synthetic this$0:Lme/android/browser/Preloader;


# direct methods
.method public constructor <init>(Lme/android/browser/Preloader;Ljava/lang/String;)V
    .locals 5
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lme/android/browser/Preloader$PreloaderSession;->this$0:Lme/android/browser/Preloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Lme/android/browser/Preloader$PreloaderSession$1;

    invoke-direct {v0, p0}, Lme/android/browser/Preloader$PreloaderSession$1;-><init>(Lme/android/browser/Preloader$PreloaderSession;)V

    iput-object v0, p0, Lme/android/browser/Preloader$PreloaderSession;->mTimeoutTask:Ljava/lang/Runnable;

    .line 152
    iput-object p2, p0, Lme/android/browser/Preloader$PreloaderSession;->mId:Ljava/lang/String;

    .line 153
    new-instance v0, Lme/android/browser/PreloadedTabControl;

    .line 154
    new-instance v1, Lme/android/browser/Tab;

    new-instance v2, Lme/android/browser/PreloadController;

    # getter for: Lme/android/browser/Preloader;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lme/android/browser/Preloader;->access$0(Lme/android/browser/Preloader;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lme/android/browser/PreloadController;-><init>(Landroid/content/Context;)V

    # getter for: Lme/android/browser/Preloader;->mFactory:Lme/android/browser/BrowserWebViewFactory;
    invoke-static {p1}, Lme/android/browser/Preloader;->access$1(Lme/android/browser/Preloader;)Lme/android/browser/BrowserWebViewFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lme/android/browser/BrowserWebViewFactory;->createWebView(Z)Landroid/webkit/WebView;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lme/android/browser/Tab;-><init>(Lme/android/browser/WebViewController;Landroid/webkit/WebView;)V

    invoke-direct {v0, v1}, Lme/android/browser/PreloadedTabControl;-><init>(Lme/android/browser/Tab;)V

    .line 153
    iput-object v0, p0, Lme/android/browser/Preloader$PreloaderSession;->mTabControl:Lme/android/browser/PreloadedTabControl;

    .line 155
    invoke-virtual {p0}, Lme/android/browser/Preloader$PreloaderSession;->touch()V

    .line 156
    return-void
.end method

.method static synthetic access$0(Lme/android/browser/Preloader$PreloaderSession;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lme/android/browser/Preloader$PreloaderSession;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lme/android/browser/Preloader$PreloaderSession;)Lme/android/browser/Preloader;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lme/android/browser/Preloader$PreloaderSession;->this$0:Lme/android/browser/Preloader;

    return-object v0
.end method


# virtual methods
.method public cancelTimeout()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lme/android/browser/Preloader$PreloaderSession;->this$0:Lme/android/browser/Preloader;

    # getter for: Lme/android/browser/Preloader;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lme/android/browser/Preloader;->access$2(Lme/android/browser/Preloader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lme/android/browser/Preloader$PreloaderSession;->mTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method public getTabControl()Lme/android/browser/PreloadedTabControl;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lme/android/browser/Preloader$PreloaderSession;->mTabControl:Lme/android/browser/PreloadedTabControl;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 2

    .prologue
    .line 172
    iget-object v1, p0, Lme/android/browser/Preloader$PreloaderSession;->mTabControl:Lme/android/browser/PreloadedTabControl;

    invoke-virtual {v1}, Lme/android/browser/PreloadedTabControl;->getTab()Lme/android/browser/Tab;

    move-result-object v0

    .line 173
    .local v0, "t":Lme/android/browser/Tab;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    goto :goto_0
.end method

.method public touch()V
    .locals 4

    .prologue
    .line 163
    invoke-virtual {p0}, Lme/android/browser/Preloader$PreloaderSession;->cancelTimeout()V

    .line 164
    iget-object v0, p0, Lme/android/browser/Preloader$PreloaderSession;->this$0:Lme/android/browser/Preloader;

    # getter for: Lme/android/browser/Preloader;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lme/android/browser/Preloader;->access$2(Lme/android/browser/Preloader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lme/android/browser/Preloader$PreloaderSession;->mTimeoutTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    return-void
.end method