.class public Lme/android/browser/IntentHandler;
.super Ljava/lang/Object;
.source "IntentHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/android/browser/IntentHandler$UrlData;
    }
.end annotation


# static fields
.field static final EMPTY_URL_DATA:Lme/android/browser/IntentHandler$UrlData;

.field static final GOOGLE_SEARCH_SOURCE_SUGGEST:Ljava/lang/String; = "browser-suggest"

.field static final GOOGLE_SEARCH_SOURCE_UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mController:Lme/android/browser/Controller;

.field private mSettings:Lme/android/browser/BrowserSettings;

.field private mTabControl:Lme/android/browser/TabControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lme/android/browser/IntentHandler$UrlData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/android/browser/IntentHandler$UrlData;-><init>(Ljava/lang/String;)V

    sput-object v0, Lme/android/browser/IntentHandler;->EMPTY_URL_DATA:Lme/android/browser/IntentHandler$UrlData;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lme/android/browser/Controller;)V
    .locals 1
    .param p1, "browser"    # Landroid/app/Activity;
    .param p2, "controller"    # Lme/android/browser/Controller;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lme/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    .line 61
    iput-object p2, p0, Lme/android/browser/IntentHandler;->mController:Lme/android/browser/Controller;

    .line 62
    iget-object v0, p0, Lme/android/browser/IntentHandler;->mController:Lme/android/browser/Controller;

    invoke-virtual {v0}, Lme/android/browser/Controller;->getTabControl()Lme/android/browser/TabControl;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/IntentHandler;->mTabControl:Lme/android/browser/TabControl;

    .line 63
    invoke-virtual {p2}, Lme/android/browser/Controller;->getSettings()Lme/android/browser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/IntentHandler;->mSettings:Lme/android/browser/BrowserSettings;

    .line 64
    return-void
.end method

