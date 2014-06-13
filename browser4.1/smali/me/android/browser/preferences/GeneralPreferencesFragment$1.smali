.class Lme/android/browser/preferences/GeneralPreferencesFragment$1;
.super Ljava/lang/Object;
.source "GeneralPreferencesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/preferences/GeneralPreferencesFragment;->promptForHomepage(Landroid/preference/ListPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/preferences/GeneralPreferencesFragment;

.field private final synthetic val$editText:Landroid/widget/EditText;

.field private final synthetic val$pref:Landroid/preference/ListPreference;

.field private final synthetic val$settings:Lme/android/browser/BrowserSettings;


# direct methods
.method constructor <init>(Lme/android/browser/preferences/GeneralPreferencesFragment;Landroid/widget/EditText;Lme/android/browser/BrowserSettings;Landroid/preference/ListPreference;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/preferences/GeneralPreferencesFragment$1;->this$0:Lme/android/browser/preferences/GeneralPreferencesFragment;

    iput-object p2, p0, Lme/android/browser/preferences/GeneralPreferencesFragment$1;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lme/android/browser/preferences/GeneralPreferencesFragment$1;->val$settings:Lme/android/browser/BrowserSettings;

    iput-object p4, p0, Lme/android/browser/preferences/GeneralPreferencesFragment$1;->val$pref:Landroid/preference/ListPreference;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 131
    iget-object v1, p0, Lme/android/browser/preferences/GeneralPreferencesFragment$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "homepage":Ljava/lang/String;
    invoke-static {v0}, Lme/android/browser/UrlUtils;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lme/android/browser/preferences/GeneralPreferencesFragment$1;->val$settings:Lme/android/browser/BrowserSettings;

    invoke-virtual {v1, v0}, Lme/android/browser/BrowserSettings;->setHomePage(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lme/android/browser/preferences/GeneralPreferencesFragment$1;->val$pref:Landroid/preference/ListPreference;

    iget-object v2, p0, Lme/android/browser/preferences/GeneralPreferencesFragment$1;->this$0:Lme/android/browser/preferences/GeneralPreferencesFragment;

    invoke-virtual {v2}, Lme/android/browser/preferences/GeneralPreferencesFragment;->getHomepageValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lme/android/browser/preferences/GeneralPreferencesFragment$1;->val$pref:Landroid/preference/ListPreference;

    iget-object v2, p0, Lme/android/browser/preferences/GeneralPreferencesFragment$1;->this$0:Lme/android/browser/preferences/GeneralPreferencesFragment;

    invoke-virtual {v2}, Lme/android/browser/preferences/GeneralPreferencesFragment;->getHomepageSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method
