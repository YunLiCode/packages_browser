.class Lme/android/browser/IntentHandler$UrlData;
.super Ljava/lang/Object;
.source "IntentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/IntentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UrlData"
.end annotation


# instance fields
.field final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPreloadedTab:Lme/android/browser/PreloadedTabControl;

.field final mSearchBoxQueryToSubmit:Ljava/lang/String;

.field final mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p1, p0, Lme/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    .line 341
    iput-object v0, p0, Lme/android/browser/IntentHandler$UrlData;->mHeaders:Ljava/util/Map;

    .line 342
    iput-object v0, p0, Lme/android/browser/IntentHandler$UrlData;->mPreloadedTab:Lme/android/browser/PreloadedTabControl;

    .line 343
    iput-object v0, p0, Lme/android/browser/IntentHandler$UrlData;->mSearchBoxQueryToSubmit:Ljava/lang/String;

    .line 344
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Intent;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 347
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lme/android/browser/IntentHandler$UrlData;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Intent;Lme/android/browser/PreloadedTabControl;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Intent;Lme/android/browser/PreloadedTabControl;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "preloaded"    # Lme/android/browser/PreloadedTabControl;
    .param p5, "searchBoxQueryToSubmit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            "Lme/android/browser/PreloadedTabControl;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 350
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object p1, p0, Lme/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    .line 353
    iput-object p2, p0, Lme/android/browser/IntentHandler$UrlData;->mHeaders:Ljava/util/Map;

    .line 354
    iput-object p4, p0, Lme/android/browser/IntentHandler$UrlData;->mPreloadedTab:Lme/android/browser/PreloadedTabControl;

    .line 355
    iput-object p5, p0, Lme/android/browser/IntentHandler$UrlData;->mSearchBoxQueryToSubmit:Ljava/lang/String;

    .line 356
    return-void
.end method


# virtual methods
.method getPreloadedTab()Lme/android/browser/PreloadedTabControl;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lme/android/browser/IntentHandler$UrlData;->mPreloadedTab:Lme/android/browser/PreloadedTabControl;

    return-object v0
.end method

.method getSearchBoxQueryToSubmit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lme/android/browser/IntentHandler$UrlData;->mSearchBoxQueryToSubmit:Ljava/lang/String;

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lme/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isPreloaded()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lme/android/browser/IntentHandler$UrlData;->mPreloadedTab:Lme/android/browser/PreloadedTabControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
