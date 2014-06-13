.class Lme/android/browser/Controller$8;
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
    iput-object p1, p0, Lme/android/browser/Controller$8;->this$0:Lme/android/browser/Controller;

    iput-object p2, p0, Lme/android/browser/Controller$8;->val$extra:Ljava/lang/String;

    .line 1418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 1421
    iget-object v0, p0, Lme/android/browser/Controller$8;->this$0:Lme/android/browser/Controller;

    # getter for: Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lme/android/browser/Controller;->access$0(Lme/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lme/android/browser/Controller$8;->val$extra:Ljava/lang/String;

    invoke-static {v0, v2, v1, v2, v2}, Lme/android/browser/Controller;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 1423
    const/4 v0, 0x1

    return v0
.end method
