.class Lme/android/browser/Controller$SaveSnapshotTask;
.super Landroid/os/AsyncTask;
.source "Controller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveSnapshotTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;",
        "Landroid/content/DialogInterface$OnCancelListener;"
    }
.end annotation


# instance fields
.field private mProgressDialog:Landroid/app/Dialog;

.field private mTab:Lme/android/browser/Tab;

.field private mValues:Landroid/content/ContentValues;

.field final synthetic this$0:Lme/android/browser/Controller;


# direct methods
.method private constructor <init>(Lme/android/browser/Controller;Lme/android/browser/Tab;)V
    .locals 0
    .param p2, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 1718
    iput-object p1, p0, Lme/android/browser/Controller$SaveSnapshotTask;->this$0:Lme/android/browser/Controller;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1719
    iput-object p2, p0, Lme/android/browser/Controller$SaveSnapshotTask;->mTab:Lme/android/browser/Tab;

    .line 1720
    return-void
.end method

.method synthetic constructor <init>(Lme/android/browser/Controller;Lme/android/browser/Tab;Lme/android/browser/Controller$SaveSnapshotTask;)V
    .locals 0

    .prologue
    .line 1718
    invoke-direct {p0, p1, p2}, Lme/android/browser/Controller$SaveSnapshotTask;-><init>(Lme/android/browser/Controller;Lme/android/browser/Tab;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 1732
    iget-object v7, p0, Lme/android/browser/Controller$SaveSnapshotTask;->mTab:Lme/android/browser/Tab;

    iget-object v8, p0, Lme/android/browser/Controller$SaveSnapshotTask;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7, v8}, Lme/android/browser/Tab;->saveViewState(Landroid/content/ContentValues;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1749
    :cond_0
    :goto_0
    return-object v6

    .line 1735
    :cond_1
    invoke-virtual {p0}, Lme/android/browser/Controller$SaveSnapshotTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1736
    iget-object v7, p0, Lme/android/browser/Controller$SaveSnapshotTask;->mValues:Landroid/content/ContentValues;

    const-string v8, "viewstate_path"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1737
    .local v4, "path":Ljava/lang/String;
    iget-object v7, p0, Lme/android/browser/Controller$SaveSnapshotTask;->this$0:Lme/android/browser/Controller;

    # getter for: Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lme/android/browser/Controller;->access$0(Lme/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1738
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1739
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    goto :goto_0

    .line 1743
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "path":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lme/android/browser/Controller$SaveSnapshotTask;->this$0:Lme/android/browser/Controller;

    # getter for: Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lme/android/browser/Controller;->access$0(Lme/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1744
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v7, Lme/android/browser/provider/SnapshotProvider$Snapshots;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lme/android/browser/Controller$SaveSnapshotTask;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 1745
    .local v5, "result":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 1748
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 1749
    .local v2, "id":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lme/android/browser/Controller$SaveSnapshotTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1770
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lme/android/browser/Controller$SaveSnapshotTask;->cancel(Z)Z

    .line 1771
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 1754
    invoke-virtual {p0}, Lme/android/browser/Controller$SaveSnapshotTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1766
    :goto_0
    return-void

    .line 1757
    :cond_0
    iget-object v1, p0, Lme/android/browser/Controller$SaveSnapshotTask;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1758
    if-nez p1, :cond_1

    .line 1759
    iget-object v1, p0, Lme/android/browser/Controller$SaveSnapshotTask;->this$0:Lme/android/browser/Controller;

    # getter for: Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lme/android/browser/Controller;->access$0(Lme/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080059

    .line 1760
    const/4 v3, 0x0

    .line 1759
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1760
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1763
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1764
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "animate_id"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1765
    iget-object v1, p0, Lme/android/browser/Controller$SaveSnapshotTask;->this$0:Lme/android/browser/Controller;

    # getter for: Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;
    invoke-static {v1}, Lme/android/browser/Controller;->access$1(Lme/android/browser/Controller;)Lme/android/browser/UI;

    move-result-object v1

    sget-object v2, Lme/android/browser/UI$ComboViews;->Snapshots:Lme/android/browser/UI$ComboViews;

    invoke-interface {v1, v2, v0}, Lme/android/browser/UI;->showComboView(Lme/android/browser/UI$ComboViews;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lme/android/browser/Controller$SaveSnapshotTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1724
    iget-object v0, p0, Lme/android/browser/Controller$SaveSnapshotTask;->this$0:Lme/android/browser/Controller;

    # getter for: Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lme/android/browser/Controller;->access$0(Lme/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1725
    .local v2, "message":Ljava/lang/CharSequence;
    iget-object v0, p0, Lme/android/browser/Controller$SaveSnapshotTask;->this$0:Lme/android/browser/Controller;

    # getter for: Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lme/android/browser/Controller;->access$0(Lme/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    move v4, v3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/Controller$SaveSnapshotTask;->mProgressDialog:Landroid/app/Dialog;

    .line 1727
    iget-object v0, p0, Lme/android/browser/Controller$SaveSnapshotTask;->mTab:Lme/android/browser/Tab;

    invoke-virtual {v0}, Lme/android/browser/Tab;->createSnapshotValues()Landroid/content/ContentValues;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/Controller$SaveSnapshotTask;->mValues:Landroid/content/ContentValues;

    .line 1728
    return-void
.end method
