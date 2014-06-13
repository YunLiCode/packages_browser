.class public Lme/android/browser/ShortcutActivity;
.super Landroid/app/Activity;
.source "ShortcutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lme/android/browser/BookmarksPageCallbacks;


# instance fields
.field private mBookmarks:Lme/android/browser/BrowserBookmarksPage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBookmarkSelected(Landroid/database/Cursor;Z)Z
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "isFolder"    # Z

    .prologue
    .line 50
    if-eqz p2, :cond_0

    .line 51
    const/4 v1, 0x0

    .line 56
    :goto_0
    return v1

    .line 53
    :cond_0
    invoke-static {p0, p1}, Lme/android/browser/BrowserBookmarksPage;->createShortcutIntent(Landroid/content/Context;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lme/android/browser/ShortcutActivity;->setResult(ILandroid/content/Intent;)V

    .line 55
    invoke-virtual {p0}, Lme/android/browser/ShortcutActivity;->finish()V

    .line 56
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 68
    :pswitch_0
    invoke-virtual {p0}, Lme/android/browser/ShortcutActivity;->finish()V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x7f0d0038
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v1, 0x7f080052

    invoke-virtual {p0, v1}, Lme/android/browser/ShortcutActivity;->setTitle(I)V

    .line 35
    const v1, 0x7f040023

    invoke-virtual {p0, v1}, Lme/android/browser/ShortcutActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lme/android/browser/ShortcutActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 37
    const v2, 0x7f0d0058

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lme/android/browser/BrowserBookmarksPage;

    .line 36
    iput-object v1, p0, Lme/android/browser/ShortcutActivity;->mBookmarks:Lme/android/browser/BrowserBookmarksPage;

    .line 38
    iget-object v1, p0, Lme/android/browser/ShortcutActivity;->mBookmarks:Lme/android/browser/BrowserBookmarksPage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lme/android/browser/BrowserBookmarksPage;->setEnableContextMenu(Z)V

    .line 39
    iget-object v1, p0, Lme/android/browser/ShortcutActivity;->mBookmarks:Lme/android/browser/BrowserBookmarksPage;

    invoke-virtual {v1, p0}, Lme/android/browser/BrowserBookmarksPage;->setCallbackListener(Lme/android/browser/BookmarksPageCallbacks;)V

    .line 40
    const v1, 0x7f0d0038

    invoke-virtual {p0, v1}, Lme/android/browser/ShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "cancel":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    :cond_0
    return-void
.end method

.method public varargs onOpenInNewWindow([Ljava/lang/String;)Z
    .locals 1
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method
