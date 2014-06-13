.class Lcom/android/browser/IntentHandler$UrlData;
.super Ljava/lang/Object;
.source "IntentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/IntentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UrlData"
.end annotation


# instance fields
.field final mDisableUrlOverride:Z

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

.field final mPreloadedTab:Lcom/android/browser/PreloadedTabControl;

.field final mSearchBoxQueryToSubmit:Ljava/lang/String;

.field final mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object p1, p0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    .line 342
    iput-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mHeaders:Ljava/util/Map;

    .line 343
    iput-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mPreloadedTab:Lcom/android/browser/PreloadedTabControl;

    .line 344
    iput-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mSearchBoxQueryToSubmit:Ljava/lang/String;

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mDisableUrlOverride:Z

    .line 346
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Intent;Lcom/android/browser/PreloadedTabControl;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "preloaded"    # Lcom/android/browser/PreloadedTabControl;
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
            "Lcom/android/browser/PreloadedTabControl;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    .line 355
    iput-object p2, p0, Lcom/android/browser/IntentHandler$UrlData;->mHeaders:Ljava/util/Map;

    .line 356
    iput-object p4, p0, Lcom/android/browser/IntentHandler$UrlData;->mPreloadedTab:Lcom/android/browser/PreloadedTabControl;

    .line 357
    iput-object p5, p0, Lcom/android/browser/IntentHandler$UrlData;->mSearchBoxQueryToSubmit:Ljava/lang/String;

    .line 358
    if-eqz p3, :cond_0

    .line 359
    const-string v0, "disable_url_override"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mDisableUrlOverride:Z

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iput-boolean v1, p0, Lcom/android/browser/IntentHandler$UrlData;->mDisableUrlOverride:Z

    goto :goto_0
.end method


# virtual methods
.method getPreloadedTab()Lcom/android/browser/PreloadedTabControl;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mPreloadedTab:Lcom/android/browser/PreloadedTabControl;

    return-object v0
.end method

.method getSearchBoxQueryToSubmit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mSearchBoxQueryToSubmit:Ljava/lang/String;

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPreloaded()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mPreloadedTab:Lcom/android/browser/PreloadedTabControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
