.class Lme/android/browser/PageDialogsHandler$2;
.super Ljava/lang/Object;
.source "PageDialogsHandler.java"

# interfaces
.implements Lme/android/browser/HttpAuthenticationDialog$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/PageDialogsHandler;->showHttpAuthentication(Lme/android/browser/Tab;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/PageDialogsHandler;

.field private final synthetic val$handler:Landroid/webkit/HttpAuthHandler;

.field private final synthetic val$tab:Lme/android/browser/Tab;


# direct methods
.method constructor <init>(Lme/android/browser/PageDialogsHandler;Landroid/webkit/HttpAuthHandler;Lme/android/browser/Tab;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/PageDialogsHandler$2;->this$0:Lme/android/browser/PageDialogsHandler;

    iput-object p2, p0, Lme/android/browser/PageDialogsHandler$2;->val$handler:Landroid/webkit/HttpAuthHandler;

    iput-object p3, p0, Lme/android/browser/PageDialogsHandler$2;->val$tab:Lme/android/browser/Tab;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lme/android/browser/PageDialogsHandler$2;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 102
    iget-object v0, p0, Lme/android/browser/PageDialogsHandler$2;->this$0:Lme/android/browser/PageDialogsHandler;

    # getter for: Lme/android/browser/PageDialogsHandler;->mController:Lme/android/browser/Controller;
    invoke-static {v0}, Lme/android/browser/PageDialogsHandler;->access$1(Lme/android/browser/PageDialogsHandler;)Lme/android/browser/Controller;

    move-result-object v0

    iget-object v1, p0, Lme/android/browser/PageDialogsHandler$2;->val$tab:Lme/android/browser/Tab;

    invoke-virtual {v0, v1}, Lme/android/browser/Controller;->onUpdatedSecurityState(Lme/android/browser/Tab;)V

    .line 103
    iget-object v0, p0, Lme/android/browser/PageDialogsHandler$2;->this$0:Lme/android/browser/PageDialogsHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/android/browser/PageDialogsHandler;->access$0(Lme/android/browser/PageDialogsHandler;Lme/android/browser/HttpAuthenticationDialog;)V

    .line 104
    return-void
.end method
