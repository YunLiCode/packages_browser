.class Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$3;
.super Ljava/lang/Object;
.source "WebsiteSettingsFragment.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

.field private final synthetic val$usageIcon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$3;->this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    iput-object p2, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$3;->val$usageIcon:Landroid/widget/ImageView;

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Long;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Long;

    .prologue
    .line 511
    if-eqz p1, :cond_0

    .line 512
    iget-object v0, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$3;->this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    iget-object v1, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$3;->val$usageIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->setIconForUsage(Landroid/widget/ImageView;J)V

    .line 513
    iget-object v0, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$3;->val$usageIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 515
    :cond_0
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$3;->onReceiveValue(Ljava/lang/Long;)V

    return-void
.end method
