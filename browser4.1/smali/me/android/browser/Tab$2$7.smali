.class Lme/android/browser/Tab$2$7;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/Tab$2;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/android/browser/Tab$2;

.field private final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lme/android/browser/Tab$2;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/Tab$2$7;->this$1:Lme/android/browser/Tab$2;

    iput-object p2, p0, Lme/android/browser/Tab$2$7;->val$handler:Landroid/webkit/SslErrorHandler;

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 549
    iget-object v0, p0, Lme/android/browser/Tab$2$7;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 550
    iget-object v0, p0, Lme/android/browser/Tab$2$7;->this$1:Lme/android/browser/Tab$2;

    # getter for: Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;
    invoke-static {v0}, Lme/android/browser/Tab$2;->access$4(Lme/android/browser/Tab$2;)Lme/android/browser/Tab;

    move-result-object v0

    sget-object v1, Lme/android/browser/Tab$SecurityState;->SECURITY_STATE_NOT_SECURE:Lme/android/browser/Tab$SecurityState;

    # invokes: Lme/android/browser/Tab;->setSecurityState(Lme/android/browser/Tab$SecurityState;)V
    invoke-static {v0, v1}, Lme/android/browser/Tab;->access$12(Lme/android/browser/Tab;Lme/android/browser/Tab$SecurityState;)V

    .line 551
    iget-object v0, p0, Lme/android/browser/Tab$2$7;->this$1:Lme/android/browser/Tab$2;

    # getter for: Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;
    invoke-static {v0}, Lme/android/browser/Tab$2;->access$4(Lme/android/browser/Tab$2;)Lme/android/browser/Tab;

    move-result-object v0

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v1, p0, Lme/android/browser/Tab$2$7;->this$1:Lme/android/browser/Tab$2;

    # getter for: Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;
    invoke-static {v1}, Lme/android/browser/Tab$2;->access$4(Lme/android/browser/Tab$2;)Lme/android/browser/Tab;

    move-result-object v1

    invoke-interface {v0, v1}, Lme/android/browser/WebViewController;->onUserCanceledSsl(Lme/android/browser/Tab;)V

    .line 552
    return-void
.end method
