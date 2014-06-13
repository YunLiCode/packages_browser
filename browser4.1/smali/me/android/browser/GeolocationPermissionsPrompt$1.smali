.class Lme/android/browser/GeolocationPermissionsPrompt$1;
.super Ljava/lang/Object;
.source "GeolocationPermissionsPrompt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/GeolocationPermissionsPrompt;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/GeolocationPermissionsPrompt;


# direct methods
.method constructor <init>(Lme/android/browser/GeolocationPermissionsPrompt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/GeolocationPermissionsPrompt$1;->this$0:Lme/android/browser/GeolocationPermissionsPrompt;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lme/android/browser/GeolocationPermissionsPrompt$1;->this$0:Lme/android/browser/GeolocationPermissionsPrompt;

    const/4 v1, 0x1

    # invokes: Lme/android/browser/GeolocationPermissionsPrompt;->handleButtonClick(Z)V
    invoke-static {v0, v1}, Lme/android/browser/GeolocationPermissionsPrompt;->access$0(Lme/android/browser/GeolocationPermissionsPrompt;Z)V

    .line 62
    return-void
.end method
