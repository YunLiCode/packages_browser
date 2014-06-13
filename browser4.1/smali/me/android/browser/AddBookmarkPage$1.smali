.class Lme/android/browser/AddBookmarkPage$1;
.super Ljava/lang/Object;
.source "AddBookmarkPage.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/AddBookmarkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/AddBookmarkPage;


# direct methods
.method constructor <init>(Lme/android/browser/AddBookmarkPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/AddBookmarkPage$1;->this$0:Lme/android/browser/AddBookmarkPage;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    new-instance v0, Lme/android/browser/AddBookmarkPage$EditBookmarkInfoLoader;

    iget-object v1, p0, Lme/android/browser/AddBookmarkPage$1;->this$0:Lme/android/browser/AddBookmarkPage;

    iget-object v2, p0, Lme/android/browser/AddBookmarkPage$1;->this$0:Lme/android/browser/AddBookmarkPage;

    # getter for: Lme/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;
    invoke-static {v2}, Lme/android/browser/AddBookmarkPage;->access$6(Lme/android/browser/AddBookmarkPage;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lme/android/browser/AddBookmarkPage$EditBookmarkInfoLoader;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/content/Loader;

    check-cast p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;

    invoke-virtual {p0, p1, p2}, Lme/android/browser/AddBookmarkPage$1;->onLoadFinished(Landroid/content/Loader;Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;)V
    .locals 7
    .param p2, "info"    # Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;",
            ">;",
            "Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;>;"
    const-wide/16 v5, -0x1

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "setAccount":Z
    iget-wide v1, p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;->id:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lme/android/browser/AddBookmarkPage$1;->this$0:Lme/android/browser/AddBookmarkPage;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lme/android/browser/AddBookmarkPage;->access$1(Lme/android/browser/AddBookmarkPage;Z)V

    .line 402
    iget-object v1, p0, Lme/android/browser/AddBookmarkPage$1;->this$0:Lme/android/browser/AddBookmarkPage;

    # invokes: Lme/android/browser/AddBookmarkPage;->showRemoveButton()V
    invoke-static {v1}, Lme/android/browser/AddBookmarkPage;->access$2(Lme/android/browser/AddBookmarkPage;)V

    .line 403
    iget-object v1, p0, Lme/android/browser/AddBookmarkPage$1;->this$0:Lme/android/browser/AddBookmarkPage;

    # getter for: Lme/android/browser/AddBookmarkPage;->mFakeTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lme/android/browser/AddBookmarkPage;->access$3(Lme/android/browser/AddBookmarkPage;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f08003a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 404
    iget-object v1, p0, Lme/android/browser/AddBookmarkPage$1;->this$0:Lme/android/browser/AddBookmarkPage;

    # getter for: Lme/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;
    invoke-static {v1}, Lme/android/browser/AddBookmarkPage;->access$4(Lme/android/browser/AddBookmarkPage;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v1, p0, Lme/android/browser/AddBookmarkPage$1;->this$0:Lme/android/browser/AddBookmarkPage;

    # getter for: Lme/android/browser/AddBookmarkPage;->mFolderAdapter:Lme/android/browser/addbookmark/FolderSpinnerAdapter;
    invoke-static {v1}, Lme/android/browser/AddBookmarkPage;->access$5(Lme/android/browser/AddBookmarkPage;)Lme/android/browser/addbookmark/FolderSpinnerAdapter;

    move-result-object v1

    iget-object v2, p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;->parentTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lme/android/browser/addbookmark/FolderSpinnerAdapter;->setOtherFolderDisplayText(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lme/android/browser/AddBookmarkPage$1;->this$0:Lme/android/browser/AddBookmarkPage;

    # getter for: Lme/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;
    invoke-static {v1}, Lme/android/browser/AddBookmarkPage;->access$6(Lme/android/browser/AddBookmarkPage;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "_id"

    iget-wide v3, p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;->id:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 407
    const/4 v0, 0x1

    .line 408
    iget-object v1, p0, Lme/android/browser/AddBookmarkPage$1;->this$0:Lme/android/browser/AddBookmarkPage;

    iget-object v2, p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;->accountName:Ljava/lang/String;

    iget-object v3, p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lme/android/browser/AddBookmarkPage;->setAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lme/android/browser/AddBookmarkPage$1;->this$0:Lme/android/browser/AddBookmarkPage;

    iget-wide v2, p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;->parentId:J

    invoke-static {v1, v2, v3}, Lme/android/browser/AddBookmarkPage;->access$7(Lme/android/browser/AddBookmarkPage;J)V

    .line 410
    iget-object v1, p0, Lme/android/browser/AddBookmarkPage$1;->this$0:Lme/android/browser/AddBookmarkPage;

    # invokes: Lme/android/browser/AddBookmarkPage;->onCurrentFolderFound()V
    invoke-static {v1}, Lme/android/browser/AddBookmarkPage;->access$8(Lme/android/browser/AddBookmarkPage;)V

    .line 416
    :cond_0
    iget-wide v1, p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedId:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1

    iget-wide v1, p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedId:J

    iget-wide v3, p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p0, Lme/android/browser/AddBookmarkPage$1;->this$0:Lme/android/browser/AddBookmarkPage;

    # getter for: Lme/android/browser/AddBookmarkPage;->mEditingFolder:Z
    invoke-static {v1}, Lme/android/browser/AddBookmarkPage;->access$9(Lme/android/browser/AddBookmarkPage;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 418
    if-eqz v0, :cond_3

    iget-wide v1, p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedId:J

    iget-object v3, p0, Lme/android/browser/AddBookmarkPage$1;->this$0:Lme/android/browser/AddBookmarkPage;

    # getter for: Lme/android/browser/AddBookmarkPage;->mRootFolder:J
    invoke-static {v3}, Lme/android/browser/AddBookmarkPage;->access$10(Lme/android/browser/AddBookmarkPage;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 419
    iget-object v1, p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedAccountName:Ljava/lang/String;

    iget-object v2, p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;->accountName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 420
    iget-object v1, p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedAccountType:Ljava/lang/String;

    iget-object v2, p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;->accountType:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 421
    iget-object v1, p0, Lme/android/browser/AddBookmarkPage$1;->this$0:Lme/android/browser/AddBookmarkPage;

    # getter for: Lme/android/browser/AddBookmarkPage;->mFolderAdapter:Lme/android/browser/addbookmark/FolderSpinnerAdapter;
    invoke-static {v1}, Lme/android/browser/AddBookmarkPage;->access$5(Lme/android/browser/AddBookmarkPage;)Lme/android/browser/addbookmark/FolderSpinnerAdapter;

    move-result-object v1

    iget-wide v2, p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedId:J

    iget-object v4, p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lme/android/browser/addbookmark/FolderSpinnerAdapter;->addRecentFolder(JLjava/lang/String;)V

    .line 431
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 432
    iget-object v1, p0, Lme/android/browser/AddBookmarkPage$1;->this$0:Lme/android/browser/AddBookmarkPage;

    # getter for: Lme/android/browser/AddBookmarkPage;->mAccountSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lme/android/browser/AddBookmarkPage;->access$11(Lme/android/browser/AddBookmarkPage;)Landroid/widget/Spinner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 434
    :cond_2
    return-void

    .line 422
    :cond_3
    if-nez v0, :cond_1

    .line 423
    const/4 v0, 0x1

    .line 424
    iget-object v1, p0, Lme/android/browser/AddBookmarkPage$1;->this$0:Lme/android/browser/AddBookmarkPage;

    iget-object v2, p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedAccountName:Ljava/lang/String;

    iget-object v3, p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lme/android/browser/AddBookmarkPage;->setAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-wide v1, p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedId:J

    iget-object v3, p0, Lme/android/browser/AddBookmarkPage$1;->this$0:Lme/android/browser/AddBookmarkPage;

    # getter for: Lme/android/browser/AddBookmarkPage;->mRootFolder:J
    invoke-static {v3}, Lme/android/browser/AddBookmarkPage;->access$10(Lme/android/browser/AddBookmarkPage;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 426
    iget-object v1, p0, Lme/android/browser/AddBookmarkPage$1;->this$0:Lme/android/browser/AddBookmarkPage;

    # getter for: Lme/android/browser/AddBookmarkPage;->mFolderAdapter:Lme/android/browser/addbookmark/FolderSpinnerAdapter;
    invoke-static {v1}, Lme/android/browser/AddBookmarkPage;->access$5(Lme/android/browser/AddBookmarkPage;)Lme/android/browser/addbookmark/FolderSpinnerAdapter;

    move-result-object v1

    iget-wide v2, p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedId:J

    .line 427
    iget-object v4, p2, Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedTitle:Ljava/lang/String;

    .line 426
    invoke-virtual {v1, v2, v3, v4}, Lme/android/browser/addbookmark/FolderSpinnerAdapter;->addRecentFolder(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lme/android/browser/AddBookmarkPage$EditBookmarkInfo;>;"
    return-void
.end method
