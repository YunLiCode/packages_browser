.class public Lme/android/browser/Tab$PageState;
.super Ljava/lang/Object;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PageState"
.end annotation


# instance fields
.field mFavicon:Landroid/graphics/Bitmap;

.field mIncognito:Z

.field mIsBookmarkedSite:Z

.field mOriginalUrl:Ljava/lang/String;

.field mSecurityState:Lme/android/browser/Tab$SecurityState;

.field mSslCertificateError:Landroid/net/http/SslError;

.field mTitle:Ljava/lang/String;

.field mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "incognito"    # Z

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-boolean p2, p0, Lme/android/browser/Tab$PageState;->mIncognito:Z

    .line 217
    iget-boolean v0, p0, Lme/android/browser/Tab$PageState;->mIncognito:Z

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "browser:incognito"

    iput-object v0, p0, Lme/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lme/android/browser/Tab$PageState;->mOriginalUrl:Ljava/lang/String;

    .line 219
    const v0, 0x7f080006

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    .line 224
    :goto_0
    sget-object v0, Lme/android/browser/Tab$SecurityState;->SECURITY_STATE_NOT_SECURE:Lme/android/browser/Tab$SecurityState;

    iput-object v0, p0, Lme/android/browser/Tab$PageState;->mSecurityState:Lme/android/browser/Tab$SecurityState;

    .line 225
    return-void

    .line 221
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lme/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lme/android/browser/Tab$PageState;->mOriginalUrl:Ljava/lang/String;

    .line 222
    const v0, 0x7f080005

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;ZLjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "incognito"    # Z
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-boolean p2, p0, Lme/android/browser/Tab$PageState;->mIncognito:Z

    .line 229
    iput-object p3, p0, Lme/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    iput-object p3, p0, Lme/android/browser/Tab$PageState;->mOriginalUrl:Ljava/lang/String;

    .line 230
    invoke-static {p3}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    sget-object v0, Lme/android/browser/Tab$SecurityState;->SECURITY_STATE_SECURE:Lme/android/browser/Tab$SecurityState;

    iput-object v0, p0, Lme/android/browser/Tab$PageState;->mSecurityState:Lme/android/browser/Tab$SecurityState;

    .line 235
    :goto_0
    iput-object p4, p0, Lme/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    .line 236
    return-void

    .line 233
    :cond_0
    sget-object v0, Lme/android/browser/Tab$SecurityState;->SECURITY_STATE_NOT_SECURE:Lme/android/browser/Tab$SecurityState;

    iput-object v0, p0, Lme/android/browser/Tab$PageState;->mSecurityState:Lme/android/browser/Tab$SecurityState;

    goto :goto_0
.end method
