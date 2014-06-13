.class Lme/android/browser/Tab$2$4;
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


# direct methods
.method constructor <init>(Lme/android/browser/Tab$2;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/Tab$2$4;->this$1:Lme/android/browser/Tab$2;

    iput-object p2, p0, Lme/android/browser/Tab$2$4;->val$handler:Landroid/webkit/SslErrorHandler;

    iput-object p3, p0, Lme/android/browser/Tab$2$4;->val$error:Landroid/net/http/SslError;

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 524
    iget-object v0, p0, Lme/android/browser/Tab$2$4;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 525
    iget-object v0, p0, Lme/android/browser/Tab$2$4;->this$1:Lme/android/browser/Tab$2;

    # getter for: Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;
    invoke-static {v0}, Lme/android/browser/Tab$2;->access$4(Lme/android/browser/Tab$2;)Lme/android/browser/Tab;

    move-result-object v0

    iget-object v1, p0, Lme/android/browser/Tab$2$4;->val$error:Landroid/net/http/SslError;

    # invokes: Lme/android/browser/Tab;->handleProceededAfterSslError(Landroid/net/http/SslError;)V
    invoke-static {v0, v1}, Lme/android/browser/Tab;->access$14(Lme/android/browser/Tab;Landroid/net/http/SslError;)V

    .line 526
    return-void
.end method
