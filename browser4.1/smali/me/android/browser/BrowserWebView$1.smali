.class Lme/android/browser/BrowserWebView$1;
.super Ljava/lang/Object;
.source "BrowserWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/BrowserWebView;->onDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/BrowserWebView;


# direct methods
.method constructor <init>(Lme/android/browser/BrowserWebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/BrowserWebView$1;->this$0:Lme/android/browser/BrowserWebView;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lme/android/browser/BrowserWebView$1;->this$0:Lme/android/browser/BrowserWebView;

    invoke-virtual {v0}, Lme/android/browser/BrowserWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    return-void
.end method
