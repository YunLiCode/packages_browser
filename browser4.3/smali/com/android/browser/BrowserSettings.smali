.class public Lcom/android/browser/BrowserSettings;
.super Ljava/lang/Object;
.source "BrowserSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserSettings$2;
    }
.end annotation


# static fields
.field private static final USER_AGENTS:[Ljava/lang/String;

.field private static sFactoryResetUrl:Ljava/lang/String;

.field private static sInitialized:Z

.field private static sInstance:Lcom/android/browser/BrowserSettings;


# instance fields
.field private mAppCachePath:Ljava/lang/String;

.field private mAutofillHandler:Lcom/android/browser/AutofillHandler;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/browser/Controller;

.field private mCustomUserAgents:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/webkit/WebSettings;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFontSizeMult:F

.field private mLinkPrefetchAllowed:Z

.field private mManagedSettings:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNeedsSharedSync:Z

.field private mPageCacheCapacity:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSearchEngine:Lcom/android/browser/search/SearchEngine;

.field private mSetup:Ljava/lang/Runnable;

.field private mWebStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_0 like Mac OS X; en-us) AppleWebKit/532.9 (KHTML, like Gecko) Version/4.0.5 Mobile/8A293 Safari/6531.22.7"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B367 Safari/531.21.10"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Mozilla/5.0 (Linux; U; Android 2.2; en-us; Nexus One Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Mozilla/5.0 (Linux; U; Android 3.1; en-us; Xoom Build/HMJ25) AppleWebKit/534.13 (KHTML, like Gecko) Version/4.0 Safari/534.13"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/BrowserSettings;->USER_AGENTS:[Ljava/lang/String;

    .line 116
    sput-boolean v3, Lcom/android/browser/BrowserSettings;->sInitialized:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->mNeedsSharedSync:Z

    .line 118
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/browser/BrowserSettings;->mFontSizeMult:F

    .line 121
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->mLinkPrefetchAllowed:Z

    .line 124
    iput v1, p0, Lcom/android/browser/BrowserSettings;->mPageCacheCapacity:I

    .line 180
    new-instance v0, Lcom/android/browser/BrowserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserSettings$1;-><init>(Lcom/android/browser/BrowserSettings;)V

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mSetup:Ljava/lang/Runnable;

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    .line 142
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 143
    new-instance v0, Lcom/android/browser/AutofillHandler;

    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/browser/AutofillHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mAutofillHandler:Lcom/android/browser/AutofillHandler;

    .line 144
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mManagedSettings:Ljava/util/LinkedList;

    .line 145
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    .line 146
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAutofillHandler:Lcom/android/browser/AutofillHandler;

    invoke-virtual {v0}, Lcom/android/browser/AutofillHandler;->asyncLoadFromDb()V

    .line 147
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mSetup:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/BrowserSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/browser/BrowserSettings;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/BrowserSettings;
    .param p1, "x1"    # F

    .prologue
    .line 60
    iput p1, p0, Lcom/android/browser/BrowserSettings;->mFontSizeMult:F

    return p1
.end method

.method static synthetic access$202(Lcom/android/browser/BrowserSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/BrowserSettings;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/browser/BrowserSettings;->mPageCacheCapacity:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/browser/BrowserSettings;Lcom/android/browser/WebStorageSizeManager;)Lcom/android/browser/WebStorageSizeManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/BrowserSettings;
    .param p1, "x1"    # Lcom/android/browser/WebStorageSizeManager;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/browser/BrowserSettings;->mWebStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/BrowserSettings;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->getAppCachePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/BrowserSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/BrowserSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/BrowserSettings;)Landroid/webkit/WebSettings$TextSize;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/BrowserSettings;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->getTextSize()Landroid/webkit/WebSettings$TextSize;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/browser/BrowserSettings;->sFactoryResetUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 60
    sput-object p0, Lcom/android/browser/BrowserSettings;->sFactoryResetUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 60
    sput-boolean p0, Lcom/android/browser/BrowserSettings;->sInitialized:Z

    return p0
.end method

.method public static getAdjustedMinimumFontSize(I)I
    .locals 1
    .param p0, "rawValue"    # I

    .prologue
    .line 553
    add-int/lit8 p0, p0, 0x1

    .line 554
    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    .line 555
    add-int/lit8 p0, p0, 0x3

    .line 557
    :cond_0
    return p0
.end method

.method private getAppCachePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAppCachePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    const-string v1, "appcache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mAppCachePath:Ljava/lang/String;

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAppCachePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 388
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 389
    sget-object v0, Lcom/android/browser/BrowserSettings;->sFactoryResetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/android/browser/BrowserSettings;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/android/browser/BrowserSettings;->sInstance:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method public static getLinkPrefetchAlwaysPreferenceString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 904
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLinkPrefetchOnWifiOnlyPreferenceString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 900
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreloadAlwaysPreferenceString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 880
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreloadOnWifiOnlyPreferenceString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 876
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getRawTextZoom(I)I
    .locals 1
    .param p0, "percent"    # I

    .prologue
    .line 566
    add-int/lit8 v0, p0, -0x64

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private getTextSize()Landroid/webkit/WebSettings$TextSize;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 619
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "text_size"

    const-string v3, "NORMAL"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "textSize":Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/WebSettings$TextSize;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$TextSize;

    move-result-object v1

    return-object v1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    new-instance v0, Lcom/android/browser/BrowserSettings;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserSettings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/browser/BrowserSettings;->sInstance:Lcom/android/browser/BrowserSettings;

    .line 134
    return-void
.end method

.method private static requireInitialization()V
    .locals 2

    .prologue
    .line 241
    const-class v1, Lcom/android/browser/BrowserSettings;

    monitor-enter v1

    .line 242
    :goto_0
    :try_start_0
    sget-boolean v0, Lcom/android/browser/BrowserSettings;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 244
    :try_start_1
    const-class v0, Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    goto :goto_0

    .line 248
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 249
    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private resetCachedValues()V
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserSettings;->updateSearchEngine(Z)V

    .line 515
    return-void
.end method

.method private syncManagedSettings()V
    .locals 5

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncSharedSettings()V

    .line 354
    iget-object v4, p0, Lcom/android/browser/BrowserSettings;->mManagedSettings:Ljava/util/LinkedList;

    monitor-enter v4

    .line 355
    :try_start_0
    iget-object v3, p0, Lcom/android/browser/BrowserSettings;->mManagedSettings:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 356
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 358
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebSettingsClassic;

    .line 359
    .local v2, "settings":Landroid/webkit/WebSettingsClassic;
    if-nez v2, :cond_0

    .line 360
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 365
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;>;"
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;"
    .end local v2    # "settings":Landroid/webkit/WebSettingsClassic;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 363
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;>;"
    .restart local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;"
    .restart local v2    # "settings":Landroid/webkit/WebSettingsClassic;
    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/browser/BrowserSettings;->syncSetting(Landroid/webkit/WebSettingsClassic;)V

    goto :goto_0

    .line 365
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;"
    .end local v2    # "settings":Landroid/webkit/WebSettingsClassic;
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    return-void
.end method

.method private syncSetting(Landroid/webkit/WebSettingsClassic;)V
    .locals 4
    .param p1, "settings"    # Landroid/webkit/WebSettingsClassic;

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableGeolocation()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setGeolocationEnabled(Z)V

    .line 256
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableJavascript()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setJavaScriptEnabled(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableLightTouch()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setLightTouchEnabled(Z)V

    .line 258
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableNavDump()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setNavDump(Z)V

    .line 259
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isSkiaHardwareAccelerated()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setHardwareAccelSkiaEnabled(Z)V

    .line 260
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableVisualIndicator()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setShowVisualIndicator(Z)V

    .line 261
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getDefaultTextEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getMinimumFontSize()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setMinimumFontSize(I)V

    .line 264
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getMinimumFontSize()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setMinimumLogicalFontSize(I)V

    .line 265
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->forceEnableUserScalable()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setForceUserScalable(Z)V

    .line 266
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getPluginState()Landroid/webkit/WebSettings$PluginState;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getTextZoom()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setTextZoom(I)V

    .line 268
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getDoubleTapZoom()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setDoubleTapZoom(I)V

    .line 269
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isAutofillEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setAutoFillEnabled(Z)V

    .line 270
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->blockPopupWindows()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 272
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->loadImages()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setLoadsImagesAutomatically(Z)V

    .line 273
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->loadPageInOverviewMode()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setLoadWithOverviewMode(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->rememberPasswords()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setSavePassword(Z)V

    .line 275
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->saveFormdata()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setSaveFormData(Z)V

    .line 276
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isWideViewport()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setUseWideViewPort(Z)V

    .line 277
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getAutoFillProfile()Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setAutoFillProfile(Landroid/webkit/WebSettingsClassic$AutoFillProfile;)V

    .line 279
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    .local v0, "ua":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 281
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettingsClassic;->setUserAgentString(Ljava/lang/String;)V

    .line 286
    :goto_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->useInvertedRendering()Z

    move-result v1

    .line 287
    .local v1, "useInverted":Z
    const-string v3, "inverted"

    if-eqz v1, :cond_4

    const-string v2, "true"

    :goto_2
    invoke-virtual {p1, v3, v2}, Landroid/webkit/WebSettingsClassic;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    if-eqz v1, :cond_0

    .line 290
    const-string v2, "inverted_contrast"

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getInvertedContrast()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/webkit/WebSettingsClassic;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    const-string v3, "enable_cpu_upload_path"

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableCpuUploadPath()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "true"

    :goto_3
    invoke-virtual {p1, v3, v2}, Landroid/webkit/WebSettingsClassic;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_1
    iget-boolean v2, p0, Lcom/android/browser/BrowserSettings;->mLinkPrefetchAllowed:Z

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setLinkPrefetchEnabled(Z)V

    .line 300
    return-void

    .line 271
    .end local v0    # "ua":Ljava/lang/String;
    .end local v1    # "useInverted":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 283
    .restart local v0    # "ua":Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/android/browser/BrowserSettings;->USER_AGENTS:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getUserAgent()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_1

    .line 287
    .restart local v1    # "useInverted":Z
    :cond_4
    const-string v2, "false"

    goto :goto_2

    .line 295
    :cond_5
    const-string v2, "false"

    goto :goto_3
.end method

.method private syncSharedSettings()V
    .locals 2

    .prologue
    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserSettings;->mNeedsSharedSync:Z

    .line 346
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->acceptCookies()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 347
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableJavascriptConsole()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->setShouldShowErrorConsole(Z)V

    .line 350
    :cond_0
    return-void
.end method

.method private syncStaticSettings(Landroid/webkit/WebSettingsClassic;)V
    .locals 4
    .param p1, "settings"    # Landroid/webkit/WebSettingsClassic;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 307
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettingsClassic;->setDefaultFontSize(I)V

    .line 308
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettingsClassic;->setDefaultFixedFontSize(I)V

    .line 309
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getPageCacheCapacity()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettingsClassic;->setPageCacheCapacity(I)V

    .line 312
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setNeedInitialFocus(Z)V

    .line 314
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettingsClassic;->setSupportMultipleWindows(Z)V

    .line 317
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettingsClassic;->setEnableSmoothTransition(Z)V

    .line 324
    const-string v0, "use_minimal_memory"

    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebSettingsClassic;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setAllowContentAccess(Z)V

    .line 329
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettingsClassic;->setAppCacheEnabled(Z)V

    .line 330
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettingsClassic;->setDatabaseEnabled(Z)V

    .line 331
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettingsClassic;->setDomStorageEnabled(Z)V

    .line 332
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettingsClassic;->setWorkersEnabled(Z)V

    .line 335
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getWebStorageSizeManager()Lcom/android/browser/WebStorageSizeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/WebStorageSizeManager;->getAppCacheMaxSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebSettingsClassic;->setAppCacheMaxSize(J)V

    .line 336
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->getAppCachePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettingsClassic;->setAppCachePath(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    const-string v1, "databases"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettingsClassic;->setDatabasePath(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    const-string v1, "geolocation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettingsClassic;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 341
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettingsClassic;->setAllowFileAccessFromFileURLs(Z)V

    .line 342
    return-void
.end method

.method private updateSearchEngine(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getSearchEngineName()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "searchEngineName":Ljava/lang/String;
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v1}, Lcom/android/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/browser/search/SearchEngines;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/browser/search/SearchEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    .line 434
    :cond_1
    return-void
.end method


# virtual methods
.method public acceptCookies()Z
    .locals 3

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "accept_cookies"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public allowAppTabs()Z
    .locals 3

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "allow_apptabs"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public autofitPages()Z
    .locals 3

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "autofit_pages"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blockPopupWindows()Z
    .locals 3

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "block_popup_windows"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 459
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebIconDatabase;->removeAllIcons()V

    .line 460
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 462
    .local v0, "current":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 463
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 466
    .end local v0    # "current":Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method public clearCookies()V
    .locals 1

    .prologue
    .line 469
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 470
    return-void
.end method

.method public clearDatabases()V
    .locals 1

    .prologue
    .line 495
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 496
    return-void
.end method

.method public clearFormData()V
    .locals 2

    .prologue
    .line 479
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewDatabase;->clearFormData()V

    .line 480
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 482
    .local v0, "currentTopView":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 486
    .end local v0    # "currentTopView":Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method public clearHistory()V
    .locals 2

    .prologue
    .line 473
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 474
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 475
    invoke-static {v0}, Landroid/provider/Browser;->clearSearches(Landroid/content/ContentResolver;)V

    .line 476
    return-void
.end method

.method public clearLocationAccess()V
    .locals 1

    .prologue
    .line 499
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    .line 500
    return-void
.end method

.method public clearPasswords()V
    .locals 2

    .prologue
    .line 489
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    .line 490
    .local v0, "db":Landroid/webkit/WebViewDatabase;
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearUsernamePassword()V

    .line 491
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearHttpAuthUsernamePassword()V

    .line 492
    return-void
.end method

.method public enableCpuUploadPath()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 761
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 764
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_cpu_upload_path"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public enableGeolocation()Z
    .locals 3

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enable_geolocation"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public enableJavascript()Z
    .locals 3

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enable_javascript"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public enableJavascriptConsole()Z
    .locals 3

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 769
    const/4 v0, 0x0

    .line 771
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "javascript_console"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public enableLightTouch()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 803
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 806
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_light_touch"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public enableNavDump()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 810
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 813
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_nav_dump"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public enableVisualIndicator()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 754
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 757
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_visual_indicator"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public forceEnableUserScalable()Z
    .locals 3

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "force_userscalable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAdjustedDoubleTapZoom(I)I
    .locals 2
    .param p1, "rawValue"    # I

    .prologue
    .line 570
    add-int/lit8 v0, p1, -0x5

    mul-int/lit8 p1, v0, 0x5

    .line 571
    add-int/lit8 v0, p1, 0x64

    int-to-float v0, v0

    iget v1, p0, Lcom/android/browser/BrowserSettings;->mFontSizeMult:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getAdjustedTextZoom(I)I
    .locals 2
    .param p1, "rawValue"    # I

    .prologue
    .line 561
    add-int/lit8 v0, p1, -0xa

    mul-int/lit8 p1, v0, 0x5

    .line 562
    add-int/lit8 v0, p1, 0x64

    int-to-float v0, v0

    iget v1, p0, Lcom/android/browser/BrowserSettings;->mFontSizeMult:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getAutoFillProfile()Landroid/webkit/WebSettingsClassic$AutoFillProfile;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAutofillHandler:Lcom/android/browser/AutofillHandler;

    invoke-virtual {v0}, Lcom/android/browser/AutofillHandler;->getAutoFillProfile()Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultLinkPrefetchSetting()Ljava/lang/String;
    .locals 2

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "browser_default_link_prefetch_setting"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 913
    if-nez v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 916
    :cond_0
    return-object v0
.end method

.method public getDefaultPreloadSetting()Ljava/lang/String;
    .locals 2

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "browser_default_preload_setting"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 889
    if-nez v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 892
    :cond_0
    return-object v0
.end method

.method public getDefaultTextEncoding()Ljava/lang/String;
    .locals 3

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "default_text_encoding"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;
    .locals 4

    .prologue
    .line 680
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "default_zoom"

    const-string v3, "MEDIUM"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, "zoom":Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/WebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v1

    return-object v1
.end method

.method public getDoubleTapZoom()I
    .locals 4

    .prologue
    .line 643
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 644
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "double_tap_zoom"

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 645
    .local v0, "doubleTapZoom":I
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserSettings;->getAdjustedDoubleTapZoom(I)I

    move-result v1

    return v1
.end method

.method public getHomePage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "homepage"

    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/browser/BrowserSettings;->getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInvertedContrast()F
    .locals 4

    .prologue
    .line 844
    const/high16 v0, 0x3f800000

    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "inverted_contrast"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41200000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getJsEngineFlags()Ljava/lang/String;
    .locals 3

    .prologue
    .line 817
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 818
    const-string v0, ""

    .line 820
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "js_engine_flags"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastRecovered()J
    .locals 4

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "last_recovered"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;
    .locals 2

    .prologue
    .line 393
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 394
    .local v0, "layoutAlgorithm":Landroid/webkit/WebSettings$LayoutAlgorithm;
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->autofitPages()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isSmallScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 408
    :cond_1
    :goto_0
    return-object v0

    .line 401
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isNormalLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 402
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto :goto_0

    .line 404
    :cond_3
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto :goto_0
.end method

.method public getLinkPrefetchEnabled()Ljava/lang/String;
    .locals 3

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "link_prefetch_when"

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getDefaultLinkPrefetchSetting()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumFontSize()I
    .locals 4

    .prologue
    .line 624
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "min_font_size"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 625
    .local v0, "minFont":I
    invoke-static {v0}, Lcom/android/browser/BrowserSettings;->getAdjustedMinimumFontSize(I)I

    move-result v1

    return v1
.end method

.method public getPageCacheCapacity()I
    .locals 1

    .prologue
    .line 412
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 413
    iget v0, p0, Lcom/android/browser/BrowserSettings;->mPageCacheCapacity:I

    return v0
.end method

.method public getPluginState()Landroid/webkit/WebSettings$PluginState;
    .locals 4

    .prologue
    .line 674
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "plugin_state"

    const-string v3, "ON"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, "state":Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/WebSettings$PluginState;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$PluginState;

    move-result-object v1

    return-object v1
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getPreloadEnabled()Ljava/lang/String;
    .locals 3

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "preload_when"

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getDefaultPreloadSetting()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchEngine()Lcom/android/browser/search/SearchEngine;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    if-nez v0, :cond_0

    .line 438
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserSettings;->updateSearchEngine(Z)V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    return-object v0
.end method

.method public getSearchEngineName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "search_engine"

    const-string v2, "google"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextZoom()I
    .locals 4

    .prologue
    .line 633
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 634
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "text_zoom"

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 635
    .local v0, "textZoom":I
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserSettings;->getAdjustedTextZoom(I)I

    move-result v1

    return v1
.end method

.method public getUserAgent()I
    .locals 3

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    const/4 v0, 0x0

    .line 746
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "user_agent"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getWebStorageSizeManager()Lcom/android/browser/WebStorageSizeManager;
    .locals 1

    .prologue
    .line 417
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 418
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mWebStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    return-object v0
.end method

.method public hasDesktopUseragent(Landroid/webkit/WebView;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 535
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutofillEnabled()Z
    .locals 3

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "autofill_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDebugEnabled()Z
    .locals 3

    .prologue
    .line 444
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 445
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "debug_menu"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 729
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 732
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_hardware_accel"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isNormalLayout()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 789
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 792
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "normal_layout"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isSkiaHardwareAccelerated()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 736
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 739
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_hardware_accel_skia"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isSmallScreen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 775
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 778
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "small_screen"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isTracing()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 796
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 799
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_tracing"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isWideViewport()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 782
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 785
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "wide_viewport"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public loadImages()Z
    .locals 3

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "load_images"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public loadPageInOverviewMode()Z
    .locals 3

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "load_page"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 371
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncManagedSettings()V

    .line 372
    const-string v0, "search_engine"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserSettings;->updateSearchEngine(Z)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    const-string v0, "fullscreen"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getUi()Lcom/android/browser/UI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getUi()Lcom/android/browser/UI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->useFullscreen()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->setFullscreen(Z)V

    goto :goto_0

    .line 378
    :cond_2
    const-string v0, "enable_quick_controls"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 379
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getUi()Lcom/android/browser/UI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getUi()Lcom/android/browser/UI;

    move-result-object v0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->setUseQuickControls(Z)V

    goto :goto_0

    .line 382
    :cond_3
    const-string v0, "link_prefetch_when"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->updateConnectionType()V

    goto :goto_0
.end method

.method public openInBackground()Z
    .locals 3

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "open_in_background"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public rememberPasswords()Z
    .locals 3

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "remember_passwords"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public resetDefaultPreferences()V
    .locals 6

    .prologue
    .line 504
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "last_autologin_time"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 505
    .local v0, "gal":J
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_autologin_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 509
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->resetCachedValues()V

    .line 510
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncManagedSettings()V

    .line 511
    return-void
.end method

.method public saveFormdata()Z
    .locals 3

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "save_formdata"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAutoFillProfile(Landroid/webkit/WebSettingsClassic$AutoFillProfile;Landroid/os/Message;)V
    .locals 1
    .param p1, "profile"    # Landroid/webkit/WebSettingsClassic$AutoFillProfile;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAutofillHandler:Lcom/android/browser/AutofillHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/AutofillHandler;->setAutoFillProfile(Landroid/webkit/WebSettingsClassic$AutoFillProfile;Landroid/os/Message;)V

    .line 527
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncManagedSettings()V

    .line 528
    return-void
.end method

.method public setAutofillEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autofill_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 722
    return-void
.end method

.method public setController(Lcom/android/browser/Controller;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/browser/Controller;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    .line 152
    sget-boolean v0, Lcom/android/browser/BrowserSettings;->sInitialized:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncSharedSettings()V

    .line 155
    :cond_0
    return-void
.end method

.method public setDebugEnabled(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 449
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 450
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "debug_menu"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 451
    if-nez p1, :cond_0

    .line 453
    const-string v1, "enable_hardware_accel_skia"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 455
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 456
    return-void
.end method

.method public setHomePage(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "homepage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 714
    return-void
.end method

.method public setLastRecovered(J)V
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_recovered"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 944
    return-void
.end method

.method public setLastRunPaused(Z)V
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_paused"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 965
    return-void
.end method

.method public setTextZoom(I)V
    .locals 3
    .param p1, "percent"    # I

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "text_zoom"

    invoke-static {p1}, Lcom/android/browser/BrowserSettings;->getRawTextZoom(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 640
    return-void
.end method

.method public showSecurityWarnings()Z
    .locals 3

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "show_security_warnings"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public startManagingSettings(Landroid/webkit/WebSettings;)V
    .locals 4
    .param p1, "settings"    # Landroid/webkit/WebSettings;

    .prologue
    .line 158
    move-object v0, p1

    check-cast v0, Landroid/webkit/WebSettingsClassic;

    .line 159
    .local v0, "settingsClassic":Landroid/webkit/WebSettingsClassic;
    iget-boolean v1, p0, Lcom/android/browser/BrowserSettings;->mNeedsSharedSync:Z

    if-eqz v1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncSharedSettings()V

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mManagedSettings:Ljava/util/LinkedList;

    monitor-enter v2

    .line 163
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserSettings;->syncStaticSettings(Landroid/webkit/WebSettingsClassic;)V

    .line 164
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserSettings;->syncSetting(Landroid/webkit/WebSettingsClassic;)V

    .line 165
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mManagedSettings:Ljava/util/LinkedList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 166
    monitor-exit v2

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopManagingSettings(Landroid/webkit/WebSettings;)V
    .locals 3
    .param p1, "settings"    # Landroid/webkit/WebSettings;

    .prologue
    .line 170
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mManagedSettings:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 171
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 173
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 174
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 178
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;"
    :cond_1
    return-void
.end method

.method public toggleDebugSettings()V
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserSettings;->setDebugEnabled(Z)V

    .line 532
    return-void

    .line 531
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggleDesktopUseragent(Landroid/webkit/WebView;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 539
    if-nez p1, :cond_0

    .line 550
    :goto_0
    return-void

    .line 542
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 543
    .local v0, "settings":Landroid/webkit/WebSettings;
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 544
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    sget-object v1, Lcom/android/browser/BrowserSettings;->USER_AGENTS:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getUserAgent()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    const-string v2, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string v1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateConnectionType()V
    .locals 6

    .prologue
    .line 584
    iget-object v4, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 586
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getLinkPrefetchEnabled()Ljava/lang/String;

    move-result-object v2

    .line 587
    .local v2, "linkPrefetchPreference":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/browser/BrowserSettings;->getLinkPrefetchAlwaysPreferenceString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 589
    .local v1, "linkPrefetchAllowed":Z
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 590
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 591
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 607
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/browser/BrowserSettings;->mLinkPrefetchAllowed:Z

    if-eq v4, v1, :cond_1

    .line 608
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->mLinkPrefetchAllowed:Z

    .line 609
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncManagedSettings()V

    .line 611
    :cond_1
    return-void

    .line 595
    :sswitch_0
    iget-object v4, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/browser/BrowserSettings;->getLinkPrefetchOnWifiOnlyPreferenceString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 597
    goto :goto_0

    .line 591
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public useFullscreen()Z
    .locals 3

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "fullscreen"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public useInvertedRendering()Z
    .locals 3

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "inverted"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public useMostVisitedHomepage()Z
    .locals 2

    .prologue
    .line 832
    const-string v0, "content://com.android.browser.home/"

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public useQuickControls()Z
    .locals 3

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enable_quick_controls"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public wasLastRunPaused()Z
    .locals 3

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "last_paused"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
