.class Lme/android/browser/HttpAuthenticationDialog$2;
.super Ljava/lang/Object;
.source "HttpAuthenticationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lme/android/browser/HttpAuthenticationDialog$2;->this$0:Lme/android/browser/HttpAuthenticationDialog;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lme/android/browser/HttpAuthenticationDialog$2;->this$0:Lme/android/browser/HttpAuthenticationDialog;

    # getter for: Lme/android/browser/HttpAuthenticationDialog;->mOkListener:Lme/android/browser/HttpAuthenticationDialog$OkListener;
    invoke-static {v0}, Lme/android/browser/HttpAuthenticationDialog;->access$1(Lme/android/browser/HttpAuthenticationDialog;)Lme/android/browser/HttpAuthenticationDialog$OkListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lme/android/browser/HttpAuthenticationDialog$2;->this$0:Lme/android/browser/HttpAuthenticationDialog;

    # getter for: Lme/android/browser/HttpAuthenticationDialog;->mOkListener:Lme/android/browser/HttpAuthenticationDialog$OkListener;
    invoke-static {v0}, Lme/android/browser/HttpAuthenticationDialog;->access$1(Lme/android/browser/HttpAuthenticationDialog;)Lme/android/browser/HttpAuthenticationDialog$OkListener;

    move-result-object v0

    iget-object v1, p0, Lme/android/browser/HttpAuthenticationDialog$2;->this$0:Lme/android/browser/HttpAuthenticationDialog;

    # getter for: Lme/android/browser/HttpAuthenticationDialog;->mHost:Ljava/lang/String;
    invoke-static {v1}, Lme/android/browser/HttpAuthenticationDialog;->access$2(Lme/android/browser/HttpAuthenticationDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lme/android/browser/HttpAuthenticationDialog$2;->this$0:Lme/android/browser/HttpAuthenticationDialog;

    # getter for: Lme/android/browser/HttpAuthenticationDialog;->mRealm:Ljava/lang/String;
    invoke-static {v2}, Lme/android/browser/HttpAuthenticationDialog;->access$3(Lme/android/browser/HttpAuthenticationDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lme/android/browser/HttpAuthenticationDialog$2;->this$0:Lme/android/browser/HttpAuthenticationDialog;

    # invokes: Lme/android/browser/HttpAuthenticationDialog;->getUsername()Ljava/lang/String;
    invoke-static {v3}, Lme/android/browser/HttpAuthenticationDialog;->access$4(Lme/android/browser/HttpAuthenticationDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lme/android/browser/HttpAuthenticationDialog$2;->this$0:Lme/android/browser/HttpAuthenticationDialog;

    # invokes: Lme/android/browser/HttpAuthenticationDialog;->getPassword()Ljava/lang/String;
    invoke-static {v4}, Lme/android/browser/HttpAuthenticationDialog;->access$5(Lme/android/browser/HttpAuthenticationDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lme/android/browser/HttpAuthenticationDialog$OkListener;->onOk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void
.end method
