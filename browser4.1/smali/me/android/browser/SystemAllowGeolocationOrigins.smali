.class Lme/android/browser/SystemAllowGeolocationOrigins;
.super Ljava/lang/Object;
.source "SystemAllowGeolocationOrigins.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/android/browser/SystemAllowGeolocationOrigins$SettingObserver;
    }
.end annotation


# static fields
.field private static final LAST_READ_ALLOW_GEOLOCATION_ORIGINS:Ljava/lang/String; = "last_read_allow_geolocation_origins"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMaybeApplySetting:Ljava/lang/Runnable;

.field private final mSettingObserver:Lme/android/browser/SystemAllowGeolocationOrigins$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lme/android/browser/SystemAllowGeolocationOrigins$1;

    invoke-direct {v0, p0}, Lme/android/browser/SystemAllowGeolocationOrigins$1;-><init>(Lme/android/browser/SystemAllowGeolocationOrigins;)V

    iput-object v0, p0, Lme/android/browser/SystemAllowGeolocationOrigins;->mMaybeApplySetting:Ljava/lang/Runnable;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/SystemAllowGeolocationOrigins;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lme/android/browser/SystemAllowGeolocationOrigins$SettingObserver;

    invoke-direct {v0, p0}, Lme/android/browser/SystemAllowGeolocationOrigins$SettingObserver;-><init>(Lme/android/browser/SystemAllowGeolocationOrigins;)V

    iput-object v0, p0, Lme/android/browser/SystemAllowGeolocationOrigins;->mSettingObserver:Lme/android/browser/SystemAllowGeolocationOrigins$SettingObserver;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lme/android/browser/SystemAllowGeolocationOrigins;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Lme/android/browser/SystemAllowGeolocationOrigins;->getSystemSetting()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 125
    invoke-static {p0}, Lme/android/browser/SystemAllowGeolocationOrigins;->parseAllowGeolocationOrigins(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lme/android/browser/SystemAllowGeolocationOrigins;Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Lme/android/browser/SystemAllowGeolocationOrigins;->setMinus(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lme/android/browser/SystemAllowGeolocationOrigins;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lme/android/browser/SystemAllowGeolocationOrigins;->removeOrigins(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$4(Lme/android/browser/SystemAllowGeolocationOrigins;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lme/android/browser/SystemAllowGeolocationOrigins;->addOrigins(Ljava/util/Set;)V

    return-void
.end method

.method private addOrigins(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "origins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    return-void

    .line 167
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    .local v0, "origin":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/GeolocationPermissions;->allow(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSystemSetting()Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lme/android/browser/SystemAllowGeolocationOrigins;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 159
    const-string v2, "allowed_geolocation_origins"

    .line 158
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static parseAllowGeolocationOrigins(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 6
    .param p0, "setting"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 127
    .local v1, "origins":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    const-string v2, "\\s+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_1

    .line 134
    :cond_0
    return-object v1

    .line 128
    :cond_1
    aget-object v0, v3, v2

    .line 129
    .local v0, "origin":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 130
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private removeOrigins(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "origins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    return-void

    .line 177
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    .local v0, "origin":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v2

    new-instance v3, Lme/android/browser/SystemAllowGeolocationOrigins$2;

    invoke-direct {v3, p0, v0}, Lme/android/browser/SystemAllowGeolocationOrigins$2;-><init>(Lme/android/browser/SystemAllowGeolocationOrigins;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Landroid/webkit/GeolocationPermissions;->getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method private setMinus(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TA;>;",
            "Ljava/util/Set",
            "<TA;>;)",
            "Ljava/util/Set",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "x":Ljava/util/Set;, "Ljava/util/Set<TA;>;"
    .local p2, "y":Ljava/util/Set;, "Ljava/util/Set<TA;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 144
    .local v1, "z":Ljava/util/HashSet;, "Ljava/util/HashSet<TA;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    return-object v1

    .line 144
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    .line 145
    .local v0, "a":Ljava/lang/Object;, "TA;"
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method maybeApplySettingAsync()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lme/android/browser/SystemAllowGeolocationOrigins;->mMaybeApplySetting:Ljava/lang/Runnable;

    invoke-static {v0}, Lme/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 61
    const-string v1, "allowed_geolocation_origins"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 62
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lme/android/browser/SystemAllowGeolocationOrigins;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lme/android/browser/SystemAllowGeolocationOrigins;->mSettingObserver:Lme/android/browser/SystemAllowGeolocationOrigins$SettingObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 65
    invoke-virtual {p0}, Lme/android/browser/SystemAllowGeolocationOrigins;->maybeApplySettingAsync()V

    .line 66
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lme/android/browser/SystemAllowGeolocationOrigins;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lme/android/browser/SystemAllowGeolocationOrigins;->mSettingObserver:Lme/android/browser/SystemAllowGeolocationOrigins$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 73
    return-void
.end method