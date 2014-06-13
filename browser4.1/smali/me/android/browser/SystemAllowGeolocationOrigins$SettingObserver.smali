.class Lme/android/browser/SystemAllowGeolocationOrigins$SettingObserver;
.super Landroid/database/ContentObserver;
.source "SystemAllowGeolocationOrigins.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/SystemAllowGeolocationOrigins;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/SystemAllowGeolocationOrigins;


# direct methods
.method constructor <init>(Lme/android/browser/SystemAllowGeolocationOrigins;)V
    .locals 1

    .prologue
    .line 193
    iput-object p1, p0, Lme/android/browser/SystemAllowGeolocationOrigins$SettingObserver;->this$0:Lme/android/browser/SystemAllowGeolocationOrigins;

    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 195
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 199
    iget-object v0, p0, Lme/android/browser/SystemAllowGeolocationOrigins$SettingObserver;->this$0:Lme/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual {v0}, Lme/android/browser/SystemAllowGeolocationOrigins;->maybeApplySettingAsync()V

    .line 200
    return-void
.end method
