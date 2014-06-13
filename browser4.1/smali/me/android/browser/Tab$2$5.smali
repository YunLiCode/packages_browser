.class Lme/android/browser/Tab$2$5;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field private final synthetic val$error:Landroid/net/http/SslError;

.field private final synthetic val$handler:Landroid/webkit/SslErrorHandler;

.field private final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lme/android/browser/Tab$2;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/Tab$2$5;->this$1:Lme/android/browser/Tab$2;

    iput-object p2, p0, Lme/android/browser/Tab$2$5;->val$view:Landroid/webkit/WebView;

    iput-object p3, p0, Lme/android/browser/Tab$2$5;->val$handler:Landroid/webkit/SslErrorHandler;

    iput-object p4, p0, Lme/android/browser/Tab$2$5;->val$error:Landroid/net/http/SslError;

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 533
    iget-object v0, p0, Lme/android/browser/Tab$2$5;->this$1:Lme/android/browser/Tab$2;

    # getter for: Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;
    invoke-static {v0}, Lme/android/browser/Tab$2;->access$4(Lme/android/browser/Tab$2;)Lme/android/browser/Tab;

    move-result-object v0

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    .line 534
    iget-object v1, p0, Lme/android/browser/Tab$2$5;->val$view:Landroid/webkit/WebView;

    iget-object v2, p0, Lme/android/browser/Tab$2$5;->val$handler:Landroid/webkit/SslErrorHandler;

    iget-object v3, p0, Lme/android/browser/Tab$2$5;->val$error:Landroid/net/http/SslError;

    .line 533
    invoke-interface {v0, v1, v2, v3}, Lme/android/browser/WebViewController;->showSslCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 535
    return-void
.end method
