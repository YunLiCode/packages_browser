.class Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$7;
.super Ljava/lang/Object;
.source "WebsiteSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;


# direct methods
.method constructor <init>(Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$7;->this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dlg"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 588
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    iget-object v1, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$7;->this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    # getter for: Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lme/android/browser/preferences/WebsiteSettingsFragment$Site;
    invoke-static {v1}, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->access$3(Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)Lme/android/browser/preferences/WebsiteSettingsFragment$Site;

    move-result-object v1

    invoke-virtual {v1}, Lme/android/browser/preferences/WebsiteSettingsFragment$Site;->getOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebStorage;->deleteOrigin(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$7;->this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    # getter for: Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lme/android/browser/preferences/WebsiteSettingsFragment$Site;
    invoke-static {v0}, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->access$3(Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)Lme/android/browser/preferences/WebsiteSettingsFragment$Site;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/android/browser/preferences/WebsiteSettingsFragment$Site;->removeFeature(I)V

    .line 592
    iget-object v0, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$7;->this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    # getter for: Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lme/android/browser/preferences/WebsiteSettingsFragment$Site;
    invoke-static {v0}, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->access$3(Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)Lme/android/browser/preferences/WebsiteSettingsFragment$Site;

    move-result-object v0

    invoke-virtual {v0}, Lme/android/browser/preferences/WebsiteSettingsFragment$Site;->getFeatureCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$7;->this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    # getter for: Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->this$0:Lme/android/browser/preferences/WebsiteSettingsFragment;
    invoke-static {v0}, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->access$5(Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)Lme/android/browser/preferences/WebsiteSettingsFragment;

    move-result-object v0

    # invokes: Lme/android/browser/preferences/WebsiteSettingsFragment;->finish()V
    invoke-static {v0}, Lme/android/browser/preferences/WebsiteSettingsFragment;->access$0(Lme/android/browser/preferences/WebsiteSettingsFragment;)V

    .line 595
    :cond_0
    iget-object v0, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$7;->this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    invoke-virtual {v0}, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->askForOrigins()V

    .line 596
    iget-object v0, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$7;->this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    invoke-virtual {v0}, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->notifyDataSetChanged()V

    .line 597
    return-void
.end method
