.class Lme/android/browser/Controller$9;
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
    iput-object p1, p0, Lme/android/browser/Controller$9;->this$0:Lme/android/browser/Controller;

    iput-object p2, p0, Lme/android/browser/Controller$9;->val$extra:Ljava/lang/String;

    .line 1429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 1432
    iget-object v0, p0, Lme/android/browser/Controller$9;->this$0:Lme/android/browser/Controller;

    iget-object v1, p0, Lme/android/browser/Controller$9;->val$extra:Ljava/lang/String;

    iget-object v2, p0, Lme/android/browser/Controller$9;->this$0:Lme/android/browser/Controller;

    # getter for: Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;
    invoke-static {v2}, Lme/android/browser/Controller;->access$3(Lme/android/browser/Controller;)Lme/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lme/android/browser/Controller;->openTab(Ljava/lang/String;Lme/android/browser/Tab;ZZ)Lme/android/browser/Tab;

    .line 1433
    const/4 v0, 0x0

    return v0
.end method
