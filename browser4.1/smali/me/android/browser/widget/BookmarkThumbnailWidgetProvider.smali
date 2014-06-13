.class public Lme/android/browser/widget/BookmarkThumbnailWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "BookmarkThumbnailWidgetProvider.java"


# static fields
.field public static final ACTION_BOOKMARK_APPWIDGET_UPDATE:Ljava/lang/String; = "me.android.browser.BOOKMARK_APPWIDGET_UPDATE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lme/android/browser/widget/BookmarkThumbnailWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    const/high16 v11, 0x8000000

    const v10, 0x7f0d0026

    const/4 v6, 0x0

    .line 83
    .line 84
    new-instance v5, Landroid/content/Intent;

    const-string v7, "show_browser"

    const/4 v8, 0x0

    .line 85
    const-class v9, Lme/android/browser/BrowserActivity;

    .line 84
    invoke-direct {v5, v7, v8, p1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    invoke-static {p1, v6, v5, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 87
    .local v2, "launchBrowser":Landroid/app/PendingIntent;
    array-length v7, p3

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_0

    .line 102
    return-void

    .line 87
    :cond_0
    aget v0, p3, v5

    .line 88
    .local v0, "appWidgetId":I
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lme/android/browser/widget/BookmarkThumbnailWidgetService;

    invoke-direct {v3, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v3, "updateIntent":Landroid/content/Intent;
    const-string v8, "appWidgetId"

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 91
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 92
    const v9, 0x7f04000e

    .line 91
    invoke-direct {v4, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 93
    .local v4, "views":Landroid/widget/RemoteViews;
    const v8, 0x7f0d0027

    invoke-virtual {v4, v8, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 94
    invoke-virtual {v4, v10, v3}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 95
    invoke-virtual {p2, v0, v10}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 96
    new-instance v1, Landroid/content/Intent;

    const-class v8, Lme/android/browser/widget/BookmarkWidgetProxy;

    invoke-direct {v1, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v1, "ic":Landroid/content/Intent;
    invoke-static {p1, v6, v1, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 97
    invoke-virtual {v4, v10, v8}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 100
    invoke-virtual {p2, v0, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 87
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static refreshWidgets(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    .line 114
    const-string v1, "me.android.browser.BOOKMARK_APPWIDGET_UPDATE"

    .line 115
    const/4 v2, 0x0

    const-class v3, Lme/android/browser/widget/BookmarkThumbnailWidgetProvider;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 60
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 63
    invoke-virtual {p0, p1}, Lme/android/browser/widget/BookmarkThumbnailWidgetProvider;->removeOrphanedFiles(Landroid/content/Context;)V

    .line 64
    return-void

    .line 60
    :cond_0
    aget v0, p2, v1

    .line 61
    .local v0, "widgetId":I
    invoke-static {p1, v0}, Lme/android/browser/widget/BookmarkThumbnailWidgetService;->deleteWidgetState(Landroid/content/Context;I)V

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p0, p1}, Lme/android/browser/widget/BookmarkThumbnailWidgetProvider;->removeOrphanedFiles(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "action":Ljava/lang/String;
    const-string v2, "me.android.browser.BOOKMARK_APPWIDGET_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 46
    .local v1, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-static {p1}, Lme/android/browser/widget/BookmarkThumbnailWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 45
    invoke-direct {p0, p1, v1, v2}, Lme/android/browser/widget/BookmarkThumbnailWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 50
    .end local v1    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mngr"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "ids"    # [I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lme/android/browser/widget/BookmarkThumbnailWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 55
    return-void
.end method

.method removeOrphanedFiles(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 77
    .local v1, "wm":Landroid/appwidget/AppWidgetManager;
    invoke-static {p1}, Lme/android/browser/widget/BookmarkThumbnailWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 78
    .local v0, "ids":[I
    invoke-static {p1, v0}, Lme/android/browser/widget/BookmarkThumbnailWidgetService;->removeOrphanedStates(Landroid/content/Context;[I)V

    .line 79
    return-void
.end method
