.class Lme/android/browser/BrowserYesNoPreference;
.super Lcom/android/internal/preference/YesNoPreference;
.source "BrowserYesNoPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/internal/preference/YesNoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/internal/preference/YesNoPreference;->onDialogClosed(Z)V

    .line 35
    if-eqz p1, :cond_0

    .line 36
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lme/android/browser/BrowserYesNoPreference;->setEnabled(Z)V

    .line 38
    invoke-static {}, Lme/android/browser/BrowserSettings;->getInstance()Lme/android/browser/BrowserSettings;

    move-result-object v0

    .line 39
    .local v0, "settings":Lme/android/browser/BrowserSettings;
    const-string v1, "privacy_clear_cache"

    invoke-virtual {p0}, Lme/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {v0}, Lme/android/browser/BrowserSettings;->clearCache()V

    .line 41
    invoke-virtual {v0}, Lme/android/browser/BrowserSettings;->clearDatabases()V

    .line 59
    .end local v0    # "settings":Lme/android/browser/BrowserSettings;
    :cond_0
    :goto_0
    return-void

    .line 42
    .restart local v0    # "settings":Lme/android/browser/BrowserSettings;
    :cond_1
    const-string v1, "privacy_clear_cookies"

    invoke-virtual {p0}, Lme/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    invoke-virtual {v0}, Lme/android/browser/BrowserSettings;->clearCookies()V

    goto :goto_0

    .line 44
    :cond_2
    const-string v1, "privacy_clear_history"

    invoke-virtual {p0}, Lme/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    invoke-virtual {v0}, Lme/android/browser/BrowserSettings;->clearHistory()V

    goto :goto_0

    .line 46
    :cond_3
    const-string v1, "privacy_clear_form_data"

    invoke-virtual {p0}, Lme/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 47
    invoke-virtual {v0}, Lme/android/browser/BrowserSettings;->clearFormData()V

    goto :goto_0

    .line 48
    :cond_4
    const-string v1, "privacy_clear_passwords"

    invoke-virtual {p0}, Lme/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 49
    invoke-virtual {v0}, Lme/android/browser/BrowserSettings;->clearPasswords()V

    goto :goto_0

    .line 50
    :cond_5
    const-string v1, "reset_default_preferences"

    .line 51
    invoke-virtual {p0}, Lme/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 52
    invoke-virtual {v0}, Lme/android/browser/BrowserSettings;->resetDefaultPreferences()V

    .line 53
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lme/android/browser/BrowserYesNoPreference;->setEnabled(Z)V

    goto :goto_0

    .line 54
    :cond_6
    const-string v1, "privacy_clear_geolocation_access"

    .line 55
    invoke-virtual {p0}, Lme/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v0}, Lme/android/browser/BrowserSettings;->clearLocationAccess()V

    goto :goto_0
.end method
