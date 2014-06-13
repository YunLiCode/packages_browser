.class public Lcom/android/browser/UrlSelectionActionMode;
.super Ljava/lang/Object;
.source "UrlSelectionActionMode.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field private mUiController:Lcom/android/browser/UiController;


# direct methods
.method public constructor <init>(Lcom/android/browser/UiController;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/browser/UiController;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/browser/UrlSelectionActionMode;->mUiController:Lcom/android/browser/UiController;

    .line 29
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 41
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/UrlSelectionActionMode;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->shareCurrentPage()V

    .line 44
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00df
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100008

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 54
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method
