.class public Lme/android/browser/ComboViewActivity;
.super Landroid/app/Activity;
.source "ComboViewActivity.java"

# interfaces
.implements Lme/android/browser/CombinedBookmarksCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/android/browser/ComboViewActivity$TabsAdapter;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$me$android$browser$UI$ComboViews:[I = null

.field public static final EXTRA_COMBO_ARGS:Ljava/lang/String; = "combo_args"

.field public static final EXTRA_CURRENT_URL:Ljava/lang/String; = "url"

.field public static final EXTRA_INITIAL_VIEW:Ljava/lang/String; = "initial_view"

.field public static final EXTRA_OPEN_ALL:Ljava/lang/String; = "open_all"

.field public static final EXTRA_OPEN_SNAPSHOT:Ljava/lang/String; = "snapshot_id"

.field private static final STATE_SELECTED_TAB:Ljava/lang/String; = "tab"


# instance fields
.field private mTabsAdapter:Lme/android/browser/ComboViewActivity$TabsAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static synthetic $SWITCH_TABLE$me$android$browser$UI$ComboViews()[I
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lme/android/browser/ComboViewActivity;->$SWITCH_TABLE$me$android$browser$UI$ComboViews:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lme/android/browser/UI$ComboViews;->values()[Lme/android/browser/UI$ComboViews;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lme/android/browser/UI$ComboViews;->Bookmarks:Lme/android/browser/UI$ComboViews;

    invoke-virtual {v1}, Lme/android/browser/UI$ComboViews;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lme/android/browser/UI$ComboViews;->History:Lme/android/browser/UI$ComboViews;

    invoke-virtual {v1}, Lme/android/browser/UI$ComboViews;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lme/android/browser/UI$ComboViews;->Snapshots:Lme/android/browser/UI$ComboViews;

    invoke-virtual {v1}, Lme/android/browser/UI$ComboViews;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lme/android/browser/ComboViewActivity;->$SWITCH_TABLE$me$android$browser$UI$ComboViews:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static makeFragmentName(II)Ljava/lang/String;
    .locals 2
    .param p0, "viewId"    # I
    .param p1, "index"    # I

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:switcher:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 121
    invoke-virtual {p0}, Lme/android/browser/ComboViewActivity;->finish()V

    .line 122
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0, v8}, Lme/android/browser/ComboViewActivity;->setResult(I)V

    .line 51
    invoke-virtual {p0}, Lme/android/browser/ComboViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 52
    .local v2, "extras":Landroid/os/Bundle;
    const-string v5, "combo_args"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 53
    .local v0, "args":Landroid/os/Bundle;
    const-string v5, "initial_view"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "svStr":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 55
    invoke-static {v4}, Lme/android/browser/UI$ComboViews;->valueOf(Ljava/lang/String;)Lme/android/browser/UI$ComboViews;

    move-result-object v3

    .line 57
    .local v3, "startingView":Lme/android/browser/UI$ComboViews;
    :goto_0
    new-instance v5, Landroid/support/v4/view/ViewPager;

    invoke-direct {v5, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lme/android/browser/ComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 58
    iget-object v5, p0, Lme/android/browser/ComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v6, 0x7f0d0003

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 59
    iget-object v5, p0, Lme/android/browser/ComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v5}, Lme/android/browser/ComboViewActivity;->setContentView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0}, Lme/android/browser/ComboViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 62
    .local v1, "bar":Landroid/app/ActionBar;
    invoke-virtual {v1, v10}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 63
    invoke-static {p0}, Lme/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 66
    invoke-virtual {v1, v9}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 71
    :goto_1
    new-instance v5, Lme/android/browser/ComboViewActivity$TabsAdapter;

    iget-object v6, p0, Lme/android/browser/ComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v5, p0, v6}, Lme/android/browser/ComboViewActivity$TabsAdapter;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V

    iput-object v5, p0, Lme/android/browser/ComboViewActivity;->mTabsAdapter:Lme/android/browser/ComboViewActivity$TabsAdapter;

    .line 72
    iget-object v5, p0, Lme/android/browser/ComboViewActivity;->mTabsAdapter:Lme/android/browser/ComboViewActivity$TabsAdapter;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v6

    const v7, 0x7f080007

    invoke-virtual {v6, v7}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v6

    .line 73
    const-class v7, Lme/android/browser/BrowserBookmarksPage;

    .line 72
    invoke-virtual {v5, v6, v7, v0}, Lme/android/browser/ComboViewActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 74
    iget-object v5, p0, Lme/android/browser/ComboViewActivity;->mTabsAdapter:Lme/android/browser/ComboViewActivity$TabsAdapter;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v6

    const v7, 0x7f080009

    invoke-virtual {v6, v7}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v6

    .line 75
    const-class v7, Lme/android/browser/BrowserHistoryPage;

    .line 74
    invoke-virtual {v5, v6, v7, v0}, Lme/android/browser/ComboViewActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 76
    iget-object v5, p0, Lme/android/browser/ComboViewActivity;->mTabsAdapter:Lme/android/browser/ComboViewActivity$TabsAdapter;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v6

    const v7, 0x7f08000a

    invoke-virtual {v6, v7}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v6

    .line 77
    const-class v7, Lme/android/browser/BrowserSnapshotPage;

    .line 76
    invoke-virtual {v5, v6, v7, v0}, Lme/android/browser/ComboViewActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 79
    if-eqz p1, :cond_2

    .line 81
    const-string v5, "tab"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 80
    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 95
    :goto_2
    return-void

    .line 56
    .end local v1    # "bar":Landroid/app/ActionBar;
    .end local v3    # "startingView":Lme/android/browser/UI$ComboViews;
    :cond_0
    sget-object v3, Lme/android/browser/UI$ComboViews;->Bookmarks:Lme/android/browser/UI$ComboViews;

    goto :goto_0

    .line 68
    .restart local v1    # "bar":Landroid/app/ActionBar;
    .restart local v3    # "startingView":Lme/android/browser/UI$ComboViews;
    :cond_1
    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_1

    .line 83
    :cond_2
    invoke-static {}, Lme/android/browser/ComboViewActivity;->$SWITCH_TABLE$me$android$browser$UI$ComboViews()[I

    move-result-object v5

    invoke-virtual {v3}, Lme/android/browser/UI$ComboViews;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 88
    :pswitch_0
    iget-object v5, p0, Lme/android/browser/ComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v9}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_2

    .line 85
    :pswitch_1
    iget-object v5, p0, Lme/android/browser/ComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_2

    .line 91
    :pswitch_2
    iget-object v5, p0, Lme/android/browser/ComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v10}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_2

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 134
    invoke-virtual {p0}, Lme/android/browser/ComboViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x102002c

    if-ne v3, v4, :cond_0

    .line 141
    invoke-virtual {p0}, Lme/android/browser/ComboViewActivity;->finish()V

    .line 150
    :goto_0
    return v2

    .line 143
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f0d00b3

    if-ne v3, v4, :cond_1

    .line 144
    invoke-virtual {p0}, Lme/android/browser/ComboViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lme/android/browser/BrowserPreferencesPage;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "currentPage"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lme/android/browser/ComboViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 150
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 100
    const-string v0, "tab"

    .line 101
    invoke-virtual {p0}, Lme/android/browser/ComboViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    .line 100
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    return-void
.end method

.method public varargs openInNewTab([Ljava/lang/String;)V
    .locals 2
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "open_all"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lme/android/browser/ComboViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 116
    invoke-virtual {p0}, Lme/android/browser/ComboViewActivity;->finish()V

    .line 117
    return-void
.end method

.method public openSnapshot(J)V
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "snapshot_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 128
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lme/android/browser/ComboViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Lme/android/browser/ComboViewActivity;->finish()V

    .line 130
    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 107
    .local v0, "i":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lme/android/browser/ComboViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lme/android/browser/ComboViewActivity;->finish()V

    .line 109
    return-void
.end method
