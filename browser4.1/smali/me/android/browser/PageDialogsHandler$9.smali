.class Lme/android/browser/PageDialogsHandler$9;
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

.field private final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lme/android/browser/PageDialogsHandler;Landroid/webkit/WebView;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/PageDialogsHandler$9;->this$0:Lme/android/browser/PageDialogsHandler;

    iput-object p2, p0, Lme/android/browser/PageDialogsHandler$9;->val$view:Landroid/webkit/WebView;

    iput-object p3, p0, Lme/android/browser/PageDialogsHandler$9;->val$error:Landroid/net/http/SslError;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lme/android/browser/PageDialogsHandler$9;->this$0:Lme/android/browser/PageDialogsHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/android/browser/PageDialogsHandler;->access$10(Lme/android/browser/PageDialogsHandler;Landroid/app/AlertDialog;)V

    .line 315
    iget-object v0, p0, Lme/android/browser/PageDialogsHandler$9;->this$0:Lme/android/browser/PageDialogsHandler;

    iget-object v1, p0, Lme/android/browser/PageDialogsHandler$9;->this$0:Lme/android/browser/PageDialogsHandler;

    # getter for: Lme/android/browser/PageDialogsHandler;->mController:Lme/android/browser/Controller;
    invoke-static {v1}, Lme/android/browser/PageDialogsHandler;->access$1(Lme/android/browser/PageDialogsHandler;)Lme/android/browser/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lme/android/browser/Controller;->getTabControl()Lme/android/browser/TabControl;

    move-result-object v1

    .line 316
    iget-object v2, p0, Lme/android/browser/PageDialogsHandler$9;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lme/android/browser/TabControl;->getTabFromView(Landroid/webkit/WebView;)Lme/android/browser/Tab;

    move-result-object v1

    .line 317
    const/4 v2, 0x1

    .line 318
    iget-object v3, p0, Lme/android/browser/PageDialogsHandler$9;->val$error:Landroid/net/http/SslError;

    invoke-virtual {v3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-virtual {v0, v1, v2, v3}, Lme/android/browser/PageDialogsHandler;->showPageInfo(Lme/android/browser/Tab;ZLjava/lang/String;)V

    .line 319
    return-void
.end method
