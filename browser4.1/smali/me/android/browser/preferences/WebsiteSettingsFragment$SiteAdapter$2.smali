.class Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$2;
.super Ljava/lang/Object;
.source "WebsiteSettingsFragment.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->askForGeolocation(Ljava/util/Map;)V
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
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

.field private final synthetic val$sites:Ljava/util/Map;


# direct methods
.method constructor <init>(Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$2;->this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    iput-object p2, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$2;->val$sites:Ljava/util/Map;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$2;->onReceiveValue(Ljava/util/Set;)V

    return-void
.end method

.method public onReceiveValue(Ljava/util/Set;)V
    .locals 5
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
    .line 273
    .local p1, "origins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 274
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 275
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$2;->this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    iget-object v2, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$2;->val$sites:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->populateIcons(Ljava/util/Map;)V

    .line 280
    iget-object v1, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$2;->this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    iget-object v2, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$2;->val$sites:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->populateOrigins(Ljava/util/Map;)V

    .line 281
    return-void

    .line 276
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    iget-object v2, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$2;->this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    iget-object v3, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$2;->val$sites:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x1

    # invokes: Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->addFeatureToSite(Ljava/util/Map;Ljava/lang/String;I)V
    invoke-static {v2, v3, v1, v4}, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->access$0(Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Ljava/util/Map;Ljava/lang/String;I)V

    goto :goto_0
.end method
