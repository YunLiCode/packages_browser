.class public Lme/android/browser/PreloadedTabControl;
.super Ljava/lang/Object;
.source "PreloadedTabControl.java"


# static fields
.field private static final LOGD_ENABLED:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "PreloadedTabControl"


# instance fields
.field private mDestroyed:Z

.field private mLastQuery:Ljava/lang/String;

.field final mTab:Lme/android/browser/Tab;


# direct methods
.method public constructor <init>(Lme/android/browser/Tab;)V
    .locals 0
    .param p1, "t"    # Lme/android/browser/Tab;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lme/android/browser/PreloadedTabControl;->mTab:Lme/android/browser/Tab;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lme/android/browser/PreloadedTabControl;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lme/android/browser/PreloadedTabControl;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$1(Lme/android/browser/PreloadedTabControl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lme/android/browser/PreloadedTabControl;->mLastQuery:Ljava/lang/String;

    return-void
.end method

.method private maybeSetQuery(Ljava/lang/String;Landroid/webkit/SearchBox;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "sb"    # Landroid/webkit/SearchBox;

    .prologue
    .line 43
    iget-object v0, p0, Lme/android/browser/PreloadedTabControl;->mLastQuery:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    if-eqz p2, :cond_0

    .line 46
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/webkit/SearchBox;->setVerbatim(Z)V

    .line 47
    invoke-interface {p2, p1}, Landroid/webkit/SearchBox;->setQuery(Ljava/lang/String;)V

    .line 48
    new-instance v0, Lme/android/browser/PreloadedTabControl$1;

    invoke-direct {v0, p0, p1}, Lme/android/browser/PreloadedTabControl$1;-><init>(Lme/android/browser/PreloadedTabControl;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Landroid/webkit/SearchBox;->onchange(Landroid/webkit/SearchBox$SearchBoxListener;)V

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/android/browser/PreloadedTabControl;->mDestroyed:Z

    .line 145
    iget-object v0, p0, Lme/android/browser/PreloadedTabControl;->mTab:Lme/android/browser/Tab;

    invoke-virtual {v0}, Lme/android/browser/Tab;->destroy()V

    .line 146
    return-void
.end method

.method public getTab()Lme/android/browser/Tab;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lme/android/browser/PreloadedTabControl;->mTab:Lme/android/browser/Tab;

    return-object v0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lme/android/browser/PreloadedTabControl;->mTab:Lme/android/browser/Tab;

    invoke-virtual {v0, p1, p2}, Lme/android/browser/Tab;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 140
    return-void
.end method

.method public loadUrlIfChanged(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lme/android/browser/PreloadedTabControl;->mTab:Lme/android/browser/Tab;

    invoke-virtual {v1}, Lme/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "currentUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 132
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    invoke-virtual {p0, p1, p2}, Lme/android/browser/PreloadedTabControl;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 135
    :cond_1
    return-void

    .line 127
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public searchBoxCancel()V
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lme/android/browser/PreloadedTabControl;->mTab:Lme/android/browser/Tab;

    invoke-virtual {v1}, Lme/android/browser/Tab;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSearchBox()Landroid/webkit/SearchBox;

    move-result-object v0

    .line 110
    .local v0, "sb":Landroid/webkit/SearchBox;
    if-eqz v0, :cond_0

    .line 111
    const/4 v1, 0x0

    iput-object v1, p0, Lme/android/browser/PreloadedTabControl;->mLastQuery:Ljava/lang/String;

    .line 112
    new-instance v1, Lme/android/browser/PreloadedTabControl$3;

    invoke-direct {v1, p0}, Lme/android/browser/PreloadedTabControl$3;-><init>(Lme/android/browser/PreloadedTabControl;)V

    invoke-interface {v0, v1}, Landroid/webkit/SearchBox;->oncancel(Landroid/webkit/SearchBox$SearchBoxListener;)V

    .line 119
    :cond_0
    return-void
.end method

.method public searchBoxSubmit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "fallbackUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 70
    .local p3, "fallbackHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lme/android/browser/PreloadedTabControl;->mTab:Lme/android/browser/Tab;

    invoke-virtual {v2}, Lme/android/browser/Tab;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getSearchBox()Landroid/webkit/SearchBox;

    move-result-object v1

    .line 71
    .local v1, "sb":Landroid/webkit/SearchBox;
    if-nez v1, :cond_0

    .line 74
    const/4 v2, 0x0

    .line 105
    :goto_0
    return v2

    .line 76
    :cond_0
    invoke-direct {p0, p1, v1}, Lme/android/browser/PreloadedTabControl;->maybeSetQuery(Ljava/lang/String;Landroid/webkit/SearchBox;)V

    .line 78
    iget-object v2, p0, Lme/android/browser/PreloadedTabControl;->mTab:Lme/android/browser/Tab;

    invoke-virtual {v2}, Lme/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "currentUrl":Ljava/lang/String;
    new-instance v2, Lme/android/browser/PreloadedTabControl$2;

    invoke-direct {v2, p0, p2, p3, v0}, Lme/android/browser/PreloadedTabControl$2;-><init>(Lme/android/browser/PreloadedTabControl;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Landroid/webkit/SearchBox;->onsubmit(Landroid/webkit/SearchBox$SearchBoxListener;)V

    .line 105
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lme/android/browser/PreloadedTabControl;->mTab:Lme/android/browser/Tab;

    invoke-virtual {v0}, Lme/android/browser/Tab;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSearchBox()Landroid/webkit/SearchBox;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lme/android/browser/PreloadedTabControl;->maybeSetQuery(Ljava/lang/String;Landroid/webkit/SearchBox;)V

    .line 66
    return-void
.end method
