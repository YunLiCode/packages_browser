.class Lme/android/browser/search/SearchEnginePreference;
.super Landroid/preference/ListPreference;
.source "SearchEnginePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchEnginePreference"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v3, "entryValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-static {p1}, Lme/android/browser/search/SearchEngines;->getDefaultSearchEngine(Landroid/content/Context;)Lme/android/browser/search/SearchEngine;

    move-result-object v0

    .line 43
    .local v0, "defaultSearchEngine":Lme/android/browser/search/SearchEngine;
    const/4 v1, 0x0

    .line 44
    .local v1, "defaultSearchEngineName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0}, Lme/android/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-interface {v0}, Lme/android/browser/search/SearchEngine;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    invoke-static {p1}, Lme/android/browser/search/SearchEngines;->getSearchEngineInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 58
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lme/android/browser/search/SearchEnginePreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lme/android/browser/search/SearchEnginePreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 60
    return-void

    .line 49
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lme/android/browser/search/SearchEngineInfo;

    .line 50
    .local v5, "searchEngineInfo":Lme/android/browser/search/SearchEngineInfo;
    invoke-virtual {v5}, Lme/android/browser/search/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 53
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v5}, Lme/android/browser/search/SearchEngineInfo;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
