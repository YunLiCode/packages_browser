.class Lcom/android/browser/Controller$8;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Controller;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Controller;

.field final synthetic val$extra:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/android/browser/Controller$8;->this$0:Lcom/android/browser/Controller;

    iput-object p2, p0, Lcom/android/browser/Controller$8;->val$extra:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 1422
    iget-object v0, p0, Lcom/android/browser/Controller$8;->this$0:Lcom/android/browser/Controller;

    # getter for: Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/browser/Controller;->access$200(Lcom/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Controller$8;->val$extra:Ljava/lang/String;

    invoke-static {v0, v2, v1, v2, v2}, Lcom/android/browser/Controller;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 1424
    const/4 v0, 0x1

    return v0
.end method
