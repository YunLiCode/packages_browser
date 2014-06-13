.class Lme/android/browser/Controller$1;
.super Landroid/database/ContentObserver;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/Controller;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/Controller;


# direct methods
.method constructor <init>(Lme/android/browser/Controller;Landroid/os/Handler;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/Controller$1;->this$0:Lme/android/browser/Controller;

    .line 237
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 240
    iget-object v2, p0, Lme/android/browser/Controller$1;->this$0:Lme/android/browser/Controller;

    # getter for: Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;
    invoke-static {v2}, Lme/android/browser/Controller;->access$3(Lme/android/browser/Controller;)Lme/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lme/android/browser/TabControl;->getTabCount()I

    move-result v1

    .line 241
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 244
    return-void

    .line 242
    :cond_0
    iget-object v2, p0, Lme/android/browser/Controller$1;->this$0:Lme/android/browser/Controller;

    # getter for: Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;
    invoke-static {v2}, Lme/android/browser/Controller;->access$3(Lme/android/browser/Controller;)Lme/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lme/android/browser/TabControl;->getTab(I)Lme/android/browser/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lme/android/browser/Tab;->updateBookmarkedStatus()V

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
