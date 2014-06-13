.class Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$5;
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

.field private final synthetic val$featureIcon:Landroid/widget/ImageView;

.field private final synthetic val$subtitle:Landroid/widget/TextView;

.field private final synthetic val$title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$5;->this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    iput-object p2, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$5;->val$title:Landroid/widget/TextView;

    iput-object p3, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$5;->val$subtitle:Landroid/widget/TextView;

    iput-object p4, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$5;->val$featureIcon:Landroid/widget/ImageView;

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Long;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/Long;

    .prologue
    .line 543
    if-eqz p1, :cond_0

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$5;->this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->sizeValueToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lme/android/browser/preferences/WebsiteSettingsFragment;->sMBStored:Ljava/lang/String;
    invoke-static {}, Lme/android/browser/preferences/WebsiteSettingsFragment;->access$2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "usage":Ljava/lang/String;
    iget-object v1, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$5;->val$title:Landroid/widget/TextView;

    const v2, 0x7f080121

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 546
    iget-object v1, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$5;->val$subtitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v1, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$5;->val$subtitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    iget-object v1, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$5;->this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    iget-object v2, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$5;->val$featureIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->setIconForUsage(Landroid/widget/ImageView;J)V

    .line 550
    .end local v0    # "usage":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$5;->onReceiveValue(Ljava/lang/Long;)V

    return-void
.end method
