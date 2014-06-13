.class Lme/android/browser/PreloadedTabControl$1;
.super Landroid/webkit/SearchBox$SearchBoxListener;
.source "PreloadedTabControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/PreloadedTabControl;->maybeSetQuery(Ljava/lang/String;Landroid/webkit/SearchBox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/PreloadedTabControl;

.field private final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lme/android/browser/PreloadedTabControl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/PreloadedTabControl$1;->this$0:Lme/android/browser/PreloadedTabControl;

    iput-object p2, p0, Lme/android/browser/PreloadedTabControl$1;->val$query:Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Landroid/webkit/SearchBox$SearchBoxListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeComplete(Z)V
    .locals 2
    .param p1, "called"    # Z

    .prologue
    .line 51
    iget-object v0, p0, Lme/android/browser/PreloadedTabControl$1;->this$0:Lme/android/browser/PreloadedTabControl;

    # getter for: Lme/android/browser/PreloadedTabControl;->mDestroyed:Z
    invoke-static {v0}, Lme/android/browser/PreloadedTabControl;->access$0(Lme/android/browser/PreloadedTabControl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lme/android/browser/PreloadedTabControl$1;->this$0:Lme/android/browser/PreloadedTabControl;

    iget-object v1, p0, Lme/android/browser/PreloadedTabControl$1;->val$query:Ljava/lang/String;

    invoke-static {v0, v1}, Lme/android/browser/PreloadedTabControl;->access$1(Lme/android/browser/PreloadedTabControl;Ljava/lang/String;)V

    goto :goto_0
.end method
