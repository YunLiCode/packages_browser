.class Lme/android/browser/PageDialogsHandler$3;
.super Ljava/lang/Object;
.source "PageDialogsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lme/android/browser/PageDialogsHandler$3;->this$0:Lme/android/browser/PageDialogsHandler;

    iput-boolean p2, p0, Lme/android/browser/PageDialogsHandler$3;->val$fromShowSSLCertificateOnError:Z

    .line 171
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

    .line 174
    iget-object v0, p0, Lme/android/browser/PageDialogsHandler$3;->this$0:Lme/android/browser/PageDialogsHandler;

    invoke-static {v0, v1}, Lme/android/browser/PageDialogsHandler;->access$2(Lme/android/browser/PageDialogsHandler;Landroid/app/AlertDialog;)V

    .line 175
    iget-object v0, p0, Lme/android/browser/PageDialogsHandler$3;->this$0:Lme/android/browser/PageDialogsHandler;

    invoke-static {v0, v1}, Lme/android/browser/PageDialogsHandler;->access$3(Lme/android/browser/PageDialogsHandler;Lme/android/browser/Tab;)V

    .line 178
    iget-boolean v0, p0, Lme/android/browser/PageDialogsHandler$3;->val$fromShowSSLCertificateOnError:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lme/android/browser/PageDialogsHandler$3;->this$0:Lme/android/browser/PageDialogsHandler;

    .line 181
    iget-object v1, p0, Lme/android/browser/PageDialogsHandler$3;->this$0:Lme/android/browser/PageDialogsHandler;

    # getter for: Lme/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;
    invoke-static {v1}, Lme/android/browser/PageDialogsHandler;->access$4(Lme/android/browser/PageDialogsHandler;)Landroid/webkit/WebView;

    move-result-object v1

    .line 182
    iget-object v2, p0, Lme/android/browser/PageDialogsHandler$3;->this$0:Lme/android/browser/PageDialogsHandler;

    # getter for: Lme/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;
    invoke-static {v2}, Lme/android/browser/PageDialogsHandler;->access$5(Lme/android/browser/PageDialogsHandler;)Landroid/webkit/SslErrorHandler;

    move-result-object v2

    .line 183
    iget-object v3, p0, Lme/android/browser/PageDialogsHandler$3;->this$0:Lme/android/browser/PageDialogsHandler;

    # getter for: Lme/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;
    invoke-static {v3}, Lme/android/browser/PageDialogsHandler;->access$6(Lme/android/browser/PageDialogsHandler;)Landroid/net/http/SslError;

    move-result-object v3

    .line 180
    invoke-virtual {v0, v1, v2, v3}, Lme/android/browser/PageDialogsHandler;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 185
    :cond_0
    return-void
.end method
