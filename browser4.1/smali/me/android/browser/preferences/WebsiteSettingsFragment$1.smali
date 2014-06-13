.class Lme/android/browser/preferences/WebsiteSettingsFragment$1;
.super Ljava/lang/Object;
.source "WebsiteSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/preferences/WebsiteSettingsFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/preferences/WebsiteSettingsFragment;


# direct methods
.method constructor <init>(Lme/android/browser/preferences/WebsiteSettingsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$1;->this$0:Lme/android/browser/preferences/WebsiteSettingsFragment;

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dlg"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 691
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 692
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    .line 693
    invoke-static {}, Lme/android/browser/WebStorageSizeManager;->resetLastOutOfSpaceNotificationTime()V

    .line 694
    iget-object v0, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$1;->this$0:Lme/android/browser/preferences/WebsiteSettingsFragment;

    # getter for: Lme/android/browser/preferences/WebsiteSettingsFragment;->mAdapter:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;
    invoke-static {v0}, Lme/android/browser/preferences/WebsiteSettingsFragment;->access$3(Lme/android/browser/preferences/WebsiteSettingsFragment;)Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->askForOrigins()V

    .line 695
    iget-object v0, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$1;->this$0:Lme/android/browser/preferences/WebsiteSettingsFragment;

    # invokes: Lme/android/browser/preferences/WebsiteSettingsFragment;->finish()V
    invoke-static {v0}, Lme/android/browser/preferences/WebsiteSettingsFragment;->access$0(Lme/android/browser/preferences/WebsiteSettingsFragment;)V

    .line 696
    return-void
.end method
