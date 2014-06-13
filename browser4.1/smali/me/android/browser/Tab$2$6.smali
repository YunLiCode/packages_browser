.class Lme/android/browser/Tab$2$6;
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


# direct methods
.method constructor <init>(Lme/android/browser/Tab$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/Tab$2$6;->this$1:Lme/android/browser/Tab$2;

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 542
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 543
    return-void
.end method
