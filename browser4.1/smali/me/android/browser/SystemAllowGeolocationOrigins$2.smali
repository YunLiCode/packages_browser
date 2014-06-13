.class Lme/android/browser/SystemAllowGeolocationOrigins$2;
.super Ljava/lang/Object;
.source "SystemAllowGeolocationOrigins.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/SystemAllowGeolocationOrigins;->removeOrigins(Ljava/util/Set;)V
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
.field final synthetic this$0:Lme/android/browser/SystemAllowGeolocationOrigins;

.field private final synthetic val$origin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lme/android/browser/SystemAllowGeolocationOrigins;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/SystemAllowGeolocationOrigins$2;->this$0:Lme/android/browser/SystemAllowGeolocationOrigins;

    iput-object p2, p0, Lme/android/browser/SystemAllowGeolocationOrigins$2;->val$origin:Ljava/lang/String;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 180
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    iget-object v1, p0, Lme/android/browser/SystemAllowGeolocationOrigins$2;->val$origin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/GeolocationPermissions;->clear(Ljava/lang/String;)V

    .line 183
    :cond_0
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lme/android/browser/SystemAllowGeolocationOrigins$2;->onReceiveValue(Ljava/lang/Boolean;)V

    return-void
.end method
