.class Lme/android/browser/preferences/WebsiteSettingsFragment$Site$1;
.super Ljava/lang/Object;
.source "WebsiteSettingsFragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/preferences/WebsiteSettingsFragment$Site;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lme/android/browser/preferences/WebsiteSettingsFragment$Site;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lme/android/browser/preferences/WebsiteSettingsFragment$Site$1;->createFromParcel(Landroid/os/Parcel;)Lme/android/browser/preferences/WebsiteSettingsFragment$Site;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lme/android/browser/preferences/WebsiteSettingsFragment$Site;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 183
    new-instance v0, Lme/android/browser/preferences/WebsiteSettingsFragment$Site;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lme/android/browser/preferences/WebsiteSettingsFragment$Site;-><init>(Landroid/os/Parcel;Lme/android/browser/preferences/WebsiteSettingsFragment$Site;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lme/android/browser/preferences/WebsiteSettingsFragment$Site$1;->newArray(I)[Lme/android/browser/preferences/WebsiteSettingsFragment$Site;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lme/android/browser/preferences/WebsiteSettingsFragment$Site;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 187
    new-array v0, p1, [Lme/android/browser/preferences/WebsiteSettingsFragment$Site;

    return-object v0
.end method
