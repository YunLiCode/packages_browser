.class Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$6;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

.field private final synthetic val$featureIcon:Landroid/widget/ImageView;

.field private final synthetic val$subtitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$6;->this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    iput-object p2, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$6;->val$subtitle:Landroid/widget/TextView;

    iput-object p3, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$6;->val$featureIcon:Landroid/widget/ImageView;

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "allowed"    # Ljava/lang/Boolean;

    .prologue
    .line 557
    if-eqz p1, :cond_0

    .line 558
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$6;->val$subtitle:Landroid/widget/TextView;

    const v1, 0x7f08012e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 560
    iget-object v0, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$6;->val$featureIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$6;->this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    # getter for: Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mLocationAllowedIcon:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->access$1(Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 565
    :goto_0
    iget-object v0, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$6;->val$subtitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    :cond_0
    return-void

    .line 562
    :cond_1
    iget-object v0, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$6;->val$subtitle:Landroid/widget/TextView;

    const v1, 0x7f08012f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 563
    iget-object v0, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$6;->val$featureIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$6;->this$1:Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    # getter for: Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mLocationDisallowedIcon:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->access$2(Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lme/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$6;->onReceiveValue(Ljava/lang/Boolean;)V

    return-void
.end method