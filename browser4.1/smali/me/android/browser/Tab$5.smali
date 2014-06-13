.class Lme/android/browser/Tab$5;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/Tab;-><init>(Lme/android/browser/WebViewController;Landroid/webkit/WebView;Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lme/android/browser/Tab$5;->this$0:Lme/android/browser/Tab;

    .line 1160
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
    .line 1164
    iget-object v0, p0, Lme/android/browser/Tab$5;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v1, p0, Lme/android/browser/Tab$5;->this$0:Lme/android/browser/Tab;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-interface/range {v0 .. v7}, Lme/android/browser/WebViewController;->onDownloadStart(Lme/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1166
    return-void
.end method
