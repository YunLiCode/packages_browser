.class Lcom/android/browser/Tab$2$7;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Tab$2;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/Tab$2;

.field final synthetic val$error:Landroid/net/http/SslError;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab$2;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/browser/Tab$2$7;->this$1:Lcom/android/browser/Tab$2;

    iput-object p2, p0, Lcom/android/browser/Tab$2$7;->val$handler:Landroid/webkit/SslErrorHandler;

    iput-object p3, p0, Lcom/android/browser/Tab$2$7;->val$error:Landroid/net/http/SslError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/browser/Tab$2$7;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 528
    iget-object v0, p0, Lcom/android/browser/Tab$2$7;->this$1:Lcom/android/browser/Tab$2;

    iget-object v0, v0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, p0, Lcom/android/browser/Tab$2$7;->val$error:Landroid/net/http/SslError;

    # invokes: Lcom/android/browser/Tab;->handleProceededAfterSslError(Landroid/net/http/SslError;)V
    invoke-static {v0, v1}, Lcom/android/browser/Tab;->access$1500(Lcom/android/browser/Tab;Landroid/net/http/SslError;)V

    .line 529
    return-void
.end method
