.class Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$1;
.super Ljava/lang/Object;
.source "WebsiteSettingsFragment.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->askForOrigins()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/util/Map;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;


# direct methods
.method constructor <init>(Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$1;->this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$1;->onReceiveValue(Ljava/util/Map;)V

    return-void
.end method

.method public onReceiveValue(Ljava/util/Map;)V
    .locals 5
    .param p1, "origins"    # Ljava/util/Map;

    .prologue
    .line 258
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 259
    .local v1, "sites":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lme/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    if-eqz p1, :cond_0

    .line 260
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 261
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 265
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$1;->this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    invoke-virtual {v2, v1}, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->askForGeolocation(Ljava/util/Map;)V

    .line 266
    return-void

    .line 262
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$1;->this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    # invokes: Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->addFeatureToSite(Ljava/util/Map;Ljava/lang/String;I)V
    invoke-static {v3, v1, v2, v4}, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->access$0(Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Ljava/util/Map;Ljava/lang/String;I)V

    goto :goto_0
.end method
