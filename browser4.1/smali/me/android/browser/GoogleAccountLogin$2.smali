.class Lme/android/browser/GoogleAccountLogin$2;
.super Ljava/lang/Object;
.source "GoogleAccountLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/GoogleAccountLogin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/GoogleAccountLogin;

.field private final synthetic val$newUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lme/android/browser/GoogleAccountLogin;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/GoogleAccountLogin$2;->this$0:Lme/android/browser/GoogleAccountLogin;

    iput-object p2, p0, Lme/android/browser/GoogleAccountLogin$2;->val$newUrl:Ljava/lang/String;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lme/android/browser/GoogleAccountLogin$2;->this$0:Lme/android/browser/GoogleAccountLogin;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v0, p0, Lme/android/browser/GoogleAccountLogin$2;->this$0:Lme/android/browser/GoogleAccountLogin;

    # getter for: Lme/android/browser/GoogleAccountLogin;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lme/android/browser/GoogleAccountLogin;->access$1(Lme/android/browser/GoogleAccountLogin;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 165
    monitor-exit v1

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lme/android/browser/GoogleAccountLogin$2;->this$0:Lme/android/browser/GoogleAccountLogin;

    # getter for: Lme/android/browser/GoogleAccountLogin;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lme/android/browser/GoogleAccountLogin;->access$2(Lme/android/browser/GoogleAccountLogin;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v2, p0, Lme/android/browser/GoogleAccountLogin$2;->val$newUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 163
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
