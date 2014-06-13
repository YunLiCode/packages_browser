.class Lme/android/browser/Tab$8;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/Tab;->createSubWindow()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/Tab;


# direct methods
.method constructor <init>(Lme/android/browser/Tab;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/Tab$8;->this$0:Lme/android/browser/Tab;

    .line 1354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 1358
    iget-object v0, p0, Lme/android/browser/Tab$8;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v1, p0, Lme/android/browser/Tab$8;->this$0:Lme/android/browser/Tab;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-interface/range {v0 .. v7}, Lme/android/browser/WebViewController;->onDownloadStart(Lme/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1360
    iget-object v0, p0, Lme/android/browser/Tab$8;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;
    invoke-static {v0}, Lme/android/browser/Tab;->access$15(Lme/android/browser/Tab;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 1363
    iget-object v0, p0, Lme/android/browser/Tab$8;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v1, p0, Lme/android/browser/Tab$8;->this$0:Lme/android/browser/Tab;

    invoke-interface {v0, v1}, Lme/android/browser/WebViewController;->dismissSubWindow(Lme/android/browser/Tab;)V

    .line 1365
    :cond_0
    return-void
.end method
