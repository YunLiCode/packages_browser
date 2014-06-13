.class Lme/android/browser/BaseUi$2;
.super Ljava/lang/Object;
.source "BaseUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/BaseUi;->createSubWindow(Lme/android/browser/Tab;Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/BaseUi;

.field private final synthetic val$cancelSubView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lme/android/browser/BaseUi;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/BaseUi$2;->this$0:Lme/android/browser/BaseUi;

    iput-object p2, p0, Lme/android/browser/BaseUi$2;->val$cancelSubView:Landroid/webkit/WebView;

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 426
    iget-object v0, p0, Lme/android/browser/BaseUi$2;->val$cancelSubView:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebViewClassic;->fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lme/android/browser/BaseUi$2;->val$cancelSubView:Landroid/webkit/WebView;

    .line 426
    invoke-virtual {v0, v1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 428
    return-void
.end method
