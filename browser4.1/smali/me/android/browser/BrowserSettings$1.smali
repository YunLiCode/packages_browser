.class Lme/android/browser/BrowserSettings$1;
.super Ljava/lang/Object;
.source "BrowserSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/BrowserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$android$webkit$WebSettings$TextSize:[I


# instance fields
.field final synthetic this$0:Lme/android/browser/BrowserSettings;


# direct methods
.method static synthetic $SWITCH_TABLE$android$webkit$WebSettings$TextSize()[I
    .locals 3

    .prologue
    .line 180
    sget-object v0, Lme/android/browser/BrowserSettings$1;->$SWITCH_TABLE$android$webkit$WebSettings$TextSize:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/webkit/WebSettings$TextSize;->values()[Landroid/webkit/WebSettings$TextSize;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v1}, Landroid/webkit/WebSettings$TextSize;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v1}, Landroid/webkit/WebSettings$TextSize;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v1}, Landroid/webkit/WebSettings$TextSize;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v1}, Landroid/webkit/WebSettings$TextSize;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->SMALLEST:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v1}, Landroid/webkit/WebSettings$TextSize;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lme/android/browser/BrowserSettings$1;->$SWITCH_TABLE$android$webkit$WebSettings$TextSize:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lme/android/browser/BrowserSettings;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/BrowserSettings$1;->this$0:Lme/android/browser/BrowserSettings;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 184
    iget-object v1, p0, Lme/android/browser/BrowserSettings$1;->this$0:Lme/android/browser/BrowserSettings;

    # getter for: Lme/android/browser/BrowserSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lme/android/browser/BrowserSettings;->access$0(Lme/android/browser/BrowserSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 185
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lme/android/browser/BrowserSettings$1;->this$0:Lme/android/browser/BrowserSettings;

    iget v2, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Lme/android/browser/BrowserSettings;->access$1(Lme/android/browser/BrowserSettings;F)V

    .line 189
    invoke-static {}, Landroid/app/ActivityManager;->staticGetMemoryClass()I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_0

    .line 190
    iget-object v1, p0, Lme/android/browser/BrowserSettings$1;->this$0:Lme/android/browser/BrowserSettings;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lme/android/browser/BrowserSettings;->access$2(Lme/android/browser/BrowserSettings;I)V

    .line 192
    :cond_0
    iget-object v1, p0, Lme/android/browser/BrowserSettings$1;->this$0:Lme/android/browser/BrowserSettings;

    new-instance v2, Lme/android/browser/WebStorageSizeManager;

    iget-object v3, p0, Lme/android/browser/BrowserSettings$1;->this$0:Lme/android/browser/BrowserSettings;

    # getter for: Lme/android/browser/BrowserSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lme/android/browser/BrowserSettings;->access$0(Lme/android/browser/BrowserSettings;)Landroid/content/Context;

    move-result-object v3

    .line 193
    new-instance v4, Lme/android/browser/WebStorageSizeManager$StatFsDiskInfo;

    iget-object v5, p0, Lme/android/browser/BrowserSettings$1;->this$0:Lme/android/browser/BrowserSettings;

    # invokes: Lme/android/browser/BrowserSettings;->getAppCachePath()Ljava/lang/String;
    invoke-static {v5}, Lme/android/browser/BrowserSettings;->access$3(Lme/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lme/android/browser/WebStorageSizeManager$StatFsDiskInfo;-><init>(Ljava/lang/String;)V

    .line 194
    new-instance v5, Lme/android/browser/WebStorageSizeManager$WebKitAppCacheInfo;

    iget-object v6, p0, Lme/android/browser/BrowserSettings$1;->this$0:Lme/android/browser/BrowserSettings;

    # invokes: Lme/android/browser/BrowserSettings;->getAppCachePath()Ljava/lang/String;
    invoke-static {v6}, Lme/android/browser/BrowserSettings;->access$3(Lme/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lme/android/browser/WebStorageSizeManager$WebKitAppCacheInfo;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lme/android/browser/WebStorageSizeManager;-><init>(Landroid/content/Context;Lme/android/browser/WebStorageSizeManager$DiskInfo;Lme/android/browser/WebStorageSizeManager$AppCacheInfo;)V

    .line 192
    invoke-static {v1, v2}, Lme/android/browser/BrowserSettings;->access$4(Lme/android/browser/BrowserSettings;Lme/android/browser/WebStorageSizeManager;)V

    .line 196
    iget-object v1, p0, Lme/android/browser/BrowserSettings$1;->this$0:Lme/android/browser/BrowserSettings;

    # getter for: Lme/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lme/android/browser/BrowserSettings;->access$5(Lme/android/browser/BrowserSettings;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lme/android/browser/BrowserSettings$1;->this$0:Lme/android/browser/BrowserSettings;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 197
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v2, "REL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lme/android/browser/BrowserSettings$1;->this$0:Lme/android/browser/BrowserSettings;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lme/android/browser/BrowserSettings;->setDebugEnabled(Z)V

    .line 201
    :cond_1
    iget-object v1, p0, Lme/android/browser/BrowserSettings$1;->this$0:Lme/android/browser/BrowserSettings;

    # getter for: Lme/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lme/android/browser/BrowserSettings;->access$5(Lme/android/browser/BrowserSettings;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "text_size"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    invoke-static {}, Lme/android/browser/BrowserSettings$1;->$SWITCH_TABLE$android$webkit$WebSettings$TextSize()[I

    move-result-object v1

    iget-object v2, p0, Lme/android/browser/BrowserSettings$1;->this$0:Lme/android/browser/BrowserSettings;

    # invokes: Lme/android/browser/BrowserSettings;->getTextSize()Landroid/webkit/WebSettings$TextSize;
    invoke-static {v2}, Lme/android/browser/BrowserSettings;->access$6(Lme/android/browser/BrowserSettings;)Landroid/webkit/WebSettings$TextSize;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings$TextSize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 224
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lme/android/browser/BrowserSettings$1;->this$0:Lme/android/browser/BrowserSettings;

    # getter for: Lme/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lme/android/browser/BrowserSettings;->access$5(Lme/android/browser/BrowserSettings;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "text_size"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    :cond_2
    iget-object v1, p0, Lme/android/browser/BrowserSettings$1;->this$0:Lme/android/browser/BrowserSettings;

    # getter for: Lme/android/browser/BrowserSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lme/android/browser/BrowserSettings;->access$0(Lme/android/browser/BrowserSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08011c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/android/browser/BrowserSettings;->access$7(Ljava/lang/String;)V

    .line 228
    # getter for: Lme/android/browser/BrowserSettings;->sFactoryResetUrl:Ljava/lang/String;
    invoke-static {}, Lme/android/browser/BrowserSettings;->access$8()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{CID}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 229
    # getter for: Lme/android/browser/BrowserSettings;->sFactoryResetUrl:Ljava/lang/String;
    invoke-static {}, Lme/android/browser/BrowserSettings;->access$8()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{CID}"

    .line 230
    iget-object v3, p0, Lme/android/browser/BrowserSettings$1;->this$0:Lme/android/browser/BrowserSettings;

    # getter for: Lme/android/browser/BrowserSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lme/android/browser/BrowserSettings;->access$0(Lme/android/browser/BrowserSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lme/android/browser/provider/BrowserProvider;->getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/android/browser/BrowserSettings;->access$7(Ljava/lang/String;)V

    .line 233
    :cond_3
    const-class v2, Lme/android/browser/BrowserSettings;

    monitor-enter v2

    .line 234
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lme/android/browser/BrowserSettings;->access$9(Z)V

    .line 235
    const-class v1, Lme/android/browser/BrowserSettings;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 233
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    return-void

    .line 212
    :pswitch_1
    iget-object v1, p0, Lme/android/browser/BrowserSettings$1;->this$0:Lme/android/browser/BrowserSettings;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lme/android/browser/BrowserSettings;->setTextZoom(I)V

    goto :goto_0

    .line 215
    :pswitch_2
    iget-object v1, p0, Lme/android/browser/BrowserSettings$1;->this$0:Lme/android/browser/BrowserSettings;

    const/16 v2, 0x4b

    invoke-virtual {v1, v2}, Lme/android/browser/BrowserSettings;->setTextZoom(I)V

    goto :goto_0

    .line 218
    :pswitch_3
    iget-object v1, p0, Lme/android/browser/BrowserSettings$1;->this$0:Lme/android/browser/BrowserSettings;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Lme/android/browser/BrowserSettings;->setTextZoom(I)V

    goto :goto_0

    .line 221
    :pswitch_4
    iget-object v1, p0, Lme/android/browser/BrowserSettings$1;->this$0:Lme/android/browser/BrowserSettings;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lme/android/browser/BrowserSettings;->setTextZoom(I)V

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 210
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
