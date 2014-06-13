.class Lme/android/browser/PageDialogsHandler$8;
.super Ljava/lang/Object;
.source "PageDialogsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/PageDialogsHandler;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/PageDialogsHandler;

.field private final synthetic val$error:Landroid/net/http/SslError;

.field private final synthetic val$handler:Landroid/webkit/SslErrorHandler;

.field private final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lme/android/browser/PageDialogsHandler;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/PageDialogsHandler$8;->this$0:Lme/android/browser/PageDialogsHandler;

    iput-object p2, p0, Lme/android/browser/PageDialogsHandler$8;->val$view:Landroid/webkit/WebView;

    iput-object p3, p0, Lme/android/browser/PageDialogsHandler$8;->val$handler:Landroid/webkit/SslErrorHandler;

    iput-object p4, p0, Lme/android/browser/PageDialogsHandler$8;->val$error:Landroid/net/http/SslError;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-object v0, p0, Lme/android/browser/PageDialogsHandler$8;->this$0:Lme/android/browser/PageDialogsHandler;

    invoke-static {v0, v1}, Lme/android/browser/PageDialogsHandler;->access$10(Lme/android/browser/PageDialogsHandler;Landroid/app/AlertDialog;)V

    .line 297
    iget-object v0, p0, Lme/android/browser/PageDialogsHandler$8;->this$0:Lme/android/browser/PageDialogsHandler;

    invoke-static {v0, v1}, Lme/android/browser/PageDialogsHandler;->access$11(Lme/android/browser/PageDialogsHandler;Landroid/webkit/WebView;)V

    .line 298
    iget-object v0, p0, Lme/android/browser/PageDialogsHandler$8;->this$0:Lme/android/browser/PageDialogsHandler;

    invoke-static {v0, v1}, Lme/android/browser/PageDialogsHandler;->access$12(Lme/android/browser/PageDialogsHandler;Landroid/webkit/SslErrorHandler;)V

    .line 299
    iget-object v0, p0, Lme/android/browser/PageDialogsHandler$8;->this$0:Lme/android/browser/PageDialogsHandler;

    invoke-static {v0, v1}, Lme/android/browser/PageDialogsHandler;->access$13(Lme/android/browser/PageDialogsHandler;Landroid/net/http/SslError;)V

    .line 301
    iget-object v0, p0, Lme/android/browser/PageDialogsHandler$8;->val$view:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebViewClassic;->fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lme/android/browser/PageDialogsHandler$8;->val$view:Landroid/webkit/WebView;

    iget-object v2, p0, Lme/android/browser/PageDialogsHandler$8;->val$handler:Landroid/webkit/SslErrorHandler;

    iget-object v3, p0, Lme/android/browser/PageDialogsHandler$8;->val$error:Landroid/net/http/SslError;

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 303
    return-void
.end method
