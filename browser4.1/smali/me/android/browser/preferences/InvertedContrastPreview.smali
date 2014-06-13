.class public Lme/android/browser/preferences/InvertedContrastPreview;
.super Lme/android/browser/preferences/WebViewPreview;
.source "InvertedContrastPreview.java"


# static fields
.field static final IMG_ROOT:Ljava/lang/String; = "content://me.android.browser.home/res/raw/"

.field static final THUMBS:[Ljava/lang/String;


# instance fields
.field mHtml:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 32
    const-string v2, "thumb_google"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 33
    const-string v2, "thumb_amazon"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 34
    const-string v2, "thumb_cnn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 35
    const-string v2, "thumb_espn"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 36
    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 37
    const-string v2, "thumb_bbc"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 38
    const-string v2, "thumb_nytimes"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 39
    const-string v2, "thumb_weatherchannel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 40
    const-string v2, "thumb_picasa"

    aput-object v2, v0, v1

    .line 31
    sput-object v0, Lme/android/browser/preferences/InvertedContrastPreview;->THUMBS:[Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lme/android/browser/preferences/WebViewPreview;-><init>(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lme/android/browser/preferences/WebViewPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lme/android/browser/preferences/WebViewPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lme/android/browser/preferences/WebViewPreview;->init(Landroid/content/Context;)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<html><body style=\"width: 1000px\">"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "builder":Ljava/lang/StringBuilder;
    sget-object v3, Lme/android/browser/preferences/InvertedContrastPreview;->THUMBS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 72
    const-string v2, "</body></html>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/preferences/InvertedContrastPreview;->mHtml:Ljava/lang/String;

    .line 74
    return-void

    .line 62
    :cond_0
    aget-object v1, v3, v2

    .line 63
    .local v1, "thumb":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    const-string v5, "<br />"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_1
    const-string v5, "<img src=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v5, "content://me.android.browser.home/res/raw/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v5, "\" />&nbsp;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method protected updatePreview(Z)V
    .locals 6
    .param p1, "forceReload"    # Z

    .prologue
    .line 78
    iget-object v2, p0, Lme/android/browser/preferences/InvertedContrastPreview;->mWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v2, p0, Lme/android/browser/preferences/InvertedContrastPreview;->mWebView:Landroid/webkit/WebView;

    invoke-static {v2}, Landroid/webkit/WebViewClassic;->fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    .line 81
    .local v1, "ws":Landroid/webkit/WebSettingsClassic;
    invoke-static {}, Lme/android/browser/BrowserSettings;->getInstance()Lme/android/browser/BrowserSettings;

    move-result-object v0

    .line 82
    .local v0, "bs":Lme/android/browser/BrowserSettings;
    const-string v3, "inverted"

    .line 83
    invoke-virtual {v0}, Lme/android/browser/BrowserSettings;->useInvertedRendering()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "true"

    .line 82
    :goto_1
    invoke-virtual {v1, v3, v2}, Landroid/webkit/WebSettingsClassic;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "inverted_contrast"

    .line 85
    invoke-virtual {v0}, Lme/android/browser/BrowserSettings;->getInvertedContrast()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebSettingsClassic;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget-object v2, p0, Lme/android/browser/preferences/InvertedContrastPreview;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lme/android/browser/preferences/InvertedContrastPreview;->mHtml:Ljava/lang/String;

    const-string v4, "text/html"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_2
    const-string v2, "false"

    goto :goto_1
.end method
