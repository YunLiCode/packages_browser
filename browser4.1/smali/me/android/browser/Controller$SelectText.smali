.class Lme/android/browser/Controller$SelectText;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectText"
.end annotation


# instance fields
.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 2246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2247
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/Controller$SelectText;->mWebView:Landroid/webkit/WebViewClassic;

    .line 2248
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2240
    iget-object v0, p0, Lme/android/browser/Controller$SelectText;->mWebView:Landroid/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 2241
    iget-object v0, p0, Lme/android/browser/Controller$SelectText;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectText()Z

    move-result v0

    .line 2243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
