.class Lme/android/browser/GoogleAccountLogin$3;
.super Ljava/lang/Object;
.source "GoogleAccountLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/GoogleAccountLogin;->done()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/GoogleAccountLogin;


# direct methods
.method constructor <init>(Lme/android/browser/GoogleAccountLogin;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/GoogleAccountLogin$3;->this$0:Lme/android/browser/GoogleAccountLogin;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lme/android/browser/GoogleAccountLogin$3;->this$0:Lme/android/browser/GoogleAccountLogin;

    # getter for: Lme/android/browser/GoogleAccountLogin;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lme/android/browser/GoogleAccountLogin;->access$2(Lme/android/browser/GoogleAccountLogin;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 284
    return-void
.end method
