.class Lme/android/browser/preferences/AdvancedPreferencesFragment$1;
.super Ljava/lang/Object;
.source "AdvancedPreferencesFragment.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/preferences/AdvancedPreferencesFragment;->onResume()V
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
.field final synthetic this$0:Lme/android/browser/preferences/AdvancedPreferencesFragment;

.field private final synthetic val$websiteSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method constructor <init>(Lme/android/browser/preferences/AdvancedPreferencesFragment;Landroid/preference/PreferenceScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/preferences/AdvancedPreferencesFragment$1;->this$0:Lme/android/browser/preferences/AdvancedPreferencesFragment;

    iput-object p2, p0, Lme/android/browser/preferences/AdvancedPreferencesFragment$1;->val$websiteSettings:Landroid/preference/PreferenceScreen;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lme/android/browser/preferences/AdvancedPreferencesFragment$1;->onReceiveValue(Ljava/util/Map;)V

    return-void
.end method

.method public onReceiveValue(Ljava/util/Map;)V
    .locals 2
    .param p1, "webStorageOrigins"    # Ljava/util/Map;

    .prologue
    .line 91
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lme/android/browser/preferences/AdvancedPreferencesFragment$1;->val$websiteSettings:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 94
    :cond_0
    return-void
.end method