.method protected static getUrlDataFromIntent(Landroid/content/Intent;)Lme/android/browser/IntentHandler$UrlData;
    .locals 14
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 206
    const-string v1, ""

    .line 207
    .local v1, "url":Ljava/lang/String;
    const/4 v2, 0x0

    .line 208
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 209
    .local v4, "preloaded":Lme/android/browser/PreloadedTabControl;
    const/4 v5, 0x0

    .line 210
    .local v5, "preloadedSearchBoxQuery":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 211
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v3, 0x100000

    and-int/2addr v0, v3

    if-nez v0, :cond_2

    .line 212
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, "action":Ljava/lang/String;
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    const-string v0, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lme/android/browser/UrlUtils;->smartUrlFilter(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_1

    const-string v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    const-string v0, "com.android.browser.headers"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 219
    .local v11, "pairs":Landroid/os/Bundle;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 221
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 222
    .restart local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 228
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "pairs":Landroid/os/Bundle;
    :cond_1
    const-string v0, "preload_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    const-string v0, "preload_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 231
    .local v8, "id":Ljava/lang/String;
    const-string v0, "searchbox_query"

    .line 230
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 232
    invoke-static {}, Lme/android/browser/Preloader;->getInstance()Lme/android/browser/Preloader;

    move-result-object v0

    invoke-virtual {v0, v8}, Lme/android/browser/Preloader;->getPreloadedTab(Ljava/lang/String;)Lme/android/browser/PreloadedTabControl;

    move-result-object v4

    .line 258
    .end local v6    # "action":Ljava/lang/String;
    .end local v8    # "id":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v0, Lme/android/browser/IntentHandler$UrlData;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lme/android/browser/IntentHandler$UrlData;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Intent;Lme/android/browser/PreloadedTabControl;Ljava/lang/String;)V

    return-object v0

    .line 223
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v11    # "pairs":Landroid/os/Bundle;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 224
    .local v10, "key":Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 234
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "pairs":Landroid/os/Bundle;
    :cond_4
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 235
    const-string v0, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 236
    const-string v0, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    :cond_5
    const-string v0, "query"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    if-eqz v1, :cond_2

    .line 241
    invoke-static {v1}, Lme/android/browser/UrlUtils;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {v1}, Lme/android/browser/UrlUtils;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    const-string v12, "&source=android-browser-suggest&"

    .line 244
    .local v12, "searchSource":Ljava/lang/String;
    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    const/4 v13, 0x0

    .line 246
    .local v13, "source":Ljava/lang/String;
    const-string v0, "app_data"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 247
    .local v7, "appData":Landroid/os/Bundle;
    if-eqz v7, :cond_6

    .line 248
    const-string v0, "source"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 250
    :cond_6
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 251
    const-string v13, "unknown"

    .line 253
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "&source=android-"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v12, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method static handleWebSearchIntent(Landroid/app/Activity;Lme/android/browser/Controller;Landroid/content/Intent;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "controller"    # Lme/android/browser/Controller;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 268
    if-nez p2, :cond_0

    const/4 v3, 0x0

    .line 280
    :goto_0
    return v3

    .line 270
    :cond_0
    const/4 v2, 0x0

    .line 271
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 274
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .end local v1    # "data":Landroid/net/Uri;
    :cond_1
    :goto_1
    const-string v3, "app_data"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 282
    const-string v4, "intent_extra_data_key"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 280
    invoke-static {p0, p1, v2, v3, v4}, Lme/android/browser/IntentHandler;->handleWebSearchRequest(Landroid/app/Activity;Lme/android/browser/Controller;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 275
    :cond_2
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 276
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 277
    const-string v3, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    :cond_3
    const-string v3, "query"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static handleWebSearchRequest(Landroid/app/Activity;Lme/android/browser/Controller;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "controller"    # Lme/android/browser/Controller;
    .param p2, "inUrl"    # Ljava/lang/String;
    .param p3, "appData"    # Landroid/os/Bundle;
    .param p4, "extraData"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 293
    if-nez p2, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v4

    .line 297
    :cond_1
    invoke-static {p2}, Lme/android/browser/UrlUtils;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 302
    sget-object v5, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    .line 303
    sget-object v5, Lme/android/browser/UrlUtils;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    .line 307
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 308
    .local v0, "cr":Landroid/content/ContentResolver;
    move-object v1, v3

    .line 309
    .local v1, "newUrl":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lme/android/browser/Controller;->getTabControl()Lme/android/browser/TabControl;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 310
    invoke-virtual {p1}, Lme/android/browser/Controller;->getTabControl()Lme/android/browser/TabControl;

    move-result-object v5

    invoke-virtual {v5}, Lme/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 311
    invoke-virtual {p1}, Lme/android/browser/Controller;->getTabControl()Lme/android/browser/TabControl;

    move-result-object v5

    invoke-virtual {v5}, Lme/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v5

    .line 312
    invoke-virtual {v5}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 313
    :cond_2
    new-instance v5, Lme/android/browser/IntentHandler$1;

    invoke-direct {v5, v0, v1}, Lme/android/browser/IntentHandler$1;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    new-array v6, v4, [Ljava/lang/Void;

    .line 319
    invoke-virtual {v5, v6}, Lme/android/browser/IntentHandler$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 322
    :cond_3
    invoke-static {}, Lme/android/browser/BrowserSettings;->getInstance()Lme/android/browser/BrowserSettings;

    move-result-object v5

    invoke-virtual {v5}, Lme/android/browser/BrowserSettings;->getSearchEngine()Lme/android/browser/search/SearchEngine;

    move-result-object v2

    .line 323
    .local v2, "searchEngine":Lme/android/browser/search/SearchEngine;
    if-eqz v2, :cond_0

    .line 324
    invoke-interface {v2, p0, v3, p3, p4}, Lme/android/browser/search/SearchEngine;->startSearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 326
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method onNewIntent(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 67
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v8}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v3

    .line 70
    .local v3, "current":Lme/android/browser/Tab;
    if-nez v3, :cond_2

    .line 72
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v8, v10}, Lme/android/browser/TabControl;->getTab(I)Lme/android/browser/Tab;

    move-result-object v3

    .line 73
    if-nez v3, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mController:Lme/android/browser/Controller;

    invoke-virtual {v8, v3}, Lme/android/browser/Controller;->setActiveTab(Lme/android/browser/Tab;)V

    .line 79
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    .line 81
    .local v4, "flags":I
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 82
    const/high16 v8, 0x100000

    and-int/2addr v8, v4

    if-nez v8, :cond_0

    .line 86
    const-string v8, "show_bookmarks"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 87
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mController:Lme/android/browser/Controller;

    sget-object v9, Lme/android/browser/UI$ComboViews;->Bookmarks:Lme/android/browser/UI$ComboViews;

    invoke-virtual {v8, v9}, Lme/android/browser/Controller;->bookmarksOrHistoryPicker(Lme/android/browser/UI$ComboViews;)V

    goto :goto_0

    .line 92
    :cond_3
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    const-string v9, "search"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/SearchManager;

    .line 93
    invoke-virtual {v8}, Landroid/app/SearchManager;->stopSearch()V

    .line 94
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 95
    const-string v8, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 96
    const-string v8, "android.intent.action.SEARCH"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 97
    const-string v8, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 98
    const-string v8, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 101
    :cond_4
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    iget-object v9, p0, Lme/android/browser/IntentHandler;->mController:Lme/android/browser/Controller;

    invoke-static {v8, v9, p1}, Lme/android/browser/IntentHandler;->handleWebSearchIntent(Landroid/app/Activity;Lme/android/browser/Controller;Landroid/content/Intent;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 105
    invoke-static {p1}, Lme/android/browser/IntentHandler;->getUrlDataFromIntent(Landroid/content/Intent;)Lme/android/browser/IntentHandler$UrlData;

    move-result-object v7

    .line 106
    .local v7, "urlData":Lme/android/browser/IntentHandler$UrlData;
    invoke-virtual {v7}, Lme/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 107
    new-instance v7, Lme/android/browser/IntentHandler$UrlData;

    .end local v7    # "urlData":Lme/android/browser/IntentHandler$UrlData;
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mSettings:Lme/android/browser/BrowserSettings;

    invoke-virtual {v8}, Lme/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lme/android/browser/IntentHandler$UrlData;-><init>(Ljava/lang/String;)V

    .line 110
    .restart local v7    # "urlData":Lme/android/browser/IntentHandler$UrlData;
    :cond_5
    const-string v8, "create_new_tab"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_6

    .line 111
    invoke-virtual {v7}, Lme/android/browser/IntentHandler$UrlData;->isPreloaded()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 112
    :cond_6
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mController:Lme/android/browser/Controller;

    invoke-virtual {v8, v7}, Lme/android/browser/Controller;->openTab(Lme/android/browser/IntentHandler$UrlData;)Lme/android/browser/Tab;

    move-result-object v5

    .line 113
    .local v5, "t":Lme/android/browser/Tab;
    goto/16 :goto_0

    .line 123
    .end local v5    # "t":Lme/android/browser/Tab;
    :cond_7
    const-string v8, "com.android.browser.application_id"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "appId":Ljava/lang/String;
    iget-object v8, v7, Lme/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 125
    iget-object v8, v7, Lme/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    const-string v9, "javascript:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 127
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mController:Lme/android/browser/Controller;

    invoke-virtual {v8, v7}, Lme/android/browser/Controller;->openTab(Lme/android/browser/IntentHandler$UrlData;)Lme/android/browser/Tab;

    goto/16 :goto_0

    .line 130
    :cond_8
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 131
    if-eqz v1, :cond_9

    .line 132
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 133
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v8, v1}, Lme/android/browser/TabControl;->getTabFromAppId(Ljava/lang/String;)Lme/android/browser/Tab;

    move-result-object v2

    .line 134
    .local v2, "appTab":Lme/android/browser/Tab;
    if-eqz v2, :cond_9

    iget-object v8, p0, Lme/android/browser/IntentHandler;->mController:Lme/android/browser/Controller;

    invoke-virtual {v8}, Lme/android/browser/Controller;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v8

    if-ne v2, v8, :cond_9

    .line 135
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mController:Lme/android/browser/Controller;

    invoke-virtual {v8, v2}, Lme/android/browser/Controller;->switchToTab(Lme/android/browser/Tab;)Z

    .line 136
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mController:Lme/android/browser/Controller;

    invoke-virtual {v8, v2, v7}, Lme/android/browser/Controller;->loadUrlDataIn(Lme/android/browser/Tab;Lme/android/browser/IntentHandler$UrlData;)V

    goto/16 :goto_0

    .line 140
    .end local v2    # "appTab":Lme/android/browser/Tab;
    :cond_9
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 141
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 142
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lme/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 143
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mSettings:Lme/android/browser/BrowserSettings;

    invoke-virtual {v8}, Lme/android/browser/BrowserSettings;->allowAppTabs()Z

    move-result v8

    if-nez v8, :cond_a

    .line 144
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v8, v1}, Lme/android/browser/TabControl;->getTabFromAppId(Ljava/lang/String;)Lme/android/browser/Tab;

    move-result-object v2

    .line 145
    .restart local v2    # "appTab":Lme/android/browser/Tab;
    if-eqz v2, :cond_a

    .line 146
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mController:Lme/android/browser/Controller;

    invoke-virtual {v8, v2, v7}, Lme/android/browser/Controller;->reuseTab(Lme/android/browser/Tab;Lme/android/browser/IntentHandler$UrlData;)V

    goto/16 :goto_0

    .line 152
    .end local v2    # "appTab":Lme/android/browser/Tab;
    :cond_a
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mTabControl:Lme/android/browser/TabControl;

    iget-object v9, v7, Lme/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lme/android/browser/TabControl;->findTabWithUrl(Ljava/lang/String;)Lme/android/browser/Tab;

    move-result-object v2

    .line 153
    .restart local v2    # "appTab":Lme/android/browser/Tab;
    if-eqz v2, :cond_b

    .line 155
    invoke-virtual {v2, v1}, Lme/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 156
    if-eq v3, v2, :cond_0

    .line 157
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mController:Lme/android/browser/Controller;

    invoke-virtual {v8, v2}, Lme/android/browser/Controller;->switchToTab(Lme/android/browser/Tab;)Z

    goto/16 :goto_0

    .line 166
    :cond_b
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mController:Lme/android/browser/Controller;

    invoke-virtual {v8, v7}, Lme/android/browser/Controller;->openTab(Lme/android/browser/IntentHandler$UrlData;)Lme/android/browser/Tab;

    move-result-object v6

    .line 167
    .local v6, "tab":Lme/android/browser/Tab;
    if-eqz v6, :cond_0

    .line 168
    invoke-virtual {v6, v1}, Lme/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x400000

    and-int/2addr v8, v9

    if-eqz v8, :cond_0

    .line 170
    invoke-virtual {v6, v11}, Lme/android/browser/Tab;->setCloseOnBack(Z)V

    goto/16 :goto_0

    .line 175
    .end local v2    # "appTab":Lme/android/browser/Tab;
    .end local v6    # "tab":Lme/android/browser/Tab;
    :cond_c
    invoke-virtual {v7}, Lme/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_13

    .line 176
    iget-object v8, v7, Lme/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    const-string v9, "about:debug"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 177
    const-string v8, "about:debug.dom"

    iget-object v9, v7, Lme/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 178
    invoke-virtual {v3}, Lme/android/browser/Tab;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/webkit/WebViewClassic;->dumpDomTree(Z)V

    goto/16 :goto_0

    .line 179
    :cond_d
    const-string v8, "about:debug.dom.file"

    iget-object v9, v7, Lme/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 180
    invoke-virtual {v3}, Lme/android/browser/Tab;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/webkit/WebViewClassic;->dumpDomTree(Z)V

    goto/16 :goto_0

    .line 181
    :cond_e
    const-string v8, "about:debug.render"

    iget-object v9, v7, Lme/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 182
    invoke-virtual {v3}, Lme/android/browser/Tab;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/webkit/WebViewClassic;->dumpRenderTree(Z)V

    goto/16 :goto_0

    .line 183
    :cond_f
    const-string v8, "about:debug.render.file"

    iget-object v9, v7, Lme/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 184
    invoke-virtual {v3}, Lme/android/browser/Tab;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/webkit/WebViewClassic;->dumpRenderTree(Z)V

    goto/16 :goto_0

    .line 185
    :cond_10
    const-string v8, "about:debug.display"

    iget-object v9, v7, Lme/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 186
    invoke-virtual {v3}, Lme/android/browser/Tab;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->dumpDisplayTree()V

    goto/16 :goto_0

    .line 187
    :cond_11
    const-string v8, "about:debug.nav"

    iget-object v9, v7, Lme/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 188
    invoke-virtual {v3}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/WebView;->debugDump()V

    goto/16 :goto_0

    .line 190
    :cond_12
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mSettings:Lme/android/browser/BrowserSettings;

    invoke-virtual {v8}, Lme/android/browser/BrowserSettings;->toggleDebugSettings()V

    goto/16 :goto_0

    .line 195
    :cond_13
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mController:Lme/android/browser/Controller;

    invoke-virtual {v8, v3}, Lme/android/browser/Controller;->dismissSubWindow(Lme/android/browser/Tab;)V

    .line 199
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lme/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 200
    iget-object v8, p0, Lme/android/browser/IntentHandler;->mController:Lme/android/browser/Controller;

    invoke-virtual {v8, v3, v7}, Lme/android/browser/Controller;->loadUrlDataIn(Lme/android/browser/Tab;Lme/android/browser/IntentHandler$UrlData;)V

    goto/16 :goto_0
.end method
