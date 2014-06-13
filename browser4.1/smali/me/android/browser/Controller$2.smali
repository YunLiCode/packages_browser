.class Lme/android/browser/Controller$2;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/Controller;->doStart(Landroid/os/Bundle;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/Controller;

.field private final synthetic val$currentTabId:J

.field private final synthetic val$icicle:Landroid/os/Bundle;

.field private final synthetic val$intent:Landroid/content/Intent;

.field private final synthetic val$restoreIncognitoTabs:Z


# direct methods
.method constructor <init>(Lme/android/browser/Controller;Landroid/os/Bundle;Landroid/content/Intent;JZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/Controller$2;->this$0:Lme/android/browser/Controller;

    iput-object p2, p0, Lme/android/browser/Controller$2;->val$icicle:Landroid/os/Bundle;

    iput-object p3, p0, Lme/android/browser/Controller$2;->val$intent:Landroid/content/Intent;

    iput-wide p4, p0, Lme/android/browser/Controller$2;->val$currentTabId:J

    iput-boolean p6, p0, Lme/android/browser/Controller$2;->val$restoreIncognitoTabs:Z

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 294
    iget-object v0, p0, Lme/android/browser/Controller$2;->this$0:Lme/android/browser/Controller;

    iget-object v1, p0, Lme/android/browser/Controller$2;->val$icicle:Landroid/os/Bundle;

    iget-object v2, p0, Lme/android/browser/Controller$2;->val$intent:Landroid/content/Intent;

    iget-wide v3, p0, Lme/android/browser/Controller$2;->val$currentTabId:J

    .line 295
    iget-boolean v5, p0, Lme/android/browser/Controller$2;->val$restoreIncognitoTabs:Z

    .line 294
    # invokes: Lme/android/browser/Controller;->onPreloginFinished(Landroid/os/Bundle;Landroid/content/Intent;JZ)V
    invoke-static/range {v0 .. v5}, Lme/android/browser/Controller;->access$4(Lme/android/browser/Controller;Landroid/os/Bundle;Landroid/content/Intent;JZ)V

    .line 296
    return-void
.end method
