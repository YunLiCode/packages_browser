.class Lme/android/browser/Controller$6;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/Controller;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/Controller;

.field private final synthetic val$webview:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lme/android/browser/Controller;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/Controller$6;->this$0:Lme/android/browser/Controller;

    iput-object p2, p0, Lme/android/browser/Controller$6;->val$webview:Landroid/webkit/WebView;

    .line 1380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1384
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1385
    .local v0, "hrefMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/webkit/WebView;>;"
    const-string v2, "webview"

    iget-object v3, p0, Lme/android/browser/Controller$6;->val$webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    iget-object v2, p0, Lme/android/browser/Controller$6;->this$0:Lme/android/browser/Controller;

    # getter for: Lme/android/browser/Controller;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lme/android/browser/Controller;->access$8(Lme/android/browser/Controller;)Landroid/os/Handler;

    move-result-object v2

    .line 1387
    const/16 v3, 0x66

    .line 1388
    const v4, 0x7f0d00d2

    .line 1389
    const/4 v5, 0x0

    .line 1386
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1390
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lme/android/browser/Controller$6;->val$webview:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 1391
    const/4 v2, 0x1

    return v2
.end method
