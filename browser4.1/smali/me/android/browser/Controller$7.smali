.class Lme/android/browser/Controller$7;
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

.field private final synthetic val$extra:Ljava/lang/String;


# direct methods
.method constructor <init>(Lme/android/browser/Controller;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/Controller$7;->this$0:Lme/android/browser/Controller;

    iput-object p2, p0, Lme/android/browser/Controller$7;->val$extra:Ljava/lang/String;

    .line 1396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 1399
    iget-object v1, p0, Lme/android/browser/Controller$7;->this$0:Lme/android/browser/Controller;

    # getter for: Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;
    invoke-static {v1}, Lme/android/browser/Controller;->access$3(Lme/android/browser/Controller;)Lme/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    .line 1400
    .local v0, "parent":Lme/android/browser/Tab;
    iget-object v3, p0, Lme/android/browser/Controller$7;->this$0:Lme/android/browser/Controller;

    iget-object v4, p0, Lme/android/browser/Controller$7;->val$extra:Ljava/lang/String;

    .line 1401
    iget-object v1, p0, Lme/android/browser/Controller$7;->this$0:Lme/android/browser/Controller;

    # getter for: Lme/android/browser/Controller;->mSettings:Lme/android/browser/BrowserSettings;
    invoke-static {v1}, Lme/android/browser/Controller;->access$5(Lme/android/browser/Controller;)Lme/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lme/android/browser/BrowserSettings;->openInBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1400
    :goto_0
    invoke-virtual {v3, v4, v0, v1, v2}, Lme/android/browser/Controller;->openTab(Ljava/lang/String;Lme/android/browser/Tab;ZZ)Lme/android/browser/Tab;

    .line 1403
    return v2

    :cond_0
    move v1, v2

    .line 1401
    goto :goto_0
.end method
