.class public abstract Lme/android/browser/preferences/WebViewPreview;
.super Landroid/preference/Preference;
.source "WebViewPreview.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field protected mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0, p1}, Lme/android/browser/preferences/WebViewPreview;->init(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-virtual {p0, p1}, Lme/android/browser/preferences/WebViewPreview;->init(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-virtual {p0, p1}, Lme/android/browser/preferences/WebViewPreview;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const v0, 0x7f040038

    invoke-virtual {p0, v0}, Lme/android/browser/preferences/WebViewPreview;->setLayoutResource(I)V

    .line 54
    return-void
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 1
    .param p1, "preferenceManager"    # Landroid/preference/PreferenceManager;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 86
    invoke-virtual {p0}, Lme/android/browser/preferences/WebViewPreview;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 87
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 79
    const v0, 0x7f0d0095

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lme/android/browser/preferences/WebViewPreview;->mWebView:Landroid/webkit/WebView;

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lme/android/browser/preferences/WebViewPreview;->updatePreview(Z)V

    .line 81
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "root":Landroid/view/View;
    const v2, 0x7f0d0095

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 66
    .local v1, "webView":Landroid/webkit/WebView;
    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 67
    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 68
    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setClickable(Z)V

    .line 69
    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 70
    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 71
    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 72
    invoke-virtual {p0, v1}, Lme/android/browser/preferences/WebViewPreview;->setupWebView(Landroid/webkit/WebView;)V

    .line 73
    return-object v0
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lme/android/browser/preferences/WebViewPreview;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 92
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 93
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lme/android/browser/preferences/WebViewPreview;->updatePreview(Z)V

    .line 99
    return-void
.end method

.method protected setupWebView(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 58
    return-void
.end method

.method protected abstract updatePreview(Z)V
.end method
