.class Lme/android/browser/PageDialogsHandler$4;
.super Ljava/lang/Object;
.source "PageDialogsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/PageDialogsHandler;->showPageInfo(Lme/android/browser/Tab;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/PageDialogsHandler;

.field private final synthetic val$fromShowSSLCertificateOnError:Z


# direct methods
.method constructor <init>(Lme/android/browser/PageDialogsHandler;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/PageDialogsHandler$4;->this$0:Lme/android/browser/PageDialogsHandler;

    iput-boolean p2, p0, Lme/android/browser/PageDialogsHandler$4;->val$fromShowSSLCertificateOnError:Z

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Lme/android/browser/PageDialogsHandler$4;->this$0:Lme/android/browser/PageDialogsHandler;

    invoke-static {v0, v1}, Lme/android/browser/PageDialogsHandler;->access$2(Lme/android/browser/PageDialogsHandler;Landroid/app/AlertDialog;)V

    .line 191
    iget-object v0, p0, Lme/android/browser/PageDialogsHandler$4;->this$0:Lme/android/browser/PageDialogsHandler;

    invoke-static {v0, v1}, Lme/android/browser/PageDialogsHandler;->access$3(Lme/android/browser/PageDialogsHandler;Lme/android/browser/Tab;)V

    .line 194
    iget-boolean v0, p0, Lme/android/browser/PageDialogsHandler$4;->val$fromShowSSLCertificateOnError:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lme/android/browser/PageDialogsHandler$4;->this$0:Lme/android/browser/PageDialogsHandler;

    .line 197
    iget-object v1, p0, Lme/android/browser/PageDialogsHandler$4;->this$0:Lme/android/browser/PageDialogsHandler;

    # getter for: Lme/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;
    invoke-static {v1}, Lme/android/browser/PageDialogsHandler;->access$4(Lme/android/browser/PageDialogsHandler;)Landroid/webkit/WebView;

    move-result-object v1

    .line 198
    iget-object v2, p0, Lme/android/browser/PageDialogsHandler$4;->this$0:Lme/android/browser/PageDialogsHandler;

    # getter for: Lme/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;
    invoke-static {v2}, Lme/android/browser/PageDialogsHandler;->access$5(Lme/android/browser/PageDialogsHandler;)Landroid/webkit/SslErrorHandler;

    move-result-object v2

    .line 199
    iget-object v3, p0, Lme/android/browser/PageDialogsHandler$4;->this$0:Lme/android/browser/PageDialogsHandler;

    # getter for: Lme/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;
    invoke-static {v3}, Lme/android/browser/PageDialogsHandler;->access$6(Lme/android/browser/PageDialogsHandler;)Landroid/net/http/SslError;

    move-result-object v3

    .line 196
    invoke-virtual {v0, v1, v2, v3}, Lme/android/browser/PageDialogsHandler;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 201
    :cond_0
    return-void
.end method
