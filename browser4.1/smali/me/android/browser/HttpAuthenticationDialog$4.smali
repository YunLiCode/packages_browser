.class Lme/android/browser/HttpAuthenticationDialog$4;
.super Ljava/lang/Object;
.source "HttpAuthenticationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/HttpAuthenticationDialog;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/HttpAuthenticationDialog;


# direct methods
.method constructor <init>(Lme/android/browser/HttpAuthenticationDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/HttpAuthenticationDialog$4;->this$0:Lme/android/browser/HttpAuthenticationDialog;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 145
    iget-object v0, p0, Lme/android/browser/HttpAuthenticationDialog$4;->this$0:Lme/android/browser/HttpAuthenticationDialog;

    # getter for: Lme/android/browser/HttpAuthenticationDialog;->mCancelListener:Lme/android/browser/HttpAuthenticationDialog$CancelListener;
    invoke-static {v0}, Lme/android/browser/HttpAuthenticationDialog;->access$6(Lme/android/browser/HttpAuthenticationDialog;)Lme/android/browser/HttpAuthenticationDialog$CancelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/android/browser/HttpAuthenticationDialog$4;->this$0:Lme/android/browser/HttpAuthenticationDialog;

    # getter for: Lme/android/browser/HttpAuthenticationDialog;->mCancelListener:Lme/android/browser/HttpAuthenticationDialog$CancelListener;
    invoke-static {v0}, Lme/android/browser/HttpAuthenticationDialog;->access$6(Lme/android/browser/HttpAuthenticationDialog;)Lme/android/browser/HttpAuthenticationDialog$CancelListener;

    move-result-object v0

    invoke-interface {v0}, Lme/android/browser/HttpAuthenticationDialog$CancelListener;->onCancel()V

    .line 146
    :cond_0
    return-void
.end method
